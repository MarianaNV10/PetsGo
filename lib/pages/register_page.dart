import 'package:flutter/material.dart';
import 'package:petsgo/pages/confR_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

enum Rol{ paseador, dueno }

class _RegisterPageState extends State<RegisterPage> {

  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _passwordVisibility = false;

  Rol? _rol = Rol.paseador;

  void _onCreateAccountButtonClicked(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterConfPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Registrarse",
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _name,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle, size: 27.0),
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
                    labelText: 'Nombre',
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, size: 27.0,),
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
                    labelText: 'Correo Electrónico',
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                TextFormField(
                  controller: _password,
                  obscureText: !_passwordVisibility,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image(
                        image: AssetImage('assets/images/iconPass.png'),
                        width: 25,
                        height: 25,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(_passwordVisibility ? Icons.visibility : Icons.visibility_off),
                      onPressed: (){
                        setState(() {
                          _passwordVisibility = !_passwordVisibility;
                        });
                      },
                    ),
                    suffixIconColor: Color(0xFFEC407A),
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
                    labelText: 'Contraseña',
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: RadioListTile(
                        title: const Text('Paseador'),
                        activeColor: Color(0xFFEC407A),
                        fillColor: MaterialStateProperty.all(Color(0xFFEC407A)),
                        value: Rol.paseador,
                        groupValue: _rol,
                        onChanged: (Rol? value){
                          setState(() {
                            _rol = value;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: const Text('Dueño de mascota'),
                        activeColor: Color(0xFFEC407A),
                        fillColor: MaterialStateProperty.all(Color(0xFFEC407A)),
                        value: Rol.dueno,
                        groupValue: _rol,
                        onChanged: (Rol? value){
                          setState(() {
                            _rol = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32.0,
                ),
                ElevatedButton.icon(
                  onPressed: (){},
                  icon: Image.asset(
                    'assets/images/logogmail.png',
                    width: 40,
                    height: 40,
                  ),
                  label: const Text(
                    "Sign with gmail",
                    style: TextStyle(color: Color(0xFF8492A6)),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFFEC407A), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    primary: Colors.white,
                    shadowColor: Colors.white,
                    foregroundColor: Color(0xFFA5E0F8),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                    child: Text(
                      'Crear Cuenta',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: (){
                      _onCreateAccountButtonClicked();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
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
