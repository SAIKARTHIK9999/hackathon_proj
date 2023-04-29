import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/decorators/screens/watch_pink.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';

import '../../constants/global_variables.dart';

class ArCustomScreen extends StatefulWidget {
  const ArCustomScreen({super.key});
  static const String routeName = '/ar-custom';

  @override
  State<ArCustomScreen> createState() => _ArCustomScreenState();
}

class _ArCustomScreenState extends State<ArCustomScreen> {
  late InAppWebViewController webView;
  double _progress = 0;
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
          title: GestureDetector(
            onTap: navigateToAiPage,
            child: const Text(
              'Next Color',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          
        ),
      ),
      
      body:  BabylonJSViewer(
          src: 'assets/watch.glb',
            ),
      

    );
  }
  navigateToAiPage() {
    Navigator.pushNamed(context, PinkWatch.routeName,);
  }
}