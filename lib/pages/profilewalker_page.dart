import 'package:flutter/material.dart';

class ProfileWalkerPage extends StatefulWidget {
  const ProfileWalkerPage({super.key});

  @override
  State<ProfileWalkerPage> createState() => _ProfileWalkerPageState();
}

class _ProfileWalkerPageState extends State<ProfileWalkerPage> {

  final _celular = TextEditingController();
  final _ubicacion = TextEditingController();
  final _experience = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Datos paseador",
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                "Laura López",
                style: const TextStyle(
                  fontSize: 25,
                  color: Color(0xFF8492A6),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _celular,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone, size: 27.0),
                  prefixIconColor: Color(0xFFEC407A),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide(
                      color: Color(0xFF8492A6),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide(
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
                  prefixIcon: Icon(Icons.location_on, size: 27.0,),
                  prefixIconColor: Color(0xFFEC407A),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide(
                      color: Color(0xFF8492A6),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide(
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
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  labelText: 'Agrega una descripción',
                  hintText: 'Escribe aquí',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 150,
                    height: 45,
                    child: ElevatedButton(
                      child: Text(
                        'Certificados',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: (){

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
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
                      child: Text(
                        'Finalizar',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: (){

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
