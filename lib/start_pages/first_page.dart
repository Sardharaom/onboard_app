import 'package:flutter/material.dart';
import 'package:onboard_app/forgotpassword/otp.dart';
import 'package:onboard_app/start_pages/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHide = true;
  bool valuefirst = false;

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                width: 200,
                height: 150,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
          ),
          Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Sign in',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 30,
          ),
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
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xffFBFBFD),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.deepOrangeAccent,
                  ),
                  hintText: "Confirm Password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isHide = !_isHide;
                      });
                    },
                    icon: Icon(
                      _isHide ? Icons.visibility_off : Icons.visibility,
                      color: Colors.orange,
                    ),
                  ),
                  border: InputBorder.none,
                ),
                validator: ((value) {
                  if (value!.isEmpty) {
                    return "Enter password";
                  }
                  return null;
                }),
                obscureText: _isHide,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const OtpPage()));
            },
            child: const Text(
              'Forgot Password?',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, left: 20),
            child: Container(
              width: width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()));
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  primary: Colors.deepOrangeAccent,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "Log In",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60, right: 60),
            child: Text(
              "---------------    Or    ---------------",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 130),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/facebook.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    "assets/images/google.png",
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SignUpPage()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
