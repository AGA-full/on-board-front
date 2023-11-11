import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddOnboardingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )),
            padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(30)),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
        child: Text(
          "Добавить онбординг",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      );
}
