import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'onboard_state.dart';

class OnboardCubit extends Cubit<OnboardState> {
  OnboardCubit() : super(OnboardInitial());
  int index = 0;
  double percentage = 0.5;
  List<String> listofImagesPAth = [
    "assets/imgs/onboard1.png",
    "assets/imgs/onboard2.png",
    "assets/imgs/onboard3.png",
  ];
  List<String> listofTitles = [
    "Find the item you've \nbeen looking for",
    "Get those shopping \nbags filled",
    "Fast & Secure \npayment"
  ];
  List<String> listofSubtitle = [
    "Here you'll see rich varieties of goods, \ncarefully classified for seamless browsing \nexperience",
    "Add any item you want to your cart or save \nit on your wishlist, so you don't miss it in \nyour future purchase.",
    "There are many payment options available \nto speed up and simplify your payment \nprocess."
  ];

  void nextPageOnboard() {
    if (index < listofImagesPAth.length - 1) {
      percentage += 0.25;
      index++;

      emit(NextpageOnBoard());
    }
  }
}
