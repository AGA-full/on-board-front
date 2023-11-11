import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboard/domain/app_state.dart';

class OnboardingVisibilityTypeCheckbox extends StatelessWidget {
  final int id;

  const OnboardingVisibilityTypeCheckbox({super.key, required this.id});

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Checkbox(
              value: AppState.getOnboardingVisibilityTypeValue(id),
              onChanged: (it) {
                AppState.setOnboardingVisibilityType(id, it);
              }),
          Text(AppState.getOnboardingVisibilityType(id) ?? "",
          style: Theme.of(context).textTheme.bodyMedium,),
        ],
      );
/*Container(
          width: ,
          child: CheckboxListTile(
            title: Text(
                AppState.getOnboardingVisibilityType(id) ?? ""
            ),
              value: AppState.getOnboardingVisibilityTypeValue(id), onChanged: (it) {
            AppState.setOnboardingVisibilityType(id, it);
          }),
        );
*/
}
