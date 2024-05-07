import 'package:explosive_app/ui/screens/add_request/add_request_screen.dart';
import 'package:explosive_app/ui/screens/otp/otp_screen.dart';
import 'package:explosive_app/ui/screens/previous_requests/previous_requests_screen.dart';
import 'package:explosive_app/ui/screens/request_summary/request_summary_screen.dart';
import 'package:explosive_app/ui/screens/signIn/sign_in_screen.dart';
import 'package:explosive_app/ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explosive App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RequestSummaryScreen(),
    );
  }
}
