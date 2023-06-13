import 'package:flutter/material.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  bool _isHide = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Create New Password",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                width: 200,
                height: 150,
                child: Image.asset(
                  'assets/images/04.png',
                ),
              ),
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 70, left: 10),
                child: Text(
                  "Create Your New Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
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
                  hintText: "Password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isHide = !_isHide;
                      });
                    },
                    icon: Icon(
                      _isHide ? Icons.visibility_off : Icons.visibility,
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
          Padding(
            padding: const EdgeInsets.only(right: 25, left: 20, top: 170),
            child: Container(
              width: width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: Container(
                        padding: const EdgeInsets.all(20),
                        height: 400,
                        width: 400,
                        child: Column(
                          children: [
                            Image.asset("assets/images/06.png"),
                            const SizedBox(
                              height: 100,
                            ),
                            const Text(
                              "Congratulations!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Your account is ready to use. you will be redirected to the Home page in a few seconds.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  primary: Colors.deepOrangeAccent,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "Continue",
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
