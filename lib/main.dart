import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:teleceta_patients/injection.dart';
import 'package:teleceta_patients/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  configureDependencies(); 
  await Firebase.initializeApp(); 
  runApp(AppWidget());
}

