import 'package:flutter/material.dart';

import '../constants/global_variables.dart';
class Testing extends StatefulWidget {
  const Testing({super.key});
  static const String routeName = '/test';

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: const Text(
            'Testing',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
    
  }
}