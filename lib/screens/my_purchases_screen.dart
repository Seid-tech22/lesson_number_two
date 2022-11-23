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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.orange,
            ),
            child: ListView.builder(
              itemCount: animal.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: Text(
                    animal[index].weight,
                  ),
                  subtitle: Text(
                    animal[index].name,
                  ),
                  trailing: Text(
                    animal[index].color,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
