import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/auth/auth_bloc.dart';
import 'package:teleceta_patients/injection.dart';
import 'package:teleceta_patients/presentation/routes/app_router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter(); 

  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())
        ),
      ],
      child: MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(), 
        routerDelegate: _appRouter.delegate(), 
        debugShowCheckedModeBanner: false,
        title: 'TeleCeta for Patients',
        theme: ThemeData.light().copyWith(
          primaryColor: const Color.fromRGBO(3, 4, 94, 1), 
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: const TextStyle(
              fontFamily: "NunitoSemiBold", 
              color: Color.fromRGBO(3, 4, 94, 1)
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(0, 119, 182, 1),
              )
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
              color: Color.fromRGBO(3, 4, 94, 1)
               ),              
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), 
              borderSide: const BorderSide(
                color: Color.fromRGBO(3, 4, 94, 1)
              )
            )
          ),
        ),
        ),
    );
  }
}