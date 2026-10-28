import 'package:flutter/material.dart';
import '../design/colores.dart';

class TarjetaEquipamientoFinal extends StatelessWidget {
  const TarjetaEquipamientoFinal({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Colores.superficie,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colores.borde,
          width: 1.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Equipamiento',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Colores.textoPrincipal,

                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Colores.borde,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Text(
                  'No seleccionado',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                    color: Colores.textoSecundario,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          const Text(
            'Aún no has elegido el equipamiento inicial. Puedes completar esta sección antes de confirmar tu personaje.',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colores.textoSecundario,
            ),
          ),
        ],
      ),
    );
  }
}
