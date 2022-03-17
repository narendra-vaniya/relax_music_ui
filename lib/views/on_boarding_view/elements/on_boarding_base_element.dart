import 'package:flutter/material.dart';

class OnBoardingBaseElement extends StatefulWidget {
  final String heading;
  final String subHeading;
  final String buttonText;
  final VoidCallback buttonEvent;
   OnBoardingBaseElement({
    required this.heading,
    required this.buttonEvent,
    required this.buttonText,
    required this.subHeading,
  });

  @override
  _OnBoardingBaseElementState createState() =>
      _OnBoardingBaseElementState();
}

class _OnBoardingBaseElementState extends State<OnBoardingBaseElement>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _sideTrantionForHeading;
  late Animation<Offset> _sideTrantionForSubHeading;
  late Animation<Offset> _sideTrantionForButton;
  late Animation<double> _opacityAnimation;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1900),
    );
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.1, 1, curve: Curves.ease),
      ),
    );
    _sideTrantionForHeading =
        Tween<Offset>(begin: Offset(2, 0), end: Offset(0, 0)).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0, 0.8, curve: Curves.easeOutCubic),
      ),
    );
    _sideTrantionForSubHeading =
        Tween<Offset>(begin: Offset(2, 0), end: Offset(0, 0)).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.2, 0.9, curve: Curves.easeOutCubic),
      ),
    );
    _sideTrantionForButton =
        Tween<Offset>(begin: Offset(3, 0), end: Offset(0, 0)).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.5, 1, curve: Curves.easeOutCubic),
      ),
    );
    _animationController.forward();
    super.initState();
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransition(
            opacity: _opacityAnimation,
            child: SlideTransition(
              position: _sideTrantionForHeading,
              child: Center(
                child: Text(
                  widget.heading,
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          FadeTransition(
            opacity: _opacityAnimation,
            child: SlideTransition(
              position: _sideTrantionForSubHeading,
              child: Center(
                child: Text(
                  widget.subHeading,
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(height: 35),
          FadeTransition(
            opacity: _opacityAnimation,
            child: SlideTransition(
              position: _sideTrantionForButton,
              child: OutlinedButton(
                onPressed:widget.buttonEvent,
                child: Text(
                  widget.buttonText,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
