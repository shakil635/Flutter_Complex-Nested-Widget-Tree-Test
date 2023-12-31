// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_book_chap5_q301/main.dart';


 
void main() {
  testWidgets('Complex Nested Widget Tree Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MyWidget())); // Replace with your main app widget
 
    // Verify the existence of nested Rows and Columns
    expect(find.byType(Row), findsWidgets);
    expect(find.byType(Column), findsWidgets);
 
    // Test for specific widgets like Containers and Texts in the nested structure
    expect(find.byType(Container), findsWidgets);
    expect(find.byType(Text), findsWidgets);
 
    // Optional: Test for specific content, alignment, and layout properties
    // For example, verifying the alignment of text or the presence of specific text content
  });
}
