import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpandedExampleScreen extends StatefulWidget {
  const ExpandedExampleScreen({Key? key}) : super(key: key);

  @override
  State<ExpandedExampleScreen> createState() => _ExpandedExampleScreenState();
}

class _ExpandedExampleScreenState extends State<ExpandedExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
