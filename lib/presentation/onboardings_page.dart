import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboard/data/onbording.dart';
import 'package:onboard/domain/app_state.dart';
import 'package:onboard/presentation/widgets/add_onboarding_button.dart';
import 'package:onboard/presentation/widgets/create_onboarding_button.dart';
import 'package:onboard/presentation/widgets/onboarding_visibility_type_checkbox.dart';
import 'package:onboard/presentation/widgets/onboardings_list.dart';

class OnboardingsPage extends StatelessWidget {
  const OnboardingsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xFFF3F3F3),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            AppState.companyName,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          actions: const [
            OnboardingVisibilityTypeCheckbox(id: 0),
            OnboardingVisibilityTypeCheckbox(id: 1),
            OnboardingVisibilityTypeCheckbox(id: 2),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            (AppState.isHr || AppState.isHead)
                ? AddOnboardingButton()
                : Container(),
            const SizedBox(
              height: 20,
            ),
            AppState.isHr
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ваши сотрудники',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 10,),
                        const OnboardingsList(type: OnboardingListType.HR)
                      ],
                    ),
                  )
                : const SizedBox(
                    height: 0,
                  ),
            AppState.isHead ? const Column(
              children: [
                Text('Ваши подчинённые'),
                OnboardingsList(type: OnboardingListType.HEAD)
              ],
            ) : Container(),
            AppState.isInstructor ? const Column(
              children: [
                CreateOnboardingButton(),
                Text('Вы управляете онбордингами'),
                OnboardingsList(type: OnboardingListType.INSTRUCTOR)
              ],
            ) : Container(),
            !AppState.isInstructor & !AppState.isHr & !AppState.isHead
                ?
            const OnboardingsList(type: OnboardingListType.BASIC)
                : Container(),
          ],
        ),
      );
}
