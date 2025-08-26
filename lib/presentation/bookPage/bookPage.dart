import 'package:e_book/res/appColors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../controller/bookPdfController.dart';

class BookPage extends StatefulWidget {

  const BookPage({super.key});

  State<BookPage> createState() => _BookPage();
}
class _BookPage extends State<BookPage>{

  final bookController = Get.put(BookPdf());

  @override
  Widget build(BuildContext context){
    return
      Scaffold(
        appBar: AppBar(
          title: Text(
            "Read Book",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          backgroundColor: AppColors.primaryColor,
          // for back icon color
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            bookController.pdfViewerKey.currentState?.openBookmarkView();
          },
          child: Icon(
            Icons.bookmark,
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        body: SfPdfViewer.network(
          'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
          key: bookController.pdfViewerKey,
          controller: bookController.pdfController,
        ),
    );
  }

}