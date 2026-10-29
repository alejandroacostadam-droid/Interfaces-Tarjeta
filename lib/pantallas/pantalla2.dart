import 'package:flutter/material.dart';
import 'package:personarpg/widgets/cabecera2.dart';
import 'package:personarpg/widgets/tarjeta_equipamiento2.dart';

import '../design/colores.dart';
import '../widgets/botones_inferiores2.dart';
import '../widgets/seccion_atributos2.dart';
import '../widgets/seccion_equipamiento2.dart';

class Pantalla2 extends StatelessWidget {
  final Map<String, dynamic> personaje;

  const Pantalla2({super.key, required this.personaje});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Fondo principal de la tarjeta
      backgroundColor: Colores.fondo,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 24.0),
              Cabecera2(),
              SeccionEquipamiento2(),
              SeccionAtributos2(),
              BotonesInferiores2(),
            ],
          ),
        ),
      ),
    );
  }
}
