import '../data/onbording.dart';

class AppState {
  static String? workerId = 'c402f453-a956-4d6f-b7da-db785f4aeb82';
  static bool isHead = false;
  static bool isHr = true;
  static bool isInstructor = false;

  static String companyId = 'f3268e4d-3f87-438d-96fd-fbe05d455611';
  static String companyName = 'OnBoard';

  static setOnboardingVisibilityType(int id, bool? visibility) => switch (id) {
        0 => isHr = visibility ?? false,
        1 => isHead = visibility ?? false,
        2 => isInstructor = visibility ?? false,
        _ => {},
      };

  static String? getOnboardingVisibilityType(int id) => switch (id) {
        0 => 'hr',
        1 => 'начальник',
        2 => 'инструктор',
        // TODO: Handle this case.
        _ => null,
      };

  static getOnboardingVisibilityTypeValue(int id) => switch (id) {
        0 => isHr,
        1 => isHead,
        2 => isInstructor,
        // TODO: Handle this case.
        _ => null,
      };

  static String? onboardingId = 'c402f453-a956-4d6f-b7da-db785f4aeb82';

  static List<OnboardingBlock> getOnboardingsByType(OnboardingListType type) =>
      switch (type) {
        OnboardingListType.HR => [OnboardingBlock(title: "Илья Шевченко", onboardings: [
          Onboarding(id: 'c402f453-a956-4d6f-b7da-db785f4aeb82', title: 'Onboarding', tags: [OnboardingTag(id: 1, title: 'OnBoard', color: 0xFFF9A7A1)])
        ])],
        OnboardingListType.HEAD => [],
        OnboardingListType.BASIC => [],
        OnboardingListType.INSTRUCTOR => [],
      };
}
