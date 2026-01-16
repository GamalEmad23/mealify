// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:mealify/features/home/presentation/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
     Future.delayed(
      Duration(seconds: 3) , () {
       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen(),));
     },);
  }
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/applogo.png" , 
          fit: BoxFit.cover,
          height: h*.5,
          width: w*.5,
          ),
      ),
    );
  }
}