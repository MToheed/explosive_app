import 'package:explosive_app/business/business.dart';
import 'package:explosive_app/ui/screens/add_request/add_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'ui/screens/all_requests/all_requests_screen.dart';

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
          BlocProvider(create: (_) => AddRequestCubit()),
          ChangeNotifierProvider(create: (_) => AddRequestProvider()),
          ChangeNotifierProvider(create: (_) => AllRequestsProvider()),
        ],
        child: const AddRequestScreen(),
      ),
    );
  }
}
