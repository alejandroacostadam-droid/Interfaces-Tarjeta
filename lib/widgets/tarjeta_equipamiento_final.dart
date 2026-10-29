import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../design/colores.dart';

class TarjetaEquipamientoFinal extends StatefulWidget {
  final String objeto;

  const TarjetaEquipamientoFinal({super.key, required this.objeto});

  @override
  State<TarjetaEquipamientoFinal> createState() => _TarjetaEquipamientoFinalState();
}

class _TarjetaEquipamientoFinalState extends State<TarjetaEquipamientoFinal> {
  Map<String, dynamic>? _objeto;

  @override
  void initState() {
    super.initState();
    _cargarObjeto();
  }

  Future<void> _cargarObjeto() async {
    final String texto = await rootBundle.loadString('assets/data/objetos.json');
    List<dynamic> objetos = jsonDecode(texto);
    for (var objeto in objetos) {
      if (objeto['id'] == widget.objeto) {
        setState(() {
          _objeto = objeto;
        });
      }
    }
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
                  color: _objeto == null ? Colores.borde : Colores.superficieSeleccionada,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  _objeto == null ? 'No seleccionado' : 'Seleccionado',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                    color: _objeto == null ? Colores.textoSecundario : Colores.dorado,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          _objeto == null
              ? const Text(
                  'Aún no has elegido el equipamiento inicial. Puedes completar esta sección antes de confirmar tu personaje.',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Colores.textoSecundario,
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _objeto!['nombre'],
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Colores.textoPrincipal,
                      ),
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      _objeto!['tipo'],
                      style: const TextStyle(
                        fontSize: 11.0,
                        fontWeight: FontWeight.w500,
                        color: Colores.dorado,
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    Text(
                      _objeto!['descripcion'],
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colores.textoSecundario,
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
