import 'package:flutter/material.dart';

import '../design/tipografia.dart';

class Cabecera4 extends StatelessWidget {
  const Cabecera4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('IV · REVISA TU PERSONAJE', style: Tipografia.capitulo),
        const SizedBox(height: 9.0),
        Text('Ficha final', style: Tipografia.tituloPantalla),
        const SizedBox(height: 9.0),
        Text(
          'Revisa la información recopilada y confirma tu personaje antes de continuar.',
          style: Tipografia.descripcionSeccion,
        ),
      ],
    );
  }
}
