import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tkgblood/feature/home/dashboard_screen.dart';

import 'feature/home/view/home_screen.dart';





Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyAzCnyMIdJWfoO1ycnTjj9PXv7QH5xjkYM',
        appId: '1:1085571169218:android:8399978e233466b85af45b',
        messagingSenderId: '1085571169218',
        projectId: 'bloodbd-1efaa',
        storageBucket: 'myapp-b9yt18.appspot.com',
      )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,),
        useMaterial3: true,
      ),
      home: const DashboardScreenView()
    );
  }
}
