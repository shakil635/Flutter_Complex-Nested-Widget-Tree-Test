import 'package:flutter/material.dart';
import 'package:flutter_book_chap5_q301/user_profile_screen.dart';

/*
Practice Question 1: Complex Nested Widget Tree
Task Description:
Create a Flutter application that features a complex nested widget tree. 
The app should have a main screen with a deep nesting of widgets, 
including Rows, Columns, Containers, and Text. 
This screen should display a variety of information in a 
well-organized layout 
(e.g., a user profile screen with image, text details, and action buttons).
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text(
                
                  """In the tranquil embrace of pastoral landscapes,\nthe goat emerges as a captivating ambassador \nof resilience and charm,\ncaptivating hearts effortlessly.""",
                 textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.green,fontSize: 15, fontWeight: FontWeight.bold),
                ),
              SizedBox(
                  height: 100,
                  width: 100,
                child: Center(
                  child: Image.asset("assete/download.jpg", fit: BoxFit.fitHeight,),
                ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const UserProfile()));
                    },
                    child:const Text("Learn more")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
