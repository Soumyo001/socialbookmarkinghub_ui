import 'package:flutter/material.dart';
import 'package:socialbookmarkinghub/components/interaction.dart';
import 'package:socialbookmarkinghub/components/overlapping_widget.dart';

class SuggestionsWidget extends StatelessWidget {
  final String suggestionsTitle, numberOfSuggestions, suggestionSubTitle;
  final String commentText, viewText;
  final String image1Path, image2Path, image3Path;
  final Color suggestionBackgroundColor;
  final List<Widget>? spotWidgets;
  const SuggestionsWidget({
    super.key,
    required this.suggestionsTitle,
    required this.numberOfSuggestions,
    required this.suggestionSubTitle,
    required this.suggestionBackgroundColor,
    this.spotWidgets,
    required this.commentText,
    required this.viewText,
    required this.image1Path,
    required this.image2Path,
    required this.image3Path,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0, right: 15.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 16,
              left: 16,
              right: 8,
            ),
            decoration: BoxDecoration(
              color: suggestionBackgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          suggestionsTitle,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        numberOfSuggestions,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(suggestionSubTitle),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: spotWidgets ?? [const SizedBox.shrink()],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Interaction(
                        commentIcon: Icons.messenger_outline_rounded,
                        viewIcon: Icons.remove_red_eye_outlined,
                        commentText: commentText,
                        viewText: viewText,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.person_add,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                OverlappingWidget(
                                  image1: image1Path,
                                  image2: image2Path,
                                  image3: image3Path,
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(Icons.more_vert),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
