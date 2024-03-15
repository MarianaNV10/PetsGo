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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Stack(
            fit: StackFit.expand,
            children: [
              Image(image: new AssetImage('assets/images/Plantilla.png'), fit: BoxFit.cover,),
              Center(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                        image: AssetImage('assets/images/MDWalk.png')
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Text(
                      "¡Bienvenid@ a PetsGo!",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFF8492A6),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Text(
                      "Se ha enviado una confirmación de la creación de la cuenta al correo registrado.",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
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
