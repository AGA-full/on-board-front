import 'package:flutter/cupertino.dart';

import '../../data/onbording.dart';
import '../../domain/app_state.dart';
import 'onboardings_carousel.dart';

class OnboardingsList extends StatelessWidget{
  final OnboardingListType type;
  const OnboardingsList({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final onboardings = AppState.getOnboardingsByType(type);
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: onboardings.length,
      itemBuilder: (context, idx) => OnboardingsCarousel(onboardingBlock: onboardings[idx]),
    );
  }

  
}