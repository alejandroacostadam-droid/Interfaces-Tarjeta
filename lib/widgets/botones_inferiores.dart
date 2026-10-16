import 'package:flutter/material.dart';
import '../design/colores.dart';

class BotonesInferiores extends StatelessWidget {
  const BotonesInferiores({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colores.borde,
          thickness: 1.0,
          height: 1.0,
        ),
        const SizedBox(height: 24.0),
        Container(
          width: double.infinity,
          height: 48.0,
          decoration: BoxDecoration(
            color: Colores.dorado,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Continuar a la ficha',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: Colores.check,
                ),
              ),
              SizedBox(width: 8.0),
              Icon(
                Icons.arrow_forward,
                size: 18.0,
                color: Colores.check,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.arrow_back,
              size: 14.0,
              color: Colores.textoSecundario,
            ),
            SizedBox(width: 8.0),
            Text(
              'Volver a clase y atributos físicos',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: Colores.textoSecundario,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12.0),
      ],
    );
  }
}
