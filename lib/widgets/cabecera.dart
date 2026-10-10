import 'package:flutter/material.dart';
import '../design/colores.dart';

class Cabecera extends StatelessWidget {
  const Cabecera({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'III · PREPARA TU AVENTURA',
          style: TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 2.0,
            color: Colores.dorado,
          ),
        ),
      ],
    );
  }
}
