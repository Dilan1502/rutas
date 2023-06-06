import 'package:flutter/material.dart';
import 'package:flutterrutas/src/pages/azul.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Color(0xffD4AF37), Color(0xffC0C0C0), Color(0xff000000), ],
              begin: Alignment.topCenter,
            ),
          ),
          child: Center(
  child: Container(
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
        'PRESIONAME!! <3',
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AzulPage(),
          ),
        );
      },
    ),
  ),
),

        ),
      ),
    );
  }
}