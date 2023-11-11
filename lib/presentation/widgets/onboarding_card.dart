import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard/data/onbording.dart';
import 'package:onboard/presentation/widgets/tag_chips.dart';

class OnboardingCard extends StatelessWidget {
  final Onboarding onboarding;

  const OnboardingCard({super.key, required this.onboarding});

  @override
  Widget build(BuildContext context) => Container(
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
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            TagChips(tag: onboarding.tags[0]),
          ],
        ),
      );
}
