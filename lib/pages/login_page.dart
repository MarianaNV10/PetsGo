import 'package:flutter/material.dart';
import 'package:petsgo/pages/home_button_navigation_bar_owner_page.dart';
import 'package:petsgo/pages/owner_init_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _passwordVisibility = false;
  bool _rolOwner = true; //Es Dueño de mascota
  bool _rolWalker = false;
  void _onLoginButtonClicked(){
    if(_rolOwner){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeButtonNavigationBarOwnerPage()));
    }
    else{
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ()));
    }
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
                const Text(
                  "Iniciar Sesión",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                const Text(
                  "PetsGo",
                  style: TextStyle(
                    fontSize: 46,
                    fontFamily: 'Sensei',
                  ),
                ),
                const Text(
                  "Paseo para mascotas",
                  style: TextStyle(
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
                    prefixIcon: const Icon(Icons.email),
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
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Image(
                        image: AssetImage('assets/images/iconPass.png'),
                        width: 24,
                        height: 24,
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
                    suffixIconColor: const Color(0xFFEC407A),
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
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFFEC407A), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    shadowColor: Colors.white,
                    foregroundColor: const Color(0xFFA5E0F8),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: (){
                      _onLoginButtonClicked();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                    ),
                    child: const Text(
                      'Iniciar Sesión',
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
