import 'package:flutter/material.dart';

import '../design/colores.dart';
import 'fila_atributo2.dart';
import 'tarjeta_puntos2.dart';

class SeccionAtributos2 extends StatelessWidget {
  const SeccionAtributos2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Row(
          children: [
            Text(
              '02',
              style: TextStyle(
                fontFamily: 'serif',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colores.dorado,
              ),
            ),
            SizedBox(width: 8.0),
            Text(
              'Atributos físicos',
              style: TextStyle(
                fontFamily: 'serif',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colores.textoPrincipal,
              ),
            ),
            SizedBox(width: 450.0),
            Text(
              '5 / 10 puntos',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colores.textoSecundario,
              ),
            ),
          ],
        ) /*
        SizedBox(height: 4.0),
        Text(
          'Distribuye puntos entre Fuerza, Destreza, Resistencia y Velocidad.',
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
            color: Colores.textoSecundario,
          ),
        ),
        SizedBox(height: 14.0),
        TarjetaPuntos2(),
        SizedBox(height: 20.0),
        FilaAtributo2(
          nombre: 'Inteligencia',
          textoBadge: '+4 puntos asignados',
          badgeDorado: true,
          descripcion: 'Conocimiento y poder mágico',
          valor: '12',
        ),
        SizedBox(height: 18.0),
        FilaAtributo2(
          nombre: 'Sabiduría',
          textoBadge: '+2 puntos asignados',
          badgeDorado: true,
          descripcion: 'Percepción e intuición',
          valor: '10',
        ),
        SizedBox(height: 18.0),
        FilaAtributo2(
          nombre: 'Carisma',
          textoBadge: 'Valor base',
          badgeDorado: false,
          descripcion: 'Presencia y persuasión',
          valor: '8',
        ),*/,
      ],
    );
  }
}
