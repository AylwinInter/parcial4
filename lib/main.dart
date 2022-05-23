import 'package:flutter/material.dart';
import 'package:parcial4/app/ui/paginas/home/principal.dart';

void main() {
  runApp( ParcialMap());
}

class ParcialMap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PrincipalPage(),
    );
  }
}