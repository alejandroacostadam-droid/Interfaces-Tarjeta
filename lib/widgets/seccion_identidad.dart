import 'package:flutter/material.dart';

import '../design/tipografia.dart';
import '../design/colores.dart';

class SeccionIdentidad extends StatelessWidget {
  const SeccionIdentidad({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('01', style: Tipografia.numeroSeccion),
            const SizedBox(width: 10.0),
            Text('Identidad  del personaje', style: Tipografia.tituloSeccion),
          ],
        ),
        Text(
          'Completa los datos básicos que definirán a tu personaje',
          style: Tipografia.descripcionSeccion,
        ),
        const SizedBox(height: 15.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('NOMBRE DEL PERSONAJE', style: Tipografia.titulillo),
            const SizedBox(height: 5.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Eira Thorne',
                hintStyle: Tipografia.descripcionSeccion,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colores.borde, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colores.dorado, width: 1),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
