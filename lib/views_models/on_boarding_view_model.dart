import 'package:flutter/material.dart';
import 'package:relax/repository/on_boarding_repo.dart';

class OnBoardingViewModel extends ChangeNotifier {
   final OnBoardingRepo _boardingRepo;
  OnBoardingViewModel(this._boardingRepo);


  PageController _onBoardingPageController = PageController(initialPage: 0);

  PageController get onBoardingPageController => _onBoardingPageController;

  void changeOnBoardingPageIndex(int index) {
    _onBoardingPageController.animateToPage(index, duration: Duration(milliseconds: 600), curve: Curves.ease);
    notifyListeners();
  }
}
