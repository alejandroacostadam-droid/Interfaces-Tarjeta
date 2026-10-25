import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../design/colores.dart';
import 'tarjeta_equipamiento.dart';

class SeccionEquipamiento extends StatefulWidget {
  final String? objetoInicial;
  final ValueChanged<String>? onObjetoSeleccionado;

  const SeccionEquipamiento({
    super.key,
    this.objetoInicial,
    this.onObjetoSeleccionado,
  });

  @override
  State<SeccionEquipamiento> createState() => _SeccionEquipamientoState();
}

class _SeccionEquipamientoState extends State<SeccionEquipamiento> {
  late String _objetoSeleccionado;
  List<dynamic> _objetos = [];

  @override
  void initState() {
    super.initState();
    _objetoSeleccionado = widget.objetoInicial ?? 'Bastón mágico';
    _cargarObjetos();
  }

  Future<void> _cargarObjetos() async {
    final String texto = await rootBundle.loadString('assets/data/objetos.json');
    setState(() {
      _objetos = jsonDecode(texto);
    });
  }

  IconData _iconoObjeto(String id) {
    switch (id) {
      case 'espada':
        return Icons.gavel;
      case 'arco':
        return Icons.near_me;
      case 'baston':
        return Icons.auto_awesome;
      case 'escudo':
        return Icons.shield_outlined;
      default:
        return Icons.help_outline;
    }
  }

  Widget _crearTarjeta(dynamic objeto) {
    return TarjetaEquipamiento(
      titulo: objeto['nombre'],
      categoria: objeto['tipo'],
      icono: _iconoObjeto(objeto['id']),
      seleccionado: _objetoSeleccionado == objeto['nombre'],
      onTap: () => _seleccionar(objeto['nombre']),
    );
  }

  @override
  void didUpdateWidget(covariant SeccionEquipamiento oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.objetoInicial != null && widget.objetoInicial != _objetoSeleccionado) {
      _objetoSeleccionado = widget.objetoInicial!;
    }
  }

  void _seleccionar(String objeto) {
    setState(() {
      _objetoSeleccionado = objeto;
    });
    widget.onObjetoSeleccionado?.call(objeto);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const Row(
              children: [
                Text(
                  '01',
                  style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                    color: Colores.dorado,
                  ),
                ),
                SizedBox(width: 8.0),
                Text(
                  'Tu equipamiento',
                  style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: Colores.textoPrincipal,
                  ),
                ),
              ],
            ),
            Text(
              '${_objetos.length} objetos',
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colores.textoSecundario,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        const Text(
          'Escoge un objeto inicial para tu aventura.',
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
            color: Colores.textoSecundario,
          ),
        ),
        const SizedBox(height: 14.0),
        for (int i = 0; i < _objetos.length; i += 2)
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Row(
              children: [
                Expanded(child: _crearTarjeta(_objetos[i])),
                const SizedBox(width: 12.0),
                Expanded(
                  child: i + 1 < _objetos.length
                      ? _crearTarjeta(_objetos[i + 1])
                      : const SizedBox(),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
