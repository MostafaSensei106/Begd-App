import 'package:flutter/material.dart';

class BegdApp extends StatelessWidget {
  //final AppRouter appRouter = AppRouter();
  const BegdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}