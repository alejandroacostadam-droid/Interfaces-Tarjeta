import 'package:flutter/material.dart';

import '../design/tipografia.dart';
import '../design/colores.dart';

class TarjetaResumen extends StatelessWidget {
  final Map<String, dynamic> personaje;

  const TarjetaResumen({super.key, required this.personaje});

  @override
  Widget build(BuildContext context) {
    // Si algún campo se quedó vacío, enseñamos un texto por defecto
    final String nombre = personaje['nombre'] == ''
        ? 'Sin nombre'
        : personaje['nombre'];
    final String biografia = personaje['biografia'] == ''
        ? 'Sin biografía.'
        : personaje['biografia'];

    // La imagen se busca por la raza: 'Elfo' -> assets/raza/elfo.png
    final String raza = personaje['raza'];
    final String imagen = 'assets/raza/${raza.toLowerCase()}.png';

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colores.superficie,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colores.borde, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Resumen del personaje', style: Tipografia.tituloTarjeta),
          const SizedBox(height: 12.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Imagen de la raza: zoom a la cabeza, como en el preview
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  width: 110.0,
                  height: 110.0,
                  color: Colores.dorado.withValues(alpha: 0.12),
                  child: Transform.scale(
                    scale: 1.8,
                    alignment: const Alignment(0, -1.2),
                    child: Image.asset(
                      imagen,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                      errorBuilder: (context, error, stackTrace) =>
                          const SizedBox(),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nombre,
                      style: Tipografia.tituloTarjeta.copyWith(fontSize: 16),
                    ),
                    const SizedBox(height: 6.0),
                    Text(biografia, style: Tipografia.textoLargo),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
