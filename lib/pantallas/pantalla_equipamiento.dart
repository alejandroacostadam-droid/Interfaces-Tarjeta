import 'package:flutter/material.dart';
import '../design/colores.dart';

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
