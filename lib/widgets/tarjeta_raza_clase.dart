import 'package:flutter/material.dart';

import '../design/tipografia.dart';
import '../design/colores.dart';

class TarjetaRazaClase extends StatelessWidget {
  final Map<String, dynamic> personaje;

  const TarjetaRazaClase({super.key, required this.personaje});

  // Mismos iconos que en la sección de razas
  IconData _iconoRaza(String raza) {
    switch (raza.toLowerCase()) {
      case 'humano':
        return Icons.person_outline;
      case 'elfo':
        return Icons.eco_outlined;
      case 'enano':
        return Icons.hardware_outlined;
      case 'orco':
        return Icons.fitness_center;
      default:
        return Icons.help_outline;
    }
  }

  @override
  Widget build(BuildContext context) {
    final String raza =
        personaje['raza'] == '' ? 'Sin raza' : personaje['raza'];
    final String clase =
        personaje['clase'] == '' ? 'Sin clase' : personaje['clase'];

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
          Text('Raza y clase', style: Tipografia.tituloTarjeta),
          const SizedBox(height: 12.0),
          _Fila(icono: _iconoRaza(raza), titulo: 'Raza', valor: raza),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Divider(color: Colores.borde, thickness: 1.0, height: 1.0),
          ),
          // Cambia el icono cuando sepas las clases de la pantalla 2
          _Fila(icono: Icons.shield_outlined, titulo: 'Clase', valor: clase),
        ],
      ),
    );
  }
}

/// Círculo dorado con icono + título + valor
class _Fila extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final String valor;

  const _Fila({required this.icono, required this.titulo, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36.0,
          height: 36.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colores.dorado,
          ),
          child: Icon(icono, size: 20.0, color: Colores.check),
        ),
        const SizedBox(width: 12.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titulo, style: Tipografia.tituloTarjeta),
            const SizedBox(height: 2.0),
            Text(valor, style: Tipografia.descripcionTarjeta),
          ],
        ),
      ],
    );
  }
}
