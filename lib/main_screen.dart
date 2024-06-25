import 'package:flutter/material.dart';
import 'package:numbersapp/features/number_repository.dart';
import 'package:numbersapp/number_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final NumberRepository numberRepository = NumberRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NumberScreen(numberRepository: numberRepository);
                }));
              },
              child: const Text("Zum Number Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
