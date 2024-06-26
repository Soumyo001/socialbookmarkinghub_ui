import 'package:flutter/material.dart';

class Interaction extends StatelessWidget {
  final IconData commentIcon, viewIcon;
  final String commentText, viewText;
  const Interaction({
    super.key,
    required this.commentIcon,
    required this.viewIcon,
    required this.commentText,
    required this.viewText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          commentIcon,
          size: 22,
          color: Colors.black,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(commentText),
        const SizedBox(
          width: 15,
        ),
        Icon(
          viewIcon,
          size: 22,
          color: Colors.black,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(viewText),
      ],
    );
  }
}
