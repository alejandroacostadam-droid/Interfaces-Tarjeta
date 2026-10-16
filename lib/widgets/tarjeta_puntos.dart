import 'package:flutter/material.dart';
import '../design/colores.dart';

class TarjetaPuntos extends StatelessWidget {
  final int puntosDisponibles;
  final int puntosUsados;

  const TarjetaPuntos({
    super.key,
    required this.puntosDisponibles,
    required this.puntosUsados,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      decoration: BoxDecoration(
        color: Colores.superficie,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colores.borde,
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Puntos disponibles',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colores.textoSecundario,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                '$puntosDisponibles',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  color: Colores.dorado,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Puntos utilizados',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colores.textoSecundario,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                '$puntosUsados',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  color: Colores.textoPrincipal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
