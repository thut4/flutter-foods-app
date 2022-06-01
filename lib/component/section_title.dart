import 'package:flutter/material.dart';
import 'package:my_app/screens/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: press,
            style: TextButton.styleFrom(primary: ActiveColor),
            child: const Text(
              "See all",
              style: TextStyle(fontSize: 21),
            )),
      ],
    );
  }
}