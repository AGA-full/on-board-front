import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboard/data/onbording.dart';

import 'onboarding_card.dart';

class OnboardingsCarousel extends StatelessWidget {
  final OnboardingBlock onboardingBlock;

  const OnboardingsCarousel({super.key, required this.onboardingBlock});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            onboardingBlock.title,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: onboardingBlock.onboardings.length,
              itemBuilder: (context, idx) =>
                  OnboardingCard(onboarding: onboardingBlock.onboardings[idx]),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
            ),
          )
        ],
      );
}
