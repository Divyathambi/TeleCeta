import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';
import 'package:teleceta_patients/injection.dart';
import 'package:teleceta_patients/presentation/custom_widgets/custom_appbar.dart';
import 'package:teleceta_patients/presentation/patient/patient_lifestyle_form/widgets/patient_alcohol_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_lifestyle_form/widgets/patient_diet_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_lifestyle_form/widgets/patient_occupation_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_lifestyle_form/widgets/patient_smoke_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_lifestyle_form/widgets/patient_stress_field_widget.dart';
import 'package:teleceta_patients/presentation/patient/patient_lifestyle_form/widgets/patient_workout_field_widget.dart';

class PatientLifestyleFormPage extends StatelessWidget {
  const PatientLifestyleFormPage({Key? key}) : super(key: key);

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
                  }, (r) => null));
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return const PatientLifestyleFormScaffold();
        },
      ),
    );
  }
}

class PatientLifestyleFormScaffold extends StatelessWidget {
  const PatientLifestyleFormScaffold({Key? key}) : super(key: key);

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
        appBar: CustomAppBar("TeleCeta"),
        body: BlocBuilder<PatientFormBloc, PatientFormState>(
          buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
          builder: (context, state) {
            return Form(
                autovalidateMode: AutovalidateMode.disabled,
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
                        child: Text(
                            "Add some details about your lifestyle and we're ready!",
                            style: textStyle,
                            textAlign: TextAlign.center),
                      ),
                      const PatientOccupationFieldWidget(),
                      const PatientWorkoutFieldWidget(),
                      const PatientStressFieldWidget(),
                      const PatientDietFieldWidget(),
                      const PatientAlcoholFieldWidget(),
                      const PatientSmokeFieldWidget(),
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
                    ]),
                  ),
                ));
          },
        ));
  }
}
