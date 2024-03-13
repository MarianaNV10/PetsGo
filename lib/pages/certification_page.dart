import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class CertificationPage extends StatefulWidget {
  const CertificationPage({super.key});

  @override
  State<CertificationPage> createState() => _CertificationPageState();
}

class _CertificationPageState extends State<CertificationPage> {

  String? filePA = "";
  String? fileA = "";
  String? fileCA = "";

  Future _getDocument(int index) async {
    if (index == 0){
      filePA = (await FilePicker.platform.pickFiles()) as String?;
    }
    else if (index == 1){
      fileA = (await FilePicker.platform.pickFiles()) as String?;
    }
    else{
      fileCA = (await FilePicker.platform.pickFiles()) as String?;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Certificaciones'),
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
                },
                icon: const Icon(
                  Icons.add_box,
                  color: Color(0xFFEC407A),
                ),
                label: const Text('Primeros auxilios'),
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Color(0xFF8492A6)),
                  overlayColor: MaterialStatePropertyAll(Colors.black12),
                ),
              ),
              TextButton.icon(
                onPressed: (){
                  _getDocument(1);
                },
                icon: const Icon(
                  Icons.add_box,
                  color: Color(0xFFEC407A),
                ),
                label: const Text('Adiestramiento'),
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Color(0xFF8492A6)),
                  overlayColor: MaterialStatePropertyAll(Colors.black12),
                ),
              ),
              TextButton.icon(
                onPressed: (){
                  _getDocument(2);
                },
                icon: const Icon(
                  Icons.add_box,
                  color: Color(0xFFEC407A),
                ),
                label: const Text('Cuidado de animales',),
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
                  onPressed: (){},
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
