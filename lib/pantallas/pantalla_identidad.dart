import 'package:flutter/material.dart';
import 'package:personarpg/widgets/cabecera1.dart';
import 'package:personarpg/widgets/seccion_identidad.dart';

import '../design/colores.dart';

class PantallaIdentidad extends StatelessWidget {
  const PantallaIdentidad({super.key});

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
              const SeccionIdentidad(),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }
}
