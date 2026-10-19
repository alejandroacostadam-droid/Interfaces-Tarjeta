import 'package:flutter/material.dart';
import 'package:personarpg/widgets/tarjeta_equipamiento2.dart';

import '../design/colores.dart';
import 'fila_atributo2.dart';
import 'tarjeta_puntos2.dart';

class SeccionAtributos2 extends StatelessWidget {
  const SeccionAtributos2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textBaseline: TextBaseline.alphabetic,
          children: const [
            Row(
              children: [
                SizedBox(height: 45.0),
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
              ],
            ),
            Text(
              '5 / 10 puntos',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colores.textoSecundario,
              ),
            ),
          ],
        ),
        const SizedBox(height: 0.5),
        const Text(
          'Distribuye puntos entre Fuerza, Destreza, Resistencia y Velocidad.',
          style: TextStyle(fontSize: 12.0, color: Colores.textoSecundario),
        ),
        const SizedBox(height: 14.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          decoration: BoxDecoration(
            color: Colores.superficie,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colores.borde, width: 1.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Puntos disponibles',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w500,
                      color: Colores.textoSecundario,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    '5',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colores.dorado, // El número resaltado en dorado
                    ),
                  ),
                ],
              ),

              // Columna derecha: Puntos utilizados
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'Puntos utilizados',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w500,
                      color: Colores.textoSecundario,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    '5',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colores.textoPrincipal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const FilaAtributo2(
          nombre: 'Destreza',
          textoValor: '+4 puntos asignados',
          seleccionado: true,
          descripcion: 'Conocimiento y poder mágico',
          valor: '12',
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 14.0),
          child: Divider(color: Colores.borde, thickness: 0.5, height: 1.0),
        ),
        const FilaAtributo2(
          nombre: 'Fuerza',
          textoValor: '+2 Puntos asignados',
          seleccionado: false,
          descripcion: 'Percepción e intuición',
          valor: '10',
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 14.0),
          child: Divider(color: Colores.borde, thickness: 0.5, height: 1.0),
        ),
        const FilaAtributo2(
          nombre: 'Resistencia',
          textoValor: 'Valor base',
          seleccionado: false,
          descripcion: 'Presencia y persuasión',
          valor: '8',
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 14.0),
          child: Divider(color: Colores.borde, thickness: 0.5, height: 1.0),
        ),
        const FilaAtributo2(
          nombre: 'Velocidad',
          textoValor: 'Valor base',
          seleccionado: false,
          descripcion: 'Presencia y persuasión',
          valor: '8',
        ),
      ],
    );
  }
}
