import 'dart:ui';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/sign_in/sign_in_form_bloc.dart';
import 'package:teleceta_patients/presentation/routes/app_router.gr.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontFamily: 'NunitoBold',
      fontSize: 30,
      color: Color.fromRGBO(3, 4, 94, 1),
    );

    const captionTextStyle = TextStyle(
      fontFamily: 'NunitoSemiBold',
      fontSize: 20,
      color: Color.fromRGBO(3, 4, 94, 1),
    );

    const buttonTextStyle = TextStyle(
      fontFamily: 'NunitoSemiBold',
      fontSize: 18,
      color: Colors.white,
    );

    const hintTextStyle =
        TextStyle(fontFamily: 'NunitoRegular', color: Colors.grey);

    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption!.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                      message: failure.map(
                          invalidEmailAndPasswordCombination: (_) =>
                              "Please make sure you've entered valid credentials.",
                          phoneNumberAlreadyExists: (_) =>
                              "This phone number already exists.",
                          emailAlreadyExists: (_) =>
                              "This email is already in use.",
                          serverError: (_) => "A Server Error occured.",
                          cancelledByUser: (_) =>
                              "Operation Cancelled.")).show(context);
                }, (_) {
                  AutoRouter.of(context)
                      .popAndPush(const PatientFormPageRoute());
                }));
      },
      builder: (context, state) {
        return Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: ListView(
              children: <Widget>[
                const SizedBox(height: 50),
                const Center(
                  child: Text(
                    'Welcome to TeleCeta',
                    style: textStyle,
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    'Sign in to access the new telemedicine experience',
                    style: captionTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color.fromRGBO(3, 4, 94, 1),
                      ),
                      labelText: "Email Address:",
                      hintText: "Enter your email address",
                      hintStyle: hintTextStyle,
                    ),
                    autocorrect: false,
                    onChanged: (value) => context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.emailChanged(value)),
                    validator: (_) => context
                        .read<SignInFormBloc>()
                        .state
                        .emailAddress!
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                invalidEmail: (_) =>
                                    "Please enter a valid email address",
                                empty: (_) => "This field cannot be empty",
                                orElse: () => null),
                            (_) => null),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color.fromRGBO(3, 4, 94, 1),
                        ),
                        labelText: "Password:",
                        hintText: "Enter your password",
                        hintStyle: hintTextStyle),
                    onChanged: (value) => context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.passwordChanged(value)),
                    validator: (_) => context
                        .read<SignInFormBloc>()
                        .state
                        .password!
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                invalidPassword: (_) =>
                                    "Password should contain atleast 8 characters",
                                empty: (_) => "This field cannot be empty",
                                orElse: () => null),
                            (r) => null),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(0, 119, 182, 1),
                        padding: const EdgeInsets.all(8.0)),
                    onPressed: () {
                      context.read<SignInFormBloc>().add(const SignInFormEvent
                          .registerWithEmailAndPasswordPressed());
                    },
                    child: const Text(
                      'Sign In',
                      style: buttonTextStyle,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(0, 119, 182, 1),
                        padding: const EdgeInsets.all(8.0)),
                    onPressed: () {
                      context
                          .read<SignInFormBloc>()
                          .add(const SignInFormEvent.signInWithGooglePressed());
                    },
                    child: const Text(
                      'Sign In with Google',
                      style: buttonTextStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const Center(
                  child: Text('Already have an account?',
                      style: TextStyle(
                          fontFamily: 'NunitoRegular',
                          color: Color.fromRGBO(3, 4, 94, 1),
                          fontSize: 16)),
                ),
                TextButton(
                  onPressed: () =>
                      AutoRouter.of(context).replace(const LoginPageRoute()),
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                        fontFamily: 'NunitoRegular',
                        color: Color.fromRGBO(3, 4, 94, 1),
                        fontSize: 16),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
