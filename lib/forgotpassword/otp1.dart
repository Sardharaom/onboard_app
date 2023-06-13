import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:onboard_app/forgotpassword/createpassword.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp1 extends StatefulWidget {
  const Otp1({Key? key}) : super(key: key);

  @override
  State<Otp1> createState() => _Otp1State();
}

class _Otp1State extends State<Otp1> {
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;
  final formKey = GlobalKey<FormState>();

  String currentText = "";
  bool hasError = false;
  late Timer _timer;
  int _start = 30;
  bool isLoading = false;
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            isLoading = false;
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    errorController = StreamController<ErrorAnimationType>();

    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
    errorController!.close();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 35, left: 5, right: 5),
          child: Column(
            children: [
              Text(
                "Code has been send to nik***@gmail.com",
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 125,
              ),
              OtpTextField(
                //decoration: BorderDirectional,
                numberOfFields: 4,
                fillColor: Colors.white,
                filled: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(height: 30),
              if (_start != 0)
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Resend Code in",
                        style: TextStyle(
                            // color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      _start.toString(),
                      style: const TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                )
              else
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Don't receive code?",
                      style: TextStyle(
                          // color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _start = 30;
                          isLoading = true;
                          startTimer();
                        });
                      },
                      child: const Text(
                        "Request again",
                        style: TextStyle(
                            color: Colors.black,
                            //color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    )
                  ],
                ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 20, top: 170),
                child: Container(
                  width: width * 0.8,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreatePassword()));
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
        ),
      ),
    );
  }
}
