import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard/data/onbording.dart';

class TagChips extends StatelessWidget {
  final OnboardingTag tag;

  const TagChips({super.key, required this.tag});

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            )),
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(tag.color))),
        child: Text(
          tag.title,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(tag.color).computeLuminance() > 0.5
                ? Colors.black
                : Colors.white,
          ),
        ),
      );
}
