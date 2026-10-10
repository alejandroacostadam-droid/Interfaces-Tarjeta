import 'package:flutter/material.dart';
import '../design/colores.dart';

class TarjetaEquipamiento extends StatelessWidget {
  final String titulo;
  final String categoria;
  final IconData icono;
  final bool seleccionado;

  const TarjetaEquipamiento({
    super.key,
    required this.titulo,
    required this.categoria,
    required this.icono,
    required this.seleccionado,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: seleccionado ? Colores.superficieSeleccionada : Colores.superficie,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: seleccionado ? Colores.dorado : Colores.borde,
          width: seleccionado ? 1.2 : 1.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icono,
                size: 22.0,
                color: Colores.textoPrincipal,
              ),
              seleccionado
                  ? Container(
                      width: 18.0,
                      height: 18.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colores.dorado,
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 13.0,
                        color: Colores.check,
                      ),
                    )
                  : Container(
                      width: 18.0,
                      height: 18.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colores.inactivo,
                          width: 1.5,
                        ),
                      ),
                    ),
            ],
          ),
          const SizedBox(height: 12.0),
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              color: Colores.textoPrincipal,
            ),
          ),
          const SizedBox(height: 3.0),
          Text(
            categoria,
            style: const TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w400,
              color: Colores.textoSecundario,
            ),
          ),
        ],
      ),
    );
  }
}
