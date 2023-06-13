import 'package:flutter/material.dart';

class NewBar extends StatefulWidget {
  const NewBar({super.key, required ListView child});

  @override
  State<NewBar> createState() => _NewBarState();
}

class _NewBarState extends State<NewBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(color: Colors.black),
              child: Center(
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("asset/images/profile.png"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text("Alex Nikiforov"),
                            Text("alex@msn.com"),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )),
          ListTile(
            leading: const Icon(
              Icons.heart_broken,
              color: Colors.deepOrangeAccent,
            ),
            title: const Text("My Favorites"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.shopping_bag_rounded,
              color: Colors.deepOrangeAccent,
            ),
            title: const Text("Orders"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.featured_play_list_rounded,
              color: Colors.deepOrangeAccent,
            ),
            title: const Text("About us"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.lock_outline,
              color: Colors.deepOrangeAccent,
            ),
            title: const Text("Privacy policy"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.deepOrangeAccent,
            ),
            title: const Text("Setting"),
            onTap: () {},
          ),
          const SizedBox(
            height: 35,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout_outlined,
              color: Colors.deepOrangeAccent,
            ),
            title: const Text("Log out"),
            onTap: () {},
          ),
        ],
      ),
    );
    ;
  }
}
