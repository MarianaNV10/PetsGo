import 'package:flutter/material.dart';

class MembershipPage extends StatefulWidget {
  const MembershipPage({super.key});

  @override
  State<MembershipPage> createState() => _MembershipPageState();
}

class _MembershipPageState extends State<MembershipPage> {

  String op1 = 'Videos del paseo';
  String op2 = "Paseadores con altas calificaciones";
  String op3 = "Sin límite horario";
  String op4 = "Bonos: Paseos gratis al cumplir mínimo\n 6 paseos a la semana";

  Widget _addRowOption(String textRow){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
        ),
        const Icon(Icons.add, color: Color(0xFFEC407A)),
        const SizedBox(
          width: 5.0,
        ),
        Text(
        '$textRow',
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xFF8492A6),
        ),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(image: new AssetImage('assets/images/Plantilla.png'), fit: BoxFit.cover,),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Image(
                    image: AssetImage('assets/images/smillingDog.png'),
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Text(
                    "Gua Premium",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF8492A6),
                    ),
                  ),
                  const SizedBox(
                    height: 22.0,
                  ),
                  const Text(
                    "COP 100.000/Semestral",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF8492A6),
                    ),
                  ),
                  const SizedBox(
                    height: 42.0,
                  ),
                  _addRowOption(op1),
                  _addRowOption(op2),
                  _addRowOption(op3),
                  _addRowOption(op4),
                  const SizedBox(
                    height: 82.0,
                  ),
                  SizedBox(
                    width: 200,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: (){

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                      ),
                      child: const Text(
                        'Comprar',
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
