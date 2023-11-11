import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboard/data/onbording.dart';
import 'package:onboard/presentation/onboardings_page.dart';
import 'package:onboard/presentation/widgets/tag_chips.dart';

import '../onboarding_page.dart';

class OnboardingCard extends StatelessWidget {
  final Onboarding onboarding;

  const OnboardingCard({super.key, required this.onboarding});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: ( ) => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => OnboardingPage(onboarding: onboarding,))
      ),
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: CupertinoColors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  onboarding.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TagChips(tag: onboarding.tags[0]),
              ],
            ),
          ),
    ),
  );
}
