import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';


class NewWalkPage extends StatefulWidget {
  const NewWalkPage({super.key});

  @override
  State<NewWalkPage> createState() => _NewWalkPageState();
}

class _NewWalkPageState extends State<NewWalkPage> {

  void didChangeDependencies(){ //Se llama esta función cada que se abre la página
    super.didChangeDependencies();
    membershipFunction();
  }


  final bool banMem = false;

  List<String> _walkDuration = ['10 minutos', '15 minutos', '20 minutos', '25 minutos',
  '30 minutos', '35 minutos', '40 minutos', '45 minutos', '50 minutos', '55 minutos', '60 minutos'];

  List<String> _walkTime = ['7:00', '7:30', '8:00', '8:30', '9:00', '9:30', '10:00', '10:30',
    '11:00', '11:30', '12:00', '12:30', '13:00', '13:30', '14:00', '14:30', '15:00', '15:30', '16:00', '16:30',
    '17:00', '17:30', '18:00', '18:30', '19:00', '19:30', '20:00', '20:30', '21:00'];

  List<String> _numDogs = ['1', '2', '3'];

  List<String> _selectedDog = ['Sammy'];

  final List<String> _payment = ['Efectivo', 'Transferencia'];

  final _walkPrice = TextEditingController();
  final _locationWalk = TextEditingController();


  void membershipFunction (){
    if (banMem == false){
      _walkDuration = ['10 minutos', '15 minutos', '20 minutos', '25 minutos', '30 minutos'];
      _walkTime = ['10:00', '10:30', '11:00', '11:30', '12:00', '12:30', '13:00', '13:30',
        '14:00', '14:30', '15:00'];
      _numDogs = ['1'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nuevo paseo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DropdownMenu<String>(
                  width: 250,
                  hintText: 'Hora del paseo',
                  initialSelection: _walkTime[0],
                  enableFilter: true,
                  requestFocusOnTap: true,
                  leadingIcon: const Icon(Icons.access_time, color: Color(0xFFEC407A),),
                  label: const Text('Hora'),
                  onSelected: (String? event){
                    setState(() {

                    });
                  },
                  dropdownMenuEntries: _walkTime.map<DropdownMenuEntry<String>>((String event) {
                    return DropdownMenuEntry<String>(
                      value: event,
                      label: event,
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                DropdownMenu<String>(
                  width: 250,
                  hintText: 'Tiempo del paseo',
                  initialSelection: _walkDuration[0],
                  enableFilter: true,
                  requestFocusOnTap: true,
                  leadingIcon: const Icon(Icons.hourglass_bottom, color: Color(0xFFEC407A),),
                  label: const Text('Tiempo'),
                  onSelected: (String? event){
                    setState(() {

                    });
                  },
                  dropdownMenuEntries: _walkDuration.map<DropdownMenuEntry<String>>((String event) {
                    return DropdownMenuEntry<String>(
                      value: event,
                      label: event,
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    controller: _walkPrice,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.attach_money),
                      prefixIconColor: const Color(0xFFEC407A),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: const BorderSide(
                          color: Color(0xFF8492A6),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: const BorderSide(
                          color: Color(0xFF1565C0),
                        ),
                      ),
                      labelText: 'Tarifa del paseo',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                DropdownMenu<String>(
                  width: 250,
                  hintText: 'Medio de pago',
                  initialSelection: _payment[0],
                  enableFilter: true,
                  requestFocusOnTap: true,
                  leadingIcon: const Icon(Icons.payment, color: Color(0xFFEC407A),),
                  label: const Text('Medio de pago'),
                  onSelected: (String? event){
                    setState(() {

                    });
                  },
                  dropdownMenuEntries: _payment.map<DropdownMenuEntry<String>>((String event) {
                    return DropdownMenuEntry<String>(
                      value: event,
                      label: event,
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                DropdownMenu<String>(
                  width: 250,
                  hintText: 'Número de perros',
                  initialSelection: _numDogs[0],
                  enableFilter: true,
                  requestFocusOnTap: true,
                  leadingIcon: const Icon(Icons.numbers, color: Color(0xFFEC407A),),
                  label: const Text('Número de perros'),
                  onSelected: (String? event){
                    setState(() {

                    });
                  },
                  dropdownMenuEntries: _numDogs.map<DropdownMenuEntry<String>>((String event) {
                    return DropdownMenuEntry<String>(
                      value: event,
                      label: event,
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                DropdownMenu<String>(
                  width: 250,
                  hintText: 'Seleccionar perro',
                  initialSelection: _selectedDog[0],
                  enableFilter: true,
                  requestFocusOnTap: true,
                  //leadingIcon: const Image(
                  //  image: AssetImage('assets/images/bone2.png'),
                  //  color: Color(0xFFEC407A),
                  //),
                  leadingIcon: const Icon(Icons.pets, color: Color(0xFFEC407A),),
                  label: const Text('Número de perros'),
                  onSelected: (String? event){
                    setState(() {

                    });
                  },
                  dropdownMenuEntries: _selectedDog.map<DropdownMenuEntry<String>>((String event) {
                    return DropdownMenuEntry<String>(
                      value: event,
                      label: event,
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 32.0,
                ),
                SizedBox(
                  width: 210,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: (){

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                    ),
                    child: const Text(
                      'Encontrar paseador',
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
