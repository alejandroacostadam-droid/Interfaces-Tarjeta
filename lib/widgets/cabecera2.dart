import 'package:flutter/material.dart';

import '../design/colores.dart';

class Cabecera2 extends StatelessWidget {
  const Cabecera2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'II - DEFINE TU ESPECIALIZACIÓN',
          style: TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colores.dorado,
          ),
        ),
      ],
    );
  }
}
