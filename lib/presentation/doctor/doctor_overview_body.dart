import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/doctor/doctor_watcher/doctor_watcher_bloc.dart';
import 'package:teleceta_patients/presentation/doctor/widgets/doctor_card.dart';

class DoctorOverviewBody extends StatelessWidget {
  const DoctorOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorWatcherBloc, DoctorWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(
                    color: Color.fromRGBO(3, 4, 94, 1),
                  ),
                ),
            loadSuccess: (state) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Flexible(
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 2 / 3,
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5),
                    itemBuilder: (context, index) {
                      final doctors = state.doctor[index];
                      return DoctorCard(doctor: doctors);
                    },
                    itemCount: state.doctor.length,
                  ),
                ),
              );
            },
            loadFailure: (state) {
              return Container(height: 400, width: 400, color: Colors.red);
            });
      },
    );
  }
}
