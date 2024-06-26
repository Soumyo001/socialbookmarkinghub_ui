import 'package:flutter/material.dart';

class OverlappingWidget extends StatelessWidget {
  final String image1, image2, image3;
  const OverlappingWidget({
    super.key,
    required this.image1,
    required this.image2,
    required this.image3,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      height: 20,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage(image1),
            ),
          ),
          Positioned(
            left: 15,
            child: CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage(image2),
            ),
          ),
          Positioned(
            left: 30,
            child: CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage(image3),
            ),
          ),
        ],
      ),
    );
  }
}
