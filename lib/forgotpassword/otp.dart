import 'package:flutter/material.dart';
import 'package:onboard_app/forgotpassword/otp1.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Forgot Password",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 60, right: 60),
            child: Image.asset("assets/images/05.png"),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 70, left: 10),
                child: Text(
                  "Enter Your Email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          // Container(
          //   height: 60,
          //   decoration: BoxDecoration(
          //     color: const Color(0xffFBFBFD),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey.withOpacity(0.5),
          //         // spreadRadius: 5,
          //         blurRadius: 7,
          //         offset: Offset(0, 3), // changes position of shadow
          //       ),
          //     ],
          //     borderRadius: BorderRadius.circular(29),
          //   ),
          //   child: Center(
          //     child: TextFormField(
          //       decoration: const InputDecoration(
          //           prefixIcon: Icon(
          //             Icons.mail,
          //             color: Colors.deepOrangeAccent,
          //           ),
          //           border: InputBorder.none,
          //           hintText: "Email"),
          //     ),
          //   ),
          // ),

          Container(
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xffFBFBFD),
              borderRadius: BorderRadius.circular(29),
            ),
            child: Center(
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.deepOrangeAccent,
                    ),
                    border: InputBorder.none,
                    hintText: "Email"),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 25, left: 20, top: 170),
            child: Container(
              width: width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Otp1()));
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  primary: Colors.deepOrangeAccent,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "Verify",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
