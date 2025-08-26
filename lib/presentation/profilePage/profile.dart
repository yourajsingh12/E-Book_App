import 'package:e_book/controller/auth/authController.dart';
import 'package:e_book/models/data.dart';
import 'package:e_book/presentation/addNewBook/addNewBook.dart';
import 'package:e_book/res/appColors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/bookCardTile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

    AuthController authController=Get.put(AuthController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.to(const AddNewBook());
        },
        child: const Icon(
          Icons.add,

        ),
      ),
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        elevation: 1,
        actions: [
          TextButton.icon(
            onPressed: () {
              // Call your logout function here
              // logoutUser();
              authController.signOut();
            },
            icon: const Icon(Icons.logout, color: Colors.white),
            label: const Text(
              "Logout",
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),


      body: Column(
        children: [
          // Static Top Info Section
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-icon/user_318-159711.jpg',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Yuvraj Singh",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text("yuvraj@example.com", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStat("Read", "12"),
                    _buildStat("Progress", "3"),
                    _buildStat("Favorites", "7"),
                  ],
                ),
                SizedBox(height: 30),
                _buildTile(title: "My Books", icon: Icons.bookmark, onTap: () {}),
              ],
            ),
          ),

          // Scrollable Book List Section
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: bookData.length,
              itemBuilder: (context, index) {
                final e = bookData[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: BookCardTile(
                    title: e.title,
                    bookUrl: e.bookUrl ?? '',
                    author: e.author,
                    numberOfRating: e.numberOfRating,
                    price: e.price,
                    rating: e.rating,
                    description: e.description ?? '',
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  static Widget _buildStat(String title, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(title, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }

  static Widget _buildTile({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
    Color iconColor = Colors.deepPurple,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: iconColor),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
