import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../constants/global_variables.dart';

class AiScreen extends StatefulWidget {
  const AiScreen({super.key});
  static const String routeName = '/ai';

  @override
  State<AiScreen> createState() => _AiScreenState();
}

class _AiScreenState extends State<AiScreen> {
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
          title: const Text(
            'Ask AI',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Stack(
       children: [
        InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse("https://karthiks-ai.netlify.app/")),
          onWebViewCreated: (InAppWebViewController controller){
            webView = controller;
          },
          onLoadStart: (controller, url){

          },
          onProgressChanged: (InAppWebViewController controller, int progress){
            setState(() {
              _progress = progress / 100;
            });
          },
        ),
        _progress < 1 ? SizedBox(
          height: 3,
           child: LinearProgressIndicator(
            value: _progress,
            backgroundColor: Colors.orange.withOpacity(0.2),
        ),) : const SizedBox()
       ],
        ),

    );
  }
}