import 'dart:io';
import 'package:e_book/controller/bookController/bookController.dart';
import 'package:e_book/res/appColors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/InputBox.dart';
import '../../components/primaryButton.dart';

class AddNewBook extends StatefulWidget {
  const AddNewBook({super.key});

  @override
  State<AddNewBook> createState() => _AddNewBookState();
}

class _AddNewBookState extends State<AddNewBook> {
  final _formKey = GlobalKey<FormState>();
  final BookController bookController=Get.put(BookController());


  File? coverImage;

  // Future<void> _pickCoverImage() async {
  //   final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
  //   if (picked != null) {
  //     setState(() {
  //       coverImage = File(picked.path);
  //     });
  //   }
  // }

  // void _submitForm() {
  //   if (_formKey.currentState!.validate()) {
  //     // Collect the data and perform saving
  //     final bookData = {
  //       "title": titleController.text,
  //       "author": authorController.text,
  //       "description": descriptionController.text,
  //       "price": priceController.text,
  //       "pages": pageController.text,
  //       "coverImage": coverImage?.path,
  //     };
  //
  //     print("Book Data: $bookData");
  //
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text("Book added successfully")),
  //     );
  //
  //     // You can clear the fields or navigate
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Book"),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
                Obx(() => Center(
                  child: InkWell(
                    onTap: () async {
                      await bookController.pickImage();
                      if (bookController.coverImage.value != null) {
                        bookController.uploadImageToFirebase(bookController.coverImage.value!);
                      }
                    },
                    child: Container(
                      height: 180,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey),
                        image: bookController.coverImage.value != null
                            ? DecorationImage(
                          image: FileImage(bookController.coverImage.value!),
                          fit: BoxFit.cover,
                        )
                            : null,
                      ),
                      child: bookController.coverImage.value == null
                          ? const Center(
                        child: Icon(
                          Icons.add,
                          size: 30,
                        ),
                      )
                          : null,
                    ),
                  ),
                )),


              const  SizedBox(height: 16),
              CustomInputBox(controller: bookController.title, label: "Book Title"),
              const SizedBox(height: 12),
              CustomInputBox(controller: bookController.auth, label: "Author"),
              const SizedBox(height: 12),
              CustomInputBox(controller: bookController.price, label: "Price", keyboardType: TextInputType.number),
              const SizedBox(height: 12),
              CustomInputBox(controller: bookController.pages, label: "Pages", keyboardType: TextInputType.number),
              const SizedBox(height: 12),
              CustomInputBox(controller: bookController.price, label: "Price",keyboardType: TextInputType.number),
              const SizedBox(height: 12),
              CustomInputBox(controller: bookController.aboutAuth, label: "About Author"),
              const SizedBox(height: 12,),
              CustomInputBox(controller: bookController.language, label: "Language"),
              const SizedBox(height: 12),
              CustomInputBox(controller: bookController.audioLen, label: "Audio Length"),

              const SizedBox(height: 12),

              CustomInputBox(
                controller: bookController.des,
                label: "Description",
                maxLines: 4,
              ),
              const SizedBox(height: 24),
              PrimayButton(
                btnName: "Add Book",
                ontap: () {  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
