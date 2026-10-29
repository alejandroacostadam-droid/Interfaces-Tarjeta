import 'package:flutter/material.dart';

import '../design/colores.dart';
import '../widgets/tarjeta_atributos_mentales.dart';
import '../widgets/tarjeta_equipamiento_final.dart';

class Pantalla4 extends StatelessWidget {
  final Map<String, dynamic> personaje;

  const Pantalla4({super.key, required this.personaje});

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
              TarjetaAtributosMentales(
                inteligencia: personaje['inteligencia'],
                sabiduria: personaje['sabiduria'],
                carisma: personaje['carisma'],
              ),
              const SizedBox(height: 16.0),
              TarjetaEquipamientoFinal(objeto: personaje['objeto']),
            ],
          ),
        ),
      ),
    );
  }
}
