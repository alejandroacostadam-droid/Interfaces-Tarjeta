import 'package:flutter/material.dart';
import '../design/colores.dart';
import '../widgets/botones_inferiores.dart';
import '../widgets/cabecera.dart';
import '../widgets/seccion_atributos.dart';
import '../widgets/seccion_equipamiento.dart';

class PantallaEquipamiento extends StatelessWidget {
  const PantallaEquipamiento({super.key});

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
              Cabecera(),
              SizedBox(height: 24.0),
              SeccionEquipamiento(),
              SizedBox(height: 28.0),
              SeccionAtributos(),
              SizedBox(height: 24.0),
              BotonesInferiores(),
            ],
          ),
        ),
      ),
    );
  }
}
