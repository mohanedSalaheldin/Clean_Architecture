import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(Icons.warning_amber_outlined),
        Text('Something Went Wrong'),
        Text('Please Try Again'),
      
      ],
    );
  }
}
