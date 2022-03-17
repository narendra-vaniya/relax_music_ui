import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:relax/helpers/i_app_images_helper.dart';

class OnBoardingBottomLeftElement extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: -200, end: -100),
      curve: const Interval(0.0, 0.4, curve: Curves.easeOut),
      duration: const Duration(milliseconds: 1200),
      child: SvgPicture.asset(
        AppImagesHelper.bottomLeftBackgroundImg,
        height: 300,
        width: 300,
      ),
      builder: (_, double value, Widget? child) {
        return Positioned(
          child: child != null ? child : SizedBox(),
          bottom: value ,
          left: -33,
        );
      },
    );
  }
}
