import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/sign_in/sign_in_form_bloc.dart';
import 'package:teleceta_patients/injection.dart';
import 'package:teleceta_patients/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: const Scaffold(
        backgroundColor: Colors.white,
        body: SignInForm()
      ),
    );
  }
}