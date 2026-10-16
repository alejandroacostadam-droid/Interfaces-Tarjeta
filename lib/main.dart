import 'package:flutter/material.dart';
import 'package:personarpg/pantallas/pantalla_identidad.dart';

import 'design/colores.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persona RPG',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colores.fondo,
        colorScheme: const ColorScheme.dark(
          primary: Colores.dorado,
          surface: Colores.superficie,
        ),
        useMaterial3: true,
      ),
      home: const PantallaIdentidad(),
    );
  }
}
