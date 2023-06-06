import 'package:flutter/material.dart';
import 'package:flutterrutas/src/pages/verde.dart';


class RojoPage extends StatelessWidget {
  const RojoPage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
           colors: <Color>[Color(0xffFF1744), Color(0xffFF1744)],
            begin: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ESTAMOS EN LA PANTALLA ROJA!!!!'),
              SizedBox(height: 40),
              ElevatedButton(
  child: Text(
    'PRESIONAME!!! <3',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  ),
  style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 59, 240, 210), // Color de fondo del botón
    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20), // Ajusta el padding según tus necesidades
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20), // Ajusta el radio de la esquina según tus necesidades
    ),
    elevation: 8, // Elevación del botón
  ),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VerdePage(),
      ),
    );
  },
),

              
              SizedBox(height: 40), // Espacio entre los botones
              Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Colors.greenAccent.withOpacity(0.2),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3),
      ),
    ],
  ),
  child: ElevatedButton(
    child: Text(
      'VOLVER A LA ANTERIOR PAGINA!!!',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    style: ElevatedButton.styleFrom(
      primary: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
),

            ],
          ),
        ),
      ),
    );
  }
}