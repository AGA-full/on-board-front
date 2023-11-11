import 'dart:core';

import 'package:onboard/data/worker.dart';

enum OnboardingListType { BASIC, HR, HEAD, INSTRUCTOR }

class Onboarding {
  final String id;
  final String title;
  final List<OnboardingTag> tags;
  final Recommender? recommender;
  final Worker? instructor;
  final DateTime? deadline;

  Onboarding(
      {required this.id,
      required this.title,
      required this.tags,
      this.recommender,
      this.instructor,
      this.deadline});
}

class OnboardingBlock {
  final String title;
  final List<Onboarding> onboardings;

  OnboardingBlock({required this.title, required this.onboardings});
}

class OnboardingTag {
  final int id;
  final String title;
  final int color;

  OnboardingTag({required this.id, required this.title, required this.color});
}

enum RecommenderType {
  HEAD, HR, SYSTEM, OWN
}
