import 'package:flutter/material.dart';
import 'package:lesson_number_two/custom/custom_icons.dart';
import 'package:lesson_number_two/custom/custom_images.dart';

class ExpandedExampleScreen extends StatefulWidget {
  const ExpandedExampleScreen({Key? key}) : super(key: key);

  @override
  State<ExpandedExampleScreen> createState() => _ExpandedExampleScreenState();
}

class _ExpandedExampleScreenState extends State<ExpandedExampleScreen> {
  @override
  Widget build(BuildContext context) {
    bool changeTitleText = true;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                changeTitleText = false;
              });
            },
            child: Image.asset(CustomIcons.cameraIcon),
          ),
        ],
        title: changeTitleText
            ? const Text('Expanded example')
            : const Text('Seid pidor'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.red,
              child: Center(
                child: Image.asset(CustomImages.audiA6),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
