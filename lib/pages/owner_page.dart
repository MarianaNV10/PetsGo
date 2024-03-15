import 'package:flutter/material.dart';
import 'package:petsgo/pages/membership_page.dart';
import 'package:petsgo/pages/profile_owner_page.dart';

class OwnerPage extends StatefulWidget {
  const OwnerPage({super.key});

  @override
  State<OwnerPage> createState() => _OwnerPageState();
}

class _OwnerPageState extends State<OwnerPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
        child: Stack(
          fit: StackFit.expand,
          children: [
            //Image(image: new AssetImage('assets/images/Plantilla.png'), fit: BoxFit.cover,),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  //_widgetOptions.elementAt(_selectedIndex),
                  const Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 170,
                    height: 170,
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton.outlined(
                            icon: const Image(
                              image: AssetImage('assets/images/paseadores.png'),
                              width: 80,
                              height: 80,
                            ),
                            //color: Colors.black12,
                            style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xFFEC407A), width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(35.0)),
                              ),
                            ),
                            onPressed: (){},
                          ),
                          const Text('Paseadores'),
                        ],
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton.outlined(
                            icon: const Image(
                              image: AssetImage('assets/images/newWalk.png'),
                              width: 80,
                              height: 80,
                            ),
                            //color: Colors.black12,
                            style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xFFEC407A), width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(35.0)),
                              ),
                            ),
                            onPressed: (){},
                          ),
                          const Text('Nuevo paseo'),
                        ],
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton.outlined(
                            icon: const Image(
                              image: AssetImage('assets/images/Walks.png'),
                              width: 80,
                              height: 80,
                            ),
                            //color: Colors.black12,
                            style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xFFEC407A), width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(35.0)),
                              ),
                            ),
                            onPressed: (){},
                          ),
                          const Text('Paseos'),
                        ],
                      ),
                    ],
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
