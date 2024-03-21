import 'package:flutter/material.dart';

class CanceledWalkPage extends StatefulWidget {
  const CanceledWalkPage({super.key});

  @override
  State<CanceledWalkPage> createState() => _CanceledWalkPageState();
}

class _CanceledWalkPageState extends State<CanceledWalkPage> {
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
            Image(image: AssetImage('assets/images/plantillaB.png')),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 48.0),
                  ),
                  Image(
                    image: AssetImage('assets/images/canceledwalk.png'),
                    width: 270,
                    height: 270,
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    "Paseo Cancelado",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 42.0,
                  ),
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: Text(
                      "Marcela Higuita ha cancelado el paseo del 08-02-24, 15:00",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF8492A6),
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
