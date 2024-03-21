import 'package:flutter/material.dart';

class RegisterConfPage extends StatefulWidget {
  const RegisterConfPage({super.key});

  @override
  State<RegisterConfPage> createState() => _RegisterConfPageState();
}

class _RegisterConfPageState extends State<RegisterConfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Stack(
            fit: StackFit.expand,
            children: [
              Image(image: AssetImage('assets/images/plantillaB.png'), fit: BoxFit.cover,),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.symmetric(vertical: 42.0)),
                    Image(
                        image: AssetImage('assets/images/MDWalk.png')
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "¡Bienvenid@ a PetsGo!",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF8492A6),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Se ha enviado una confirmación de la creación de la cuenta al correo registrado.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF8492A6),
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
