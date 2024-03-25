import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ScoreWalkPage extends StatefulWidget {
  const ScoreWalkPage({super.key});

  @override
  State<ScoreWalkPage> createState() => _ScoreWalkPageState();
}

class _ScoreWalkPageState extends State<ScoreWalkPage> {

  XFile? _image;
  String imageBase64 = "";
  bool press1 = false;
  bool press2 = false;
  bool press3 = false;
  bool press4 = false;
  bool press5 = false;

  Future _getImage() async{
    final _imagePicker = ImagePicker();
    _image = await _imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (_image != null) {
        final byte = File(_image!.path).readAsBytesSync();
        imageBase64 = base64Encode(byte);
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Califique el paseo",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8492A6),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: _image == null ? const AssetImage('assets/images/userProfile.png') : Image.file(File(_image!.path)).image,
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Valeria Montes",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF8492A6),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      'assets/images/scoreBone.png',
                      color: press1 ? const Color(0xFFECE500) : const Color(0xFF8492A6),
                      width: 37,
                    ),
                    onPressed: (){
                      setState(() {
                        press1 = !press1;
                      });
                    },
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/images/scoreBone.png',
                      color: press2 ? const Color(0xFFECE500) : const Color(0xFF8492A6),
                      width: 37,
                    ),
                    onPressed: (){
                      setState(() {
                        press2 = !press2;
                      });
                    },
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/images/scoreBone.png',
                      color: press3 ? const Color(0xFFECE500) : const Color(0xFF8492A6),
                      width: 37,
                    ),
                    onPressed: (){
                      setState(() {
                        press3 = !press3;
                      });
                    },
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/images/scoreBone.png',
                      color: press4 ? const Color(0xFFECE500) : const Color(0xFF8492A6),
                      width: 37,
                    ),
                    onPressed: (){
                      setState(() {
                        press4 = !press4;
                      });
                    },
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/images/scoreBone.png',
                      color: press5 ? const Color(0xFFECE500) : const Color(0xFF8492A6),
                      width: 37,
                    ),
                    onPressed: (){
                      setState(() {
                        press5 = !press5;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
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
                    'Calificar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
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
                    'Pagar',
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
      ),
    );
  }
}
