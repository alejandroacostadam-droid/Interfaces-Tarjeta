import 'package:flutter/material.dart';
import 'package:personarpg/widgets/cabecera1.dart';
import 'package:personarpg/widgets/seccion_identidad.dart';
import 'package:personarpg/widgets/seccion_raza.dart';
import 'package:personarpg/widgets/boton_inf.dart';
import 'package:personarpg/pantallas/pantalla2.dart';

import '../design/colores.dart';

class PantallaIdentidad extends StatefulWidget {
  const PantallaIdentidad({super.key});

  @override
  State<PantallaIdentidad> createState() => _PantallaIdentidadState();
}

class _PantallaIdentidadState extends State<PantallaIdentidad> {
  // El personaje se crea aquí vacío y cada pantalla lo va rellenando
  final Map<String, dynamic> personaje = {
    'nombre': '',
    'biografia': '',
    'raza': '',
    'clase': '',
    'fuerza': 5,
    'destreza': 5,
    'constitucion': 5,
    'inteligencia': 5,
    'sabiduria': 5,
    'carisma': 5,
    'objeto': '',
  };

  void _continuar() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pantalla2(personaje: personaje)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colores.fondo,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Cabecera1(),
              const SizedBox(height: 24.0),
              SeccionIdentidad(
                onNombreCambiado: (texto) => personaje['nombre'] = texto,
                onBiografiaCambiada: (texto) => personaje['biografia'] = texto,
              ),
              const SizedBox(height: 24.0),
              SeccionRaza(
                onRazaSeleccionada: (raza) =>
                    personaje['raza'] = raza['nombre'],
              ),
              const SizedBox(height: 24.0),
              BotonInf(onPressed: _continuar),
            ],
          ),
        ),
      ),
    );
  }
}
