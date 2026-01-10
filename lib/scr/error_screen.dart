import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error page'),
      ),
      body: Center(
        child: Text('You in a Error Page '),
      ),
    );
  }
}
