import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/decorators/screens/ar_customize.dart';
import 'package:flutter/material.dart';

class ArHelpCustom extends StatefulWidget {
  const ArHelpCustom({super.key});


  @override
  State<ArHelpCustom> createState() => _ArHelpCustomState();
}

class _ArHelpCustomState extends State<ArHelpCustom> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomButton(text: 'Customize 3D', onTap: navigateToAiPage),
    );
  }
  
  navigateToAiPage() {
    Navigator.pushNamed(context, ArCustomScreen.routeName,);
  }
}