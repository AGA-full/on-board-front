import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboard/data/onbording.dart';
import 'package:onboard/presentation/widgets/onboarding_visibility_type_checkbox.dart';
import 'package:onboard/presentation/widgets/tag_chips.dart';

class OnboardingPage extends StatelessWidget{
  final Onboarding onboarding;

  const OnboardingPage({super.key, required this.onboarding});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Color(0xFFF3F3F3),
    appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text(
        onboarding.title,
        style: Theme.of(context).textTheme.displayLarge,
      ),
      actions: [
        TagChips(tag: onboarding.tags[0]),
      ],
    ),
    body: Column(

    ),
  );
}