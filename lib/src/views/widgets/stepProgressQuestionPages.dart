import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class StepProgresQuestion extends StatelessWidget {
  const StepProgresQuestion({
    super.key,
    required this.currentStep,
    required this.steps,
  });

  final double currentStep;
  final double steps;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 4,
          margin: EdgeInsets.symmetric(vertical: 20.h),
          decoration: BoxDecoration(
            color: Get.theme.primaryColor.withOpacity(0.4),
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Calculate the width based on available constraints
              final widthProgress =
                  constraints.maxWidth / (steps - 1) * currentStep;
              return Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: widthProgress,
                    decoration: BoxDecoration(
                      color: Get.theme.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
