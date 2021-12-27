import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/doctor/doctor_watcher/doctor_watcher_bloc.dart';
import 'package:teleceta_patients/injection.dart';
import 'package:teleceta_patients/presentation/custom_widgets/custom_appbar.dart';
import 'package:teleceta_patients/presentation/doctor/doctor_overview_body.dart';

class CardiologistPage extends StatelessWidget {
  const CardiologistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DoctorWatcherBloc>(
      create: (context) => getIt<DoctorWatcherBloc>()
        ..add(const DoctorWatcherEvent.watchAllCardiologistsStarted()),
      child: Scaffold(
        appBar: CustomAppBar('Cardiologists'),
        body: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Cardiologists near you',
                style: TextStyle(
                    fontFamily: 'NunitoBold',
                    color: Color.fromRGBO(3, 4, 94, 1),
                    fontSize: 20.0),
              ),
            ),
            DoctorOverviewBody(),
          ],
        ),
      ),
    );
  }
}
