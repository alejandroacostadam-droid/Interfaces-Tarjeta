import 'package:flutter/material.dart';

import '../design/colores.dart';
import '../widgets/tarjeta_atributos_mentales.dart';
import '../widgets/tarjeta_equipamiento_final.dart';

class Pantalla4 extends StatelessWidget {
  const Pantalla4({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colores.fondo,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TarjetaAtributosMentales(),
              SizedBox(height: 16.0),
              TarjetaEquipamientoFinal(),
            ],
          ),
        ),
      ),
    );
  }
}
