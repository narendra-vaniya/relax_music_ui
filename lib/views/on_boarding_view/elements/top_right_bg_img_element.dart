import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:relax/helpers/i_app_images_helper.dart';

class OnBoardingTopRightBgImgElement extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: -200, end: -100),
      duration: const Duration(milliseconds: 1200),
      curve: const Interval(0.0, 0.4, curve: Curves.easeOut),
      builder: (_,double value, child) => Positioned(
        child: SvgPicture.asset(
          AppImagesHelper.topRightBackgroundImg,
          height: 280,
          width: 280,
        ),
        top: value,
        right: -80,
      ),
    );
  }
}
