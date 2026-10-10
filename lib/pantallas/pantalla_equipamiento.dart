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
      body: SafeArea(child: Text("Pantalla 3"),
        
      ),
    );
  }
}
