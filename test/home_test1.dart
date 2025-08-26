
import 'package:e_book/components/bookCard.dart';
import 'package:e_book/presentation/homePage/home.dart';
import 'package:e_book/presentation/homePage/widgets/shimerLoading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets("Test BookCard",
          (WidgetTester tester) async{
    await tester.pumpWidget(const MaterialApp(home: Home()));
    expect(find.byType(ShimmerBookCard), findsWidgets);

    await tester.pump(const Duration(seconds: 3));
    expect(find.byType(ShimmerBookCard), findsNothing);
    expect(find.byType(BookCard), findsWidgets);


  });
}