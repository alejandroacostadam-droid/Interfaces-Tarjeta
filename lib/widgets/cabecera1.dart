import 'package:flutter/material.dart';

import '../design/tipografia.dart';

class Cabecera1 extends StatelessWidget {
  const Cabecera1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('I · CREA TU PERSONAJE', style: Tipografia.capitulo),
        const SizedBox(height: 9.0),
        Text('Identidad y raza', style: Tipografia.tituloPantalla),
      ],
    );
  }
}
