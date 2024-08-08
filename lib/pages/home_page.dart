import 'package:flutter/material.dart';
import 'package:socialapp/components/my_drawer.dart';
import 'package:socialapp/components/my_post_button.dart';
import 'package:socialapp/components/my_textfield.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // text controller
  final TextEditingController newPostController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("W A L L"),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          // textfield box for user to type
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                // textfield
                Expanded(
                  child: MyTextfield(
                      hintText: "say something...",
                      obscureText: false,
                      controller: newPostController),
                ),

                // post button
                PostButton(
                  onTap: () {},
                )
              ],
            ),
          ),

          // Posts
        ],
      ),
    );
  }
}
