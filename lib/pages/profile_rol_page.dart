
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petsgo/pages/certification_page.dart';
import 'package:petsgo/pages/home_button_navigation_bar_walker_page.dart';

class ProfileWalkerPage extends StatefulWidget {
  const ProfileWalkerPage({super.key});

  @override
  State<ProfileWalkerPage> createState() => _ProfileRolPageState();
}

class _ProfileRolPageState extends State<ProfileWalkerPage> {

  final _celular = TextEditingController();
  final _ubicacion = TextEditingController();
  final _experience = TextEditingController();
  bool _rol = false;
  XFile? _image;
  String imageBase64 = "";
  String _userDescription = "";

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

  void _onCertificationButtonClicked(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const CertificationPage()));
  }

  void _onFinishButtonClicked(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeButtonNavigationBarWalkerPage()));
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
                _rol ?  const Text(
                  "Datos dueño de perro",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ) :  const Text(
                  "Datos paseador",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: _image == null ? const AssetImage('assets/images/userProfile.png') : Image.file(File(_image!.path)).image,
                  backgroundColor: Colors.transparent,
                  child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white60,
                            child: IconButton(
                              onPressed: _getImage,
                              icon: const Icon(Icons.edit),
                              color: const Color(0xFFEC407A),
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "Laura López",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF8492A6),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _celular,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone, size: 27.0),
                    prefixIconColor: const Color(0xFFEC407A),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF8492A6),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF1565C0),
                      ),
                    ),
                    labelText: 'Celular',
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                TextFormField(
                  controller: _ubicacion,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.location_on, size: 27.0,),
                    prefixIconColor: const Color(0xFFEC407A),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF8492A6),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF1565C0),
                      ),
                    ),
                    labelText: 'Ubicación',
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextField(
                  controller: _experience,
                  textCapitalization: TextCapitalization.sentences,
                  minLines: 1,
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: 'Agrega una descripción',
                    hintText: 'Ingrese anotaciones importantes, entre otros',
                    border: const OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF8492A6),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF1565C0),
                      ),
                    ),
                  ),
                  onChanged: (value){
                    setState(() {
                      _userDescription = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 42.0,
                ),
                _rol ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: (){
                          _onCertificationButtonClicked();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue,
                        ),
                        child: const Text(
                          'Certificados',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: (){
                          _onFinishButtonClicked();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue,
                        ),
                        child: const Text(
                          'Finalizar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ) : SizedBox(
                  width: 150,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: (){
                      _onFinishButtonClicked();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                    ),
                    child: const Text(
                      'Finalizar',
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
      ),
    );
  }
}
