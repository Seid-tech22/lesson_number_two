import 'package:flutter/material.dart';
import 'package:lesson_number_two/models/animal_list.dart';

class MyPurchasesScreen extends StatefulWidget {
  const MyPurchasesScreen({super.key});

  @override
  State<MyPurchasesScreen> createState() => _MyPurchasesScreenState();
}

class _MyPurchasesScreenState extends State<MyPurchasesScreen> {
  List<dynamic> animal = <Animal>[
    Animal('Tiger', '220', 'Orange'),
    Animal('Lion', '180', 'Golden'),
    Animal('Cat', '8', 'Gray'),
    Animal('Dog', '20', 'White'),
    Animal('Elephant', '6000', 'Gray'),
    Animal('Monkey', '12', 'Brown'),
    Animal('Wolf', '90', 'Gray'),
    Animal('Bear', '400', 'Black'),
    Animal('Giraffe', '1200', 'Orange'),
    Animal('Shark', '700', 'Gray'),
    Animal('Ship', '150', 'White'),
    Animal('Pig', '90', 'Purple'),
    Animal('Fox', '20', 'Orange'),
    Animal('Snake', '10', 'Green'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Purchases'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: animal.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              elevation: 10,
              color: const Color.fromARGB(255, 75, 48, 233),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          animal[index].name,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          animal[index].weight,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          animal[index].color,
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
