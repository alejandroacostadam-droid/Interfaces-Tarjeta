import 'package:flutter/material.dart';
import '../design/colores.dart';

class TarjetaPuntos extends StatelessWidget {
  const TarjetaPuntos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      decoration: BoxDecoration(
        color: Colores.superficie,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colores.borde,
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          const Text(
            '2',
            style: TextStyle(
              fontFamily: 'serif',
              fontSize: 34.0,
              fontWeight: FontWeight.w500,
              color: Colores.dorado,
            ),
          ),
          const SizedBox(width: 12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Puntos disponibles',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  color: Colores.textoPrincipal,
                ),
              ),
              SizedBox(height: 2.0),
              Text(
                '6 utilizados de 8',
                style: TextStyle(
                  fontSize: 11.0,
                  fontWeight: FontWeight.w400,
                  color: Colores.textoSecundario,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 3.5),
                width: 4.0,
                height: 18.0,
                decoration: BoxDecoration(
                  color: Colores.dorado,
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 3.5),
                width: 4.0,
                height: 18.0,
                decoration: BoxDecoration(
                  color: Colores.dorado,
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 3.5),
                width: 4.0,
                height: 18.0,
                decoration: BoxDecoration(
                  color: Colores.dorado,
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
