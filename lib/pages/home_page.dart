import 'package:flutter/material.dart';
import 'package:socialbookmarkinghub/components/spot_widget.dart';
import 'package:socialbookmarkinghub/components/suggestions_widget.dart';
import 'package:socialbookmarkinghub/components/tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      floatingActionButton: Container(
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(26),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade700.withAlpha(100),
              blurRadius: 16,
              spreadRadius: 3,
              offset: const Offset(5, 5),
            ),
            BoxShadow(
              color: Colors.grey.shade700.withAlpha(100),
              blurRadius: 16,
              spreadRadius: 3,
              offset: const Offset(-5, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.file_copy_outlined,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,
              ),
              child: const Icon(
                Icons.stacked_bar_chart_sharp,
                color: Colors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.access_time,
                color: Colors.black,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 228, 255, 90),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade700.withAlpha(50),
                    blurRadius: 16,
                    spreadRadius: 3,
                    offset: const Offset(5, 5),
                  ),
                  BoxShadow(
                    color: Colors.grey.shade700.withAlpha(50),
                    blurRadius: 16,
                    spreadRadius: 3,
                    offset: const Offset(-5, 5),
                  ),
                ],
              ),
              child: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 17,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Find a card or stack',
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 19,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.search,
                                color: Colors.grey.shade400,
                                size: 27,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                        ),
                        child: const Icon(
                          Icons.density_small_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 18.0,
                      left: 14.0,
                    ),
                    child: SizedBox(
                      height: 63,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.antiAlias,
                        children: const [
                          MyTab(
                            text: 'All Stacks',
                            color: Color.fromARGB(255, 200, 255, 3),
                          ),
                          MyTab(
                            text: 'Private',
                            color: Colors.white,
                          ),
                          MyTab(
                            text: 'Shared With Someone',
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SuggestionsWidget(
                    suggestionsTitle: 'Top Spots in NYC',
                    numberOfSuggestions: '6',
                    suggestionSubTitle: 'Here are some top places in New York',
                    suggestionBackgroundColor:
                        Color.fromARGB(255, 230, 230, 244),
                    spotWidgets: [
                      SpotWidget(
                        title: 'Comedy Cellar - \nGoogle Maps',
                        subTitle:
                            'Be sure to register for securing the upcoming exciting event that will blow your mind',
                        date: 'Mar 8,2024',
                        imagePath: 'lib/assets/google.png',
                      ),
                      SpotWidget(
                        title: 'Rooftop Balcony -\nWilliamsbelson',
                        subTitle:
                            'if you\'re loose enough to go there then go there!',
                        date: 'Mar 2,2024',
                        imagePath: 'lib/assets/facebook.png',
                      ),
                    ],
                    commentText: '6',
                    viewText: '48',
                    image1Path: 'lib/assets/person1.jpg',
                    image2Path: 'lib/assets/person2.jpg',
                    image3Path: 'lib/assets/person3.jpg',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SuggestionsWidget(
                    suggestionsTitle: 'Vacation',
                    numberOfSuggestions: '8',
                    suggestionSubTitle: 'Bonnie and I stayed here in january',
                    suggestionBackgroundColor: Colors.grey.shade300,
                    commentText: '6',
                    viewText: '32',
                    image1Path: 'lib/assets/person1.jpg',
                    image2Path: 'lib/assets/person2.jpg',
                    image3Path: 'lib/assets/person3.jpg',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SuggestionsWidget(
                    suggestionsTitle: 'Weekend',
                    numberOfSuggestions: '3',
                    suggestionSubTitle: 'Check this for Mark\'s birthday',
                    suggestionBackgroundColor: Colors.grey.shade300,
                    commentText: '8',
                    viewText: '38',
                    image1Path: 'lib/assets/person1.jpg',
                    image2Path: 'lib/assets/person2.jpg',
                    image3Path: 'lib/assets/person3.jpg',
                  ),
                ],
              ),
              // Positioned(
              //   bottom: 0.0,
              //   left: 0.0,
              //   right: 0.0,
              //   child: Material(
              //     elevation: 100,
              //     child: BottomNavigationBar(
              //       selectedItemColor: Colors.amber[800],
              //       unselectedItemColor: Colors.grey,
              //       selectedFontSize: 14.0,
              //       unselectedFontSize: 14.0,
              //       items: const <BottomNavigationBarItem>[
              //         BottomNavigationBarItem(
              //           icon: Icon(Icons.hub),
              //           label: 'Home',
              //         ),
              //         BottomNavigationBarItem(
              //           icon: Icon(Icons.messenger),
              //           label: 'Messages',
              //         ),
              //         BottomNavigationBarItem(
              //           icon: Icon(Icons.account_box),
              //           label: 'Profile',
              //         ),
              //       ],
              //       currentIndex: 0,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
