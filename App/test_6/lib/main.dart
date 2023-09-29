import 'package:flutter/material.dart';
import 'package:test_6/model/splash_page_model.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final PageController pageViewController = PageController(initialPage: 0);
  int currentPageIndex = 0;

  void onPageChanged(int currentPageIndex) {
    setState(() {
      this.currentPageIndex = currentPageIndex;
    });
  }

  void onIndicatorClick(int indicatorIndexClick) {
    pageViewController.animateToPage(
      indicatorIndexClick,
      duration: Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: body(),
      ),
    );
  }

  Widget body() => Stack(
        children: [
          PageView.builder(
            controller: pageViewController,
            onPageChanged: onPageChanged,
            itemCount: splashPages.length,
            itemBuilder: (context, index) => SplashScreen(splashPages[index]),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
                child: PageViewIndicators(
              pageViewIndex: currentPageIndex,
              onIndicatorClick: onIndicatorClick,
            )),
          ),
        ],
      );
}

class SplashScreen extends StatelessWidget {
  final SplashPageModel splashPageModel;
  const SplashScreen(this.splashPageModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: splashPageModel.backgroundColor,
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              splashPageModel.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              splashPageModel.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class PageViewIndicators extends StatelessWidget {
  final int pageViewIndex;
  final void Function(int index) onIndicatorClick;
  const PageViewIndicators({
    required this.pageViewIndex,
    required this.onIndicatorClick,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          splashPages.length,
          (index) => GestureDetector(
                onTap: () => onIndicatorClick(index),
                child: Container(
                  width: 10,
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color:
                        pageViewIndex == index ? Colors.white : Colors.white30,
                    shape: BoxShape.circle,
                  ),
                ),
              )),
    );
  }
}
