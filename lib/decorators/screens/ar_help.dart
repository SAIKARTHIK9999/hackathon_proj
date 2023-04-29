import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/decorators/screens/ar_screen.dart';
import 'package:flutter/material.dart';

class ArHelp extends StatefulWidget {
  const ArHelp({super.key});


  @override
  State<ArHelp> createState() => _ArHelpState();
}

class _ArHelpState extends State<ArHelp> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomButton(text: 'Buy Products', onTap: navigateToAiPage),
    );
  }
  
  navigateToAiPage() {
    Navigator.pushNamed(context, ArScreen.routeName,);
  }
}