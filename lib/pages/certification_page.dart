import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:petsgo/pages/profile_walker_page.dart';

class CertificationPage extends StatefulWidget {
  const CertificationPage({super.key});

  @override
  State<CertificationPage> createState() => _CertificationPageState();
}

class _CertificationPageState extends State<CertificationPage> {

  String? filePA = "";
  String? fileA = "";
  String? fileCA = "";

  bool banFile1 = false;
  bool banFile2 = false;
  bool banFile3 = false;

  String text1 = "Primeros auxilios";
  String text2 = "Adiestramiento";
  String text3 = "Cuidado de animales";

  Future _getDocument(int index) async {
    FilePickerResult? result  = await FilePicker.platform.pickFiles();
    if (index == 0){
      if (result != null) {
        banFile1 = true;
        filePA = result.files.single.path;
        setState(() {
          text1 = "Primeros auxilios - subido";
        });
      }
    }
    else if (index == 1){
      if (result != null) {
        banFile2 = true;
        fileA = result.files.single.path;
        setState(() {
          text2 = "Adiestramiento - subido";
        });
      }
    }
    else{
      if (result != null) {
        banFile3 = true;
        fileCA = result.files.single.path;
        setState(() {
          text3 = "Cuidado de animales - subido";
        });
      }
    }
  }

  void _onSendCertificationButtonClicked(){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Certificaciones'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.help_outline_outlined),
            tooltip: 'Help',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Se puede ingresar pdf o imágenes.')));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                  image: AssetImage('assets/images/certificaciones.png')
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                "Carga tus certificaciones",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF8492A6),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextButton.icon(
                onPressed: (){
                  _getDocument(0);
                  //_updateFile();
                },
                icon: const Icon(
                  Icons.add_box,
                  color: Color(0xFFEC407A),
                ),
                label: Text(text1),
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Color(0xFF8492A6)),
                  overlayColor: MaterialStatePropertyAll(Colors.black12),
                ),
              ),
              TextButton.icon(
                onPressed: (){
                  _getDocument(1);
                  //_updateFile();
                },
                icon: const Icon(
                  Icons.add_box,
                  color: Color(0xFFEC407A),
                ),
                label: Text(text2),
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Color(0xFF8492A6)),
                  overlayColor: MaterialStatePropertyAll(Colors.black12),
                ),
              ),
              TextButton.icon(
                onPressed: (){
                  _getDocument(2);
                  //_updateFile();
                },

                icon: const Icon(
                  Icons.add_box,
                  color: Color(0xFFEC407A),
                ),
                label: Text(text3),
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Color(0xFF8492A6)),
                  overlayColor: MaterialStatePropertyAll(Colors.black12),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              SizedBox(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  onPressed: (){
                    _onSendCertificationButtonClicked();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                  ),
                  child: const Text(
                    'Enviar',
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
