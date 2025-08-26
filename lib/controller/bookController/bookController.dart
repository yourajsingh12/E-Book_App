import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class BookController extends GetxController{

  TextEditingController title=TextEditingController();
  TextEditingController des=TextEditingController();
  TextEditingController auth=TextEditingController();
  TextEditingController aboutAuth=TextEditingController();
  TextEditingController pages=TextEditingController();
  TextEditingController audioLen=TextEditingController();
  TextEditingController language=TextEditingController();
  TextEditingController price=TextEditingController();

  final storage = FirebaseStorage.instance;
  final db= FirebaseStorage.instance;
  RxString imageUrl="".obs;


  ImagePicker imagePicker=ImagePicker();
  Rxn<File> coverImage = Rxn<File>();

  Future<void> pickImage() async {
    final XFile? pickedFile =
    await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      coverImage.value = File(pickedFile.path);
    }
  }

  Future<void> uploadImageToFirebase(File image) async {
    try {
      final uuid = Uuid();
      final filename = uuid.v1();
      final storageRef = storage.ref().child("Images/$filename.jpg"); // ✅ Folder + extension

      // Upload the file
      final uploadTask = await storageRef.putFile(image);

      // ✅ Only get URL after successful upload
      if (uploadTask.state == TaskState.success) {
        final downloadURL = await storageRef.getDownloadURL();
        imageUrl.value = downloadURL;
        print("✅ Upload successful: $downloadURL");
      } else {
        print("❌ Upload failed: ${uploadTask.state}");
      }
    } catch (e) {
      print("🔥 Upload Error: $e");
    }
  }

}