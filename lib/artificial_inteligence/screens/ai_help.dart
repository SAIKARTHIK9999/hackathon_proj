import 'package:amazon_clone/artificial_inteligence/screens/ai_screen.dart';
import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AiHelp extends StatefulWidget {
  const AiHelp({super.key});


  @override
  State<AiHelp> createState() => _AiHelpState();
}

class _AiHelpState extends State<AiHelp> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomButton(text: 'Ask AI', onTap: navigateToAiPage),
    );
  }
  
  void navigateToAiPage() {
    Navigator.pushNamed(context, AiScreen.routeName,);
  }
}