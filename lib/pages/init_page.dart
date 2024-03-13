import 'package:flutter/material.dart';
import 'package:petsgo/pages/login_page.dart';
import 'package:petsgo/pages/register_page.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {

  void _onLoginButtonClicked(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void _onRegisterButtonClicked(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/fondoh.png',
              fit: BoxFit.cover,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 100,
                  ),
                  const Image(
                      image: AssetImage('assets/images/perroLogo.png')
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Text(
                    "PetsGo",
                    style: TextStyle(
                      fontSize: 46,
                      fontFamily: 'Sensei',
                    ),
                  ),
                  const Text(
                    "Paseo para mascotas",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF8492A6),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 200,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: (){
                        _onLoginButtonClicked();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                      ),
                      child: const Text(
                        'Iniciar Sesión',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: 200,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: (){
                        _onRegisterButtonClicked();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                      ),
                      child: const Text(
                        'Registrarse',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
