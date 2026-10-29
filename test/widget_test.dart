import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:personarpg/main.dart';
import 'package:personarpg/pantallas/pantalla_equipamiento.dart';

void main() {
  testWidgets('Carga inicial de PantallaEquipamiento smoke test', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(PantallaEquipamiento), findsOneWidget);
    expect(find.text('Bastón de fresno'), findsOneWidget);
    expect(find.text('Puntos disponibles'), findsOneWidget);
    expect(find.text('Puntos utilizados'), findsOneWidget);
    expect(find.text('8'), findsOneWidget); // 8 puntos disponibles
    expect(find.text('0'), findsOneWidget); // 0 puntos utilizados
    expect(
      find.text('5'),
      findsNWidgets(3),
    ); // Inteligencia, Sabiduría, Carisma todos a 5
    expect(find.text('Valor base'), findsNWidgets(3));
  });

  testWidgets(
    'Incrementar y decrementar atributos actualiza puntos disponibles y usados',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: PantallaEquipamiento()));

      final botonesAdd = find.byIcon(Icons.add);
      final botonesRemove = find.byIcon(Icons.remove);
      expect(botonesAdd, findsNWidgets(3));
      expect(botonesRemove, findsNWidgets(3));

      // Al inicio (valor 5), el botón menos no debe restar porque 5 es la base
      await tester.ensureVisible(botonesRemove.at(0));
      await tester.tap(botonesRemove.at(0));
      await tester.pumpAndSettle();
      expect(find.text('8'), findsOneWidget); // Siguen 8 disponibles

      // Pulsamos '+' en Inteligencia
      await tester.ensureVisible(botonesAdd.at(0));
      await tester.tap(botonesAdd.at(0));
      await tester.pumpAndSettle();

      // Inteligencia sube a 6, puntos disponibles bajan a 7, utilizados suben a 1
      expect(find.text('6'), findsOneWidget);
      expect(find.text('7'), findsOneWidget);
      expect(find.text('1'), findsOneWidget);
      expect(find.text('+1 punto asignado'), findsOneWidget);

      // Pulsamos '+' otra vez en Inteligencia
      await tester.tap(botonesAdd.at(0));
      await tester.pumpAndSettle();

      // Inteligencia sube a 7, puntos disponibles bajan a 6, utilizados suben a 2
      expect(find.text('7'), findsOneWidget);
      expect(find.text('6'), findsOneWidget);
      expect(find.text('2'), findsOneWidget);
      expect(find.text('+2 puntos asignados'), findsOneWidget);

      // Pulsamos '-' en Inteligencia
      await tester.tap(botonesRemove.at(0));
      await tester.pumpAndSettle();

      // Inteligencia vuelve a 6, puntos disponibles vuelven a 7, utilizados a 1
      expect(find.text('6'), findsOneWidget);
      expect(find.text('7'), findsOneWidget);
      expect(find.text('1'), findsOneWidget);
      expect(find.text('+1 punto asignado'), findsOneWidget);
    },
  );
}
