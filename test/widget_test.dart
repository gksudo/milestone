import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mnew/main.dart';


void main() {
  testWidgets('List update smoke test', (WidgetTester tester) async {
    final String _flutter = 'flutter';

    await ACTIVATE(tester);

    expect(find.text(_flutter), findsNothing);

    await ADD_ITEM_TO_LIST(tester, _flutter);

    expect(find.text(_flutter), findsOneWidget);
  });

  testWidgets('Item click smoke test', (WidgetTester tester) async {
    final String _music = 'Music';

    await ACTIVATE(tester);

    await OPEN_ITEM(tester, _music);

    expect(find.text(_music), findsOneWidget);
  });

  testWidgets('Item delete smoke test', (WidgetTester tester) async {
    final String _dancing = 'be a dancer';

    await ACTIVATE(tester);

    await ADD_ITEM_TO_LIST(tester, _dancing);

    expect(find.text(_dancing), findsOneWidget);

    await DELETE_ITEM(tester, _dancing);

    expect(find.text(_dancing), findsNothing);
  });
}


Future ADD_ITEM_TO_LIST(WidgetTester tester, String ITEM) async {
  await TAP(tester, Icons.add);
  await TYPE(tester, ITEM);
  await PRESS(tester, 'Add');
}

Future OPEN_ITEM(WidgetTester tester, String ITEM) async {
  await PRESS(tester, ITEM);
}

Future DELETE_ITEM(WidgetTester tester, String ITEM) async {
  await LONG_PRESS(tester, ITEM);
  await PRESS(tester, 'Yes');
}


Future ACTIVATE(WidgetTester tester) async {
  await tester.pumpWidget(Projected());
}

Future TAP(WidgetTester tester, IconData ICON) async {
  await tester.tap(find.byIcon(ICON));
  await tester.pump();
}

Future PRESS(WidgetTester tester, String BUTTON) async {
  await tester.tap(find.text(BUTTON));
  await tester.pump();
}

Future LONG_PRESS(WidgetTester tester, String BUTTON) async {
  await tester.longPress(find.text(BUTTON));
  await tester.pump();
}

Future TYPE(WidgetTester tester, String TEXT) async {
  await tester.enterText(find.byType(EditableText), TEXT);
  await tester.pump();
}
