import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboard_app/start_pages/first_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Image.asset('assets/images/01.png'),
        ),
        title: "Choose Product",
        body:
            "A product is the item offered for sale. A product can be a service or an item. It can be  physical or in virtual or cyber form",
        decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
      ),
      PageViewModel(
        title: "Make Payment",
        body:
            "Payment is the transfer of money  services in exchange product or Payments typically made terms agreed ",
        decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        image: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Image.asset('assets/images/02.png'),
        ),
      ),
      PageViewModel(
        title: "Get Your Order",
        body:
            "Business or commerce an order is a stated  intention either spoken to engage in a commercial transaction specific products ",
        decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        image: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Image.asset('assets/images/03.png'),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: getPages(),
        done: const Text(
          "Done",
          style: TextStyle(fontSize: 20),
        ),
        showSkipButton: true,
        skip: const Text(
          "Skip",
          style: TextStyle(fontSize: 20),
        ),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          size: 20,
        ),
        onDone: () => onDone(context),
      ),
    );
  }

  void onDone(context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }
}
