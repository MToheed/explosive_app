import 'package:explosive_app/business/business.dart';
import 'package:explosive_app/business/cubits/drop_downs/service_company_cubit.dart';
import 'package:explosive_app/ui/screens/add_request/add_request_screen.dart';
import 'package:explosive_app/ui/screens/otp/otp_screen.dart';
import 'package:explosive_app/ui/screens/previous_requests/previous_requests_screen.dart';
import 'package:explosive_app/ui/screens/profile/profile_screen.dart';
import 'package:explosive_app/ui/screens/request_summary/request_summary_screen.dart';
import 'package:explosive_app/ui/screens/signIn/sign_in_screen.dart';
import 'package:explosive_app/ui/screens/splash/splash_screen.dart';
import 'package:explosive_app/ui/screens/support/support_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => RequestFromCubit("JARAKED (Jafurah)")),
          BlocProvider(create: (_) => ServiceCompanyCubit("Service Company 1")),
          BlocProvider(create: (_) => WBSCubit("WBS Value 1")),
          BlocProvider(create: (_) => GunTypeCubit("Gun Type 1")),
        ],
        child: const AddRequestScreen(),
      ),
    );
  }
}
