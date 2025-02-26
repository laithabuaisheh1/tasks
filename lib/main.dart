import 'package:flutter/material.dart';

// import 'tasks/task1.dart';
// import 'tasks/task2.dart';
import 'providers/login_provider.dart';
import 'providers/product_provider.dart';
import 'tasks/task11.dart';
import 'tasks/task15.dart';
import 'tasks/task17.dart';
import 'tasks/task5.dart';
import 'tasks/task6.dart';
import 'tasks/task7.dart';
import 'tasks/task8.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

import 'views/details.dart';
import 'views/product_view_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Product()),
        ChangeNotifierProvider(create: (context) => LoginProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // this is task selector
      //home: const Task1(),
      //home: const Task2(),
      home: Task17(),
    );
  }
}
