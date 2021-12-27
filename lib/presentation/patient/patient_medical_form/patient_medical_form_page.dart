import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';
import 'package:teleceta_patients/injection.dart';
import 'package:teleceta_patients/presentation/custom_widgets/custom_appbar.dart';
import 'package:teleceta_patients/presentation/patient/patient_medical_form/widgets/patient_family_health_issue_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_medical_form/widgets/patients_have_allergies_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_medical_form/widgets/patients_have_chronic_illnesses_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_medical_form/widgets/patients_have_injuries_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_medical_form/widgets/patients_takes_medication_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_medical_form/widgets/patients_was_hospitalized_field_widget.dart';
import 'package:teleceta_patients/presentation/routes/app_router.gr.dart';

class PatientMedicalFormPage extends StatelessWidget {
  const PatientMedicalFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PatientFormBloc>(),
      child: BlocConsumer<PatientFormBloc, PatientFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption!.fold(
              () {},
              (either) => either.fold((failure) {
                    FlushbarHelper.createError(
                        message: failure.map(
                            unexpected: (_) =>
                                "An Unexpected error occured. Please try again",
                            insufficientPermissions: (_) =>
                                "You don't have permission to update this.",
                            unableToUpdate: (_) =>
                                "Unable to process updation. Please try again."));
                  }, (_) {
                    AutoRouter.of(context)
                        .popAndPush(const PatientLifestyleFormPageRoute());
                  }));
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return const PatientMedicalFormScaffold();
        },
      ),
    );
  }
}

class PatientMedicalFormScaffold extends StatelessWidget {
  const PatientMedicalFormScaffold({Key? key}) : super(key: key);

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

    return Scaffold(
      appBar: CustomAppBar('TeleCeta'),
      body: BlocBuilder<PatientFormBloc, PatientFormState>(
          buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
          builder: (context, state) {
            return Form(
                autovalidateMode: AutovalidateMode.disabled,
                child: SingleChildScrollView(
                    child: Center(
                  child: Column(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
                        child: Text(
                          "Perfect! Now let's add some details regarding your medical conditions.",
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const PatientsHaveAllergiesFieldWidget(),
                      const PatientTakesMedicationFieldWidget(),
                      const PatientsHaveInjuriesFieldWidget(),
                      const PatientsHaveChronicIllnessesFieldWidget(),
                      const PatientsWasHospitalizedFieldWidget(),
                      const PatientFamilyHealthIssueFieldWidget(),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromRGBO(0, 119, 182, 1),
                            padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                            elevation: 5,
                            alignment: Alignment.center),
                        onPressed: () {
                          context
                              .read<PatientFormBloc>()
                              .add(const PatientFormEvent.saved());
                        },
                        child: const Text('Save', style: buttonTextStyle),
                      ),
                      const SizedBox(height: 100)
                    ],
                  ),
                )));
          }),
    );
  }
}
