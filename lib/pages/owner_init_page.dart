import 'package:flutter/material.dart';
import 'package:petsgo/pages/membership_page.dart';
import 'package:petsgo/pages/profile_owner_page.dart';

class OwnerInitPage extends StatefulWidget {
  const OwnerInitPage({super.key});

  @override
  State<OwnerInitPage> createState() => _OwnerInitPageState();
}

class _OwnerInitPageState extends State<OwnerInitPage> {

  bool isVisible = true;

  void _toggleVisibility(){
    setState(() {
      isVisible = !isVisible;
    });
  }

  void _onWalkersButtonClicked(){

  }

  void _onNewWalkButtonClicked(){

  }

  void _onWalksButtonClicked(){

  }


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
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 170,
                    height: 170,
                  ),
                  const SizedBox(
                    height: 50.0,
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
                            onPressed: (){
                              _onWalkersButtonClicked();
                            },
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
                            onPressed: (){
                              _onNewWalkButtonClicked();
                            },
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
                            onPressed: (){
                              _onWalksButtonClicked();
                            },
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
