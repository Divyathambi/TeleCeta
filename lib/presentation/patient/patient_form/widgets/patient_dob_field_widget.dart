import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';
import 'package:intl/intl.dart';

class PatientDobFieldWidget extends StatefulWidget {
  const PatientDobFieldWidget({Key? key}) : super(key: key);

  @override
  State<PatientDobFieldWidget> createState() => _PatientDobFieldWidgetState();
}

class _PatientDobFieldWidgetState extends State<PatientDobFieldWidget> {
  DateTime? dateTime;
  TextEditingController selectDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<PatientFormBloc, PatientFormState>(
      listener: (context, state) {
        dateTime = state.patient!.dateOfBirth!;
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextFormField(
          controller: selectDateController,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: const Icon(
                MdiIcons.calendar,
                color: Color.fromRGBO(3, 4, 94, 1),
              ),
              onPressed: () {
                _selectDate(context);
                context
                    .read<PatientFormBloc>()
                    .add(PatientFormEvent.dateOfBirthChanged(dateTime!));
              },
            ),
            labelText: "Date of Birth",
          ),
        ),
      ),
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? selectedDate = await showRoundedDatePicker(
      firstDate: DateTime(1900),
      lastDate: DateTime(2300),
      initialDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.year,
      fontFamily: "NunitoSemiBold",
      description: "Please select your date of birth",
      background: const Color.fromRGBO(3, 4, 94, 1),
      context: context,
    );

    if (selectedDate != null) {
      dateTime = selectedDate;
      selectDateController.text = DateFormat.yMMMd().format(selectedDate);
    }
  }
}
