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

  final _comments = TextEditingController();
  String _saveComments = '';

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

  void _scoreWalk(String num){
    switch (num){
      case '1':
        if(press1 == false && press2 == false && press3 == false && press4 == false && press5 == false){
          press1 = true;
        }
        else if(press1 && press2 && press3 == false && press4 == false && press5 == false){
          press2 = !press2;
        }
        else if(press1 && press2 && press3 && press4 == false && press5 == false){
          press2 = !press2;
          press3 = !press3;
        }
        else if(press1 && press2 && press3 && press4 && press5 == false){
          press2 = !press2;
          press3 = !press3;
          press4 = !press4;
        }
        else if(press1 && press2 && press3 && press4 && press5){
          press2 = !press2;
          press3 = !press3;
          press4 = !press4;
          press5 = !press5;
        }
        break;
      case '2':
        if(press1 == false && press2 == false && press3 == false && press4 == false && press5 == false){
          press2 = !press2;
          press1 = !press1;
        }
        else if(press1 && press2 == false && press3 == false && press4 == false && press5 == false){
          press2 = !press2;
        }
        else if(press1 && press2 && press3 && press4 == false && press5 == false){
          press3 = !press3;
        }
        else if(press1 && press2 && press3 && press4 && press5 == false){
          press3 = !press3;
          press4 = !press4;
        }
        else if(press1 && press2 && press3 && press4 && press5){
          press3 = !press3;
          press4 = !press4;
          press5 = !press5;
        }
        break;
      case '3':
        if(press1 == false && press2 == false && press3 == false && press4 == false && press5 == false){
          press1 = !press1;
          press2 = !press3;
          press3 = !press3;
        }
        else if(press1 && press2 == false && press3 == false && press4 == false && press5 == false){
          press2 = !press3;
          press3 = !press3;
        }
        else if(press1 && press2 && press3 == false && press4 == false && press5 == false){
          press3 = !press3;
        }
        else if(press1 && press2 && press3 && press4 && press5 == false){
          press4 = !press4;
        }
        else if(press1 && press2 && press3 && press4 && press5){
          press4 = !press4;
          press5 = !press5;
        }
        break;
      case '4':
        if(press1 == false && press2 == false && press3 == false && press4 == false && press5 == false){
          press1 = !press1;
          press2 = !press3;
          press3 = !press3;
          press4 = !press4;
        }
        else if(press1 && press2 == false && press3 == false && press4 == false && press5 == false){
          press2 = !press3;
          press3 = !press3;
          press4 = !press4;
        }
        else if(press1 && press2 && press3 == false && press4 == false && press5 == false){
          press3 = !press3;
          press4 = !press4;
        }
        else if(press1 && press2 && press3 && press4 == false && press5 == false){
          press4 = !press4;
        }
        else if(press1 && press2 && press3 && press4 && press5){
          press5 = !press5;
        }
        break;
      case '5':
        if(press1 == false && press2 == false && press3 == false && press4 == false && press5 == false){
          press1 = !press1;
          press2 = !press2;
          press3 = !press3;
          press4 = !press4;
          press5 = !press5;
        }
        else if(press1 && press2 == false && press3 == false && press4 == false && press5 == false){
          press2 = !press2;
          press3 = !press3;
          press4 = !press4;
          press5 = !press5;
        }
        else if(press1 && press2 && press3 == false && press4 == false && press5 == false){
          press3 = !press3;
          press4 = !press4;
          press5 = !press5;
        }
        else if(press1 && press2 && press3 && press4 == false && press5 == false){
          press4 = !press4;
          press5 = !press5;
        }
        else if(press1 && press2 && press3 && press4 && press5 == false){
          press5 = !press5;
        }
        break;
    }
  }

  void _onSendButtonClicked(){
    setState(() {
      if(_comments.text != null){
        press5 = true;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Califique el paseo",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8492A6),
                  ),
                ),
                const SizedBox(
                  height: 42.0,
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
                    fontSize: 22,
                    color: Color(0xFF8492A6),
                  ),
                ),
                const SizedBox(
                  height: 32.0,
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
                          _scoreWalk('1');
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
                          _scoreWalk('2');
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
                          _scoreWalk('3');
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
                          _scoreWalk('4');
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
                          _scoreWalk('5');
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: _comments,
                    minLines: 1,
                    maxLines: 3,
                    textCapitalization: TextCapitalization.sentences,
                    cursorColor: const Color(0xFF737575),
                    decoration: const InputDecoration(
                      hintText: 'Comentarios',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF0DB3CA),
                        ),
                      ),

                    ),
                  ),
                ),
                const SizedBox(
                  height: 76.0,
                ),
                SizedBox(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: (){
                      _onSendButtonClicked();
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
                  height: 12.0,
                ),
                Text(
                  _comments.text,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
