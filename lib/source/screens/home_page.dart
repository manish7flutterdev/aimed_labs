import 'package:aimed_labs/source/widgets/card1.dart';
import 'package:aimed_labs/source/widgets/card2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Card1(),
            SizedBox(
              height: 25,
            ),
            Card2()
          ],
        ),
      ),
    );
  }
}
