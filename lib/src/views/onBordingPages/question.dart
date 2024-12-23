import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/views/onBordingPages/dataProcessingPage.dart';
import 'package:moon_nest/src/views/onBordingPages/questionPage_modeldart.dart';
import 'package:moon_nest/src/views/widgets/scrollBarRow.dart';
import 'package:moon_nest/src/views/widgets/songGrideView.dart';
import 'package:moon_nest/src/views/widgets/stepProgressQuestionPages.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<bool> pressAttention = [];
  late PageController _controller;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    if (questionConten.isNotEmpty && questionConten[0].buttonText != null) {
      initializePressAttention(questionConten[0].buttonText!.length);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void initializePressAttention(int buttonCount) {
    setState(() {
      pressAttention = List.generate(buttonCount, (index) => false);
    });
  }
  bool isPressAttentionValid(int index) {
    return pressAttention.isNotEmpty && index >= 0 && index < pressAttention.length;
  }

  void goToNextQuestion() {
    if (currentIndex < questionConten.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Dataprocessingpage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'My goals',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(37.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: StepProgresQuestion(
              currentStep: currentIndex.toDouble(),
              steps: questionConten.length.toDouble(),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: currentIndex == 4 ? 30.h : 94.h),
        child: Column(
          children: [
            Expanded(
              child: questionConten.isEmpty
                  ? Container()
                  : PageView.builder(
                      controller: _controller,
                      itemCount: questionConten.length,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                          if (index < questionConten.length &&
                              questionConten[index].buttonText != null) {
                            initializePressAttention(
                              questionConten[index].buttonText.length,
                            );
                          } else {
                            pressAttention = [];
                          }
                        });
                      },
                      itemBuilder: (context, index) {
                        final questionModel = questionConten[index];

                        return SizedBox(
                          width: 375.w,
                          height: 379.h,
                          child: Column(
                            children: [
                              Text(
                                questionModel.question,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.r,
                                  height: 1.18.h,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              if (index == 4)
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 36.h,
                                    left: 20.w,
                                    right: 20.w,
                                  ),
                                  child: Container(
                                    height: 428.h,
                                    width: 335.w,
                                    child: SongGrideView(),
                                  ),
                                ),
                              if (index == 3)
                                Padding(
                                  padding: EdgeInsets.only(top: 56.h),
                                  child: ScrollableRowWidget(
                                    onItemSelected: (index) {
                                      print('Selected index: $index');
                                    },
                                    initialSelectedIndex: 0,
                                  ),
                                ),
                              if (questionModel.buttonText != null &&
                                  questionModel.buttonText!.isNotEmpty)
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 56.h,
                                    left: 24.w,
                                    right: 24.w,
                                    bottom: 35.h,
                                  ),
                                  child: Column(
                                    children: List.generate(
                                      questionModel.buttonText!.length,
                                      (buttonIndex) {
                                        return Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 12.h),
                                          child: Container(
                                            width: 327.w,
                                            height: 62.h,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (!isPressAttentionValid(buttonIndex)) {
                                                    initializePressAttention(questionModel.buttonText!.length);
                                                  }

                                                  if (currentIndex == 0 || currentIndex == 2) {
                                                    pressAttention = List.generate(
                                                        pressAttention.length,
                                                            (i) => i == buttonIndex ? !pressAttention[buttonIndex] : false
                                                    );
                                                  } else {
                                                    pressAttention[buttonIndex] = !pressAttention[buttonIndex];
                                                  }
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                alignment: Alignment.centerLeft,
                                                side: const BorderSide(
                                                  color: Color(0xFFCBD5E1),
                                                  width: 1,
                                                ),
                                                backgroundColor:
                                                isPressAttentionValid(buttonIndex) && pressAttention[buttonIndex]
                                                    ? Colors.black
                                                    : Colors.transparent,
                                                elevation: 0,
                                              ),
                                              child: Row(
                                                children: [
                                                  if (index == 1)
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        right: 12.w,
                                                      ),
                                                      child: Container(
                                                        width: 24.w,
                                                        height: 24.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: isPressAttentionValid(buttonIndex) && pressAttention[buttonIndex]
                                                              ? Colors.green
                                                              : Colors.transparent,
                                                          shape:
                                                              BoxShape.circle,
                                                          border: Border.all(
                                                            color: const Color(
                                                                0x0f94a3b8),
                                                          ),
                                                        ),
                                                        child: isPressAttentionValid(buttonIndex) && pressAttention[buttonIndex]
                                                            ? Icon(Icons.check, color: Colors.white, size: 16.sp)
                                                            : null,
                                                      ),
                                                    ),
                                                  Text(
                                                    questionModel.buttonText?[
                                                            buttonIndex] ??
                                                        '',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16,
                                                      color: isPressAttentionValid(buttonIndex) && pressAttention[buttonIndex]
                                                          ? Colors.white
                                                          : Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        );
                      },
                    ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 60.h),
              child: Container(
                width: 334.w,
                height: 60.h,
                padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 8.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    bottomRight: Radius.circular(12.r),
                    bottomLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r),
                  ),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF1DAC92), Color(0xFF228E8E)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: goToNextQuestion,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 60.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 48.w, vertical: 8.h),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                      ),
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
