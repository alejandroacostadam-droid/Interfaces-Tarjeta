import 'package:flutter/material.dart';
import '../design/colores.dart';

class FilaAtributo extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final int valor;
  final VoidCallback onIncrementar;
  final VoidCallback onDecrementar;

  const FilaAtributo({
    super.key,
    required this.nombre,
    required this.descripcion,
    required this.valor,
    required this.onIncrementar,
    required this.onDecrementar,
  });

  @override
  Widget build(BuildContext context) {
    final bool esBase = valor == 5;
    final int puntosExtra = valor - 5;
    final String textoBadge = esBase
        ? 'Valor base'
        : (puntosExtra == 1 ? '+1 punto asignado' : '+$puntosExtra puntos asignados');
    final Color colorBadge = esBase ? Colores.textoSecundario : Colores.dorado;

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nombre,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Colores.textoPrincipal,
                ),
              ),
              const SizedBox(height: 2.0),
              Text(
                textoBadge,
                style: TextStyle(
                  fontSize: 11.0,
                  fontWeight: esBase ? FontWeight.w400 : FontWeight.w500,
                  color: colorBadge,
                ),
              ),
              const SizedBox(height: 3.0),
              Text(
                descripcion,
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colores.textoSecundario,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: esBase ? null : onDecrementar,
              child: Container(
                width: 36.0,
                height: 36.0,
                decoration: BoxDecoration(
                  color: Colores.superficie,
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                    color: esBase ? Colores.borde.withValues(alpha: 0.4) : Colores.borde,
                    width: 1.0,
                  ),
                ),
                child: Icon(
                  Icons.remove,
                  size: 16.0,
                  color: esBase ? Colores.inactivo.withValues(alpha: 0.3) : Colores.textoPrincipal,
                ),
              ),
            ),
            Container(
              width: 38.0,
              alignment: Alignment.center,
              child: Text(
                '$valor',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  color: Colores.textoPrincipal,
                ),
              ),
            ),
            GestureDetector(
              onTap: onIncrementar,
              child: Container(
                width: 36.0,
                height: 36.0,
                decoration: BoxDecoration(
                  color: Colores.superficie,
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                    color: Colores.borde,
                    width: 1.0,
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  size: 16.0,
                  color: Colores.dorado,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
