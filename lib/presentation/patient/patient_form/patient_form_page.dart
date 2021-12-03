import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';
import 'package:teleceta_patients/presentation/custom_widgets/custom_appbar.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/misc/patient_form_provider.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/widgets/patient_blood_group_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/widgets/patient_dob_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/widgets/patient_email_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/widgets/patient_gender_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/widgets/patient_height_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/widgets/patient_location_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/widgets/patient_name_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/widgets/patient_phone_number_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/widgets/patient_weight_field_widget.dart';

import '../../../injection.dart';

class PatientFormPage extends StatelessWidget {
  const PatientFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PatientFormBloc>(),
      child: BlocConsumer<PatientFormBloc, PatientFormState>(
        listenWhen: (p, c) => p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption!.fold(
            () {}, 
            (either) => either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    unexpected: (_) => "An unexpected error occured. Please try again.", 
                    insufficientPermissions: (_) => "You don't have permission to update this.", 
                    unableToUpdate: (_) => "Unable to process updation. Please try again."
                  )
                );
              }, 
              (_) {}
            )
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return const PatientFormScaffold();
        },
      ),
    );
  }
}

class PatientFormScaffold extends StatelessWidget {
  const PatientFormScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontFamily: 'NunitoSemiBold', 
      color: Color.fromRGBO(3, 4, 94, 1), 
      fontSize: 20,
    );

    const buttonTextStyle = TextStyle(
      fontFamily: 'NunitoSemiBold', 
      color: Colors.white,
    );

    return  Scaffold(
      appBar: CustomAppBar('TeleCeta'),
      body: BlocBuilder<PatientFormBloc, PatientFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => PatientFormProvider(),
            child: Form(
              autovalidateMode: AutovalidateMode.disabled,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
                        child: Text( 
                          "Let's start by adding a few details about yourself!",
                          style: textStyle, 
                          textAlign: TextAlign.center,
                        ),
                      ), 
                      const PatientNameFieldWidget(),
                      const PatientEmailFieldWidget(),
                      const PatientPhoneNumberFieldWidget(),
                      const PatientGenderFieldWidget(),
                      const PatientDobFieldWidget(),
                      const PatientBloodGroupFieldWidget(),
                      Row(
                        children: const [
                          PatientHeightFieldWidget(),
                          PatientWeightFieldWidget(),
                        ],
                      ),
                      const PatientLocationFieldWidget(),
                      ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(0, 119, 182, 1),
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                elevation: 5, 
                alignment: Alignment.center
              ),
              onPressed: () {
                context.read<PatientFormBloc>().add(const PatientFormEvent.saved());
              }, 
              child: const Text(
                'Save',
                style: buttonTextStyle
                 ),
               ),
               const SizedBox(
                 height: 100
               )
                    ]
                  ),
                ),
              )
            ),
          );
        },
      )
    );
  }
}