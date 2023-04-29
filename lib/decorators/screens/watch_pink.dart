import 'package:flutter/material.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';

import '../../constants/global_variables.dart';
class PinkWatch extends StatefulWidget {
  const PinkWatch({super.key});
  static const String routeName = '/ar-custom-pink';

  @override
  State<PinkWatch> createState() => _PinkWatchState();
}

class _PinkWatchState extends State<PinkWatch> {
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
              'Next Color',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
        ),
      ),
      body: BabylonJSViewer(
          src: 'assets/pink_watch.glb',
      ),
    );
  }
}