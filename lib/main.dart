import 'package:flutter/material.dart';
import 'package:lesson_number_two/models/girls_list.dart';
import 'package:lesson_number_two/screens/expanded_screen.dart';
import 'package:lesson_number_two/screens/my_purchases_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Girls> girls = <Girls>[
    Girls("Alena", "23", "1"),
    Girls("Katya", "18", "4"),
    Girls("Sveta", "21", "5"),
    Girls("Margarita", "23", "3"),
    Girls("Rita", "23", "2"),
    Girls("Yuliya", "21", "3"),
    Girls("Masha", "23", "2"),
    Girls("Alesya", "23", "1"),
    Girls("Nastya", "21", "1"),
    Girls("Lera", "23", "2"),
    Girls("Karolina", "22", "5"),
    Girls("Alina", "21", "2"),
    Girls("Liza", "21", "3"),
    Girls("Vika", "21", "3"),
    Girls("Veronika", "23", "2"),
    Girls("Nicole", "19", "1"),
    Girls("Dasha", "21", "4"),
    Girls("Natasha", "21", "1"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const MyPurchasesScreen()),
            ),
          ),
        ],
        title: const Text("Lesson Number two"),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ExpandedExampleScreen()),
              ),
              child: const Text('Move to another Page'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.green,
            ),
            child: ListView.builder(
              itemCount: girls.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: Text(
                    girls[index].age,
                  ),
                  subtitle: Text(
                    girls[index].name,
                  ),
                  trailing: Text(
                    girls[index].boobs,
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
