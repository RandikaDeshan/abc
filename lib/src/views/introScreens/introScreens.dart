import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/views/auth/signin/signinpage.dart';
import 'package:moon_nest/src/views/auth/signup/presignup.dart';
import 'package:moon_nest/src/views/auth/signup/termspage.dart';
import 'package:moon_nest/src/views/introScreens/content_model.dart';
import 'package:moon_nest/src/views/onBordingPages/question.dart';

class Introscreens extends StatefulWidget {
  const Introscreens({super.key});

  @override
  State<Introscreens> createState() => _IntroscreensState();
}

class _IntroscreensState extends State<Introscreens> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.5.w,
                          right: 20.5.w,
                          top: 24.h,
                        ),
                        child: AnimatedSwitcher(
                          duration: const Duration(
                            milliseconds: 300,
                          ), // Duration of the animation
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            // Fade animation for smooth transition
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                          child: SizedBox(
                            key: ValueKey<int>(
                                i), // Key to trigger animation when 'i' changes
                            width: 334.w, // Responsive width
                            height: 458.h, // Responsive height
                            child: Image.asset(
                              contents[i].image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 28.h, // Use ScreenUtil for responsive spacing
                      ),
                      Column(
                        children: [
                          Center(
                            child: Text(
                              contents[i].title,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                                fontSize: 18.sp, // Use ScreenUtil for font size
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 88.5.w,
                                vertical:
                                    3.h // Use ScreenUtil for responsive padding
                                ),
                            child: Container(
                              width: 198.w, // Responsive width
                              height: 56.h, // Responsive height
                              alignment: Alignment
                                  .center, // Center-align the text within the container
                              child: Text(
                                contents[i].discription,
                                style: TextStyle(
                                  fontSize: 14.sp, // Responsive font size
                                  fontWeight: FontWeight.w400,
                                  height: 1.4, // Adjust line height as needed
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 3.h, bottom: 28.h), // Responsive padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(context, index),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.h), // Add bottom padding
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                  horizontal: 20.5.w, // Responsive margin
                ),
                height: 60.h, // Responsive height
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF1DAC92), Color(0xFF228E8E)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius:
                      BorderRadius.circular(8.r), // Responsive border radius
                ),
                child: ElevatedButton(
                  onPressed: () {
                    if (currentIndex < contents.length - 1) {
                      // Check to ensure we are not on the last page
                      _controller.nextPage(
                        duration: const Duration(
                            milliseconds:
                                300), // Adjust duration for smoothness
                        curve: Curves.easeInOut, // Adjust curve for animation
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TermsPage(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .transparent, // Make the button background transparent
                    shadowColor: Colors.transparent, // Remove any shadow
                  ),
                  child: Text(
                    currentIndex == contents.length - 1
                        ? 'Let\'s begin'
                        : 'Next',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white, // Responsive text size
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 24.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return const SignInPage();
                  },));
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 15.sp, // Responsive text size
                    fontWeight: FontWeight.w700,
                    height:
                        21 / 15, // Adjust as needed for responsive line height
                    letterSpacing: 0.2,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(BuildContext context, int index) {
    return Container(
      height: 9.h, // Responsive height
      width: currentIndex == index ? 25.w : 10.w, // Responsive width
      margin: EdgeInsets.only(right: 5.w), // Responsive margin
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r), // Responsive border radius
        gradient: currentIndex == index
            ? const LinearGradient(
                colors: [
                  Color(0xFF1DAC92), // Start color
                  Color(0xFF1DAC92), // Intermediate color
                  Color(0xFF228E8E), // End color
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            : const LinearGradient(colors: [
                Color(0xFF1DAC92),
                Color(0xf1DAC92),
              ]),
      ),
    );
  }
}
