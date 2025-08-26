import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:e_book/presentation/homePage/home.dart';
import 'package:e_book/presentation/homePage/widgets/shimerLoading.dart';
import 'package:e_book/components/bookCard.dart';

void main() {
  testWidgets('Home screen shows shimmer first and then BookCards after loading',
          (WidgetTester tester) async {
        // Step 1: Widget लोड करें
        await tester.pumpWidget(const MaterialApp(home: Home()));

        // Step 2: शुरू में shimmer loader दिखना चाहिए
        expect(find.byType(ShimmerBookCard), findsWidgets);

        // Step 3: Future.delayed() की वजह से हमें 3 सेकंड तक इंतज़ार करना होगा
        await tester.pump(const Duration(seconds: 3));

        // Step 4: अब shimmer हट जाना चाहिए और BookCard दिखना चाहिए
        expect(find.byType(ShimmerBookCard), findsNothing); // shimmer हट चुका है
        expect(find.byType(BookCard), findsWidgets); // real books दिख रही हैं
      });
}
