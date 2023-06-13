import 'package:flutter/material.dart';

class Drawer extends StatefulWidget {
  const Drawer({super.key});

  @override
  State<Drawer> createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 288,
      height: double.infinity,
      color: Colors.black,
      child: SafeArea(
        child: Column(
          children: const [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.png"),
                backgroundColor: Colors.black,
              ),
              title: Text(
                "Alex Nikiforov",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "alex@msn.com",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
