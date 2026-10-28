import 'package:flutter/material.dart';
import '../design/colores.dart';

class TarjetaAtributosMentales extends StatelessWidget {
  const TarjetaAtributosMentales({super.key});

  Widget _filaAtributo(String nombre, String descripcion, String valor) {
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
                descripcion,
                style: const TextStyle(
                  fontSize: 11.0,
                  fontWeight: FontWeight.w400,
                  color: Colores.textoSecundario,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          decoration: BoxDecoration(
            color: Colores.superficieSeleccionada,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            valor,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w700,
              color: Colores.dorado,
            ),
          ),
        ),
      ],
    );
  }

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
                'Atributos mentales',
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
                  'Por revisar',
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
            'Estos atributos funcionan por puntos, igual que los físicos. Revisa cada valor antes de confirmar tu personaje.',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colores.textoSecundario,
            ),
          ),
          const SizedBox(height: 14.0),
          _filaAtributo('Inteligencia', 'Magia, control y capacidad mental.', '+1'),
          const SizedBox(height: 12.0),
          _filaAtributo('Sabiduría', 'Percepción, intuición y resistencia mental.', '+5'),
          const SizedBox(height: 12.0),
          _filaAtributo('Carisma', 'Persuasión, liderazgo y presencia social.', '+0'),
        ],
      ),
    );
  }
}
