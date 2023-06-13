import 'package:flutter/material.dart';
import 'package:onboard_app/home_action_screens/categories.dart';
import 'package:onboard_app/home_action_screens/new_arrivalpage.dart';
import 'package:onboard_app/home_action_screens/popular_product.dart';
import 'package:onboard_app/home_action_screens/searches.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFFF67952);
    const Color bgColor = Color(0xFFFBFBFD);

    const double defaultPadding = 16.0;
    const double defaultBorderRadius = 12.0;
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        // leading: IconButton(
        //   icon: Image.asset("assets/icons/menu.png"),
        //   onPressed: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => NewBar(),
        //         ));
        //   },
        // ),
        title: const Center(
          child: Text(
            "15/2 New Texas",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset("assets/icons/notification.png"),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}
