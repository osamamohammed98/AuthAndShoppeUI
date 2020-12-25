import 'package:flutter/material.dart';
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';
import 'package:shopping_ui_app/ui/widget/page_view_item.dart';
class PageViewer extends StatefulWidget {
  @override
  _PageViewerState createState() => _PageViewerState();
}

class _PageViewerState extends State<PageViewer> {
  List<Widget> screens = [
    OnBoardingModel(
      img: 'assets/images/splash_one.png',
    ),
    OnBoardingModel(
      img: "assets/images/splash_two.png",
    ),
    OnBoardingModel(
      img: "assets/images/splash_three.png",
    ),
  ];
  PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.90,
      height: size.height * 0.450,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: screens.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(28.0),
                child: screens[index],
              );
            },
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          Positioned(
            bottom: 0,
            child: PageViewIndicator(
              length: screens.length,
              currentIndex: currentIndex,
              currentItemColor: Color(0xff131313),
              currentItemWidth: 35,
              currentItemHeight: 15,
              otherItemWidth: 15,
              otherItemHeight: 15,
            ),
          ),
        ],
      ),
    );

    /**/
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
