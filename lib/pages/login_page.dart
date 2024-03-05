import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _passwordVisibility = false;

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
                  "Iniciar Sesión",
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Text(
                  "PetsGo",
                  style: const TextStyle(
                    fontSize: 46,
                    fontFamily: 'Sensei',
                  ),
                ),
                Text(
                  "Paseo para mascotas",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF8492A6),
                  ),
                ),
                const SizedBox(
                  height: 80,
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
                  height: 40,
                ),
                SizedBox(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                    child: Text(
                      'Iniciar Sesión',
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
          ),
        ),
      ),
    );
  }
}
