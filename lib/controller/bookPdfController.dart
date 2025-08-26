import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BookPdf extends GetxController {
  final PdfViewerController pdfController = PdfViewerController();
  final GlobalKey<SfPdfViewerState> pdfViewerKey = GlobalKey();

  @override
  void onInit() {
    super.onInit();
  }

  void jumpToPage(int page) {
    pdfController.jumpToPage(page);
  }

  void openBookmarks() {
    pdfViewerKey.currentState?.openBookmarkView();
  }

  void zoomTo(double level) {
    pdfController.zoomLevel = level;
  }
}
