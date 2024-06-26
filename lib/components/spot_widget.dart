import 'package:flutter/material.dart';

class SpotWidget extends StatelessWidget {
  final String title, subTitle, date;
  final String imagePath;
  const SpotWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.date,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 180),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    subTitle,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            SizedBox(
              height: 105,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    imagePath,
                    width: 25,
                    height: 25,
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
