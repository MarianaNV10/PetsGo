import 'package:flutter/material.dart';
import 'package:petsgo/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState(){
    _closeSplash();
  }

  Future<void> _closeSplash() async{
    Future.delayed(const Duration(seconds: 3), () async{
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9E7E9),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Center(
          child: Image(
            image: AssetImage('assets/images/logo.png'),
            width: 2700000000,
            height: 270,
          ),
        ),
      ),
    );
  }
}
