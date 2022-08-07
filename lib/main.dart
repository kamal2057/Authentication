import 'package:flutter/material.dart';

import 'Widgets/costum_Button.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authentication Method',
      home: HomeScreen(),
    ));

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HOMEPAGE',
        ),
        centerTitle: true,
        elevation: 3,
        backgroundColor: Colors.amber,
        shape: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          borderSide: BorderSide.none,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Flexible(child: Container()),
            const Text(
              'Welcome to MisSome',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.orange),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              'Choose your choice to Login/Signup',
              style: mystyle(Colors.deepOrange),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            costumbutton(
              ontap: () {},
              color: Colors.blue,
              text: 'Login with email&password',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            costumbutton(
              ontap: () {},
              color: Colors.purple,
              text: 'SignIn with Phone Number',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            costumbutton(
              ontap: () {},
              color: Colors.amber,
              text: 'SignIn with email',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            costumbutton(
              ontap: () {},
              color: Colors.blueAccent,
              text: 'SignIn with Facebook',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            costumbutton(
              ontap: () {},
              text: 'SignIn with Google',
              color: Colors.white60,
            ),
            Flexible(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle mystyle(Color mycolor) {
  return TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: mycolor);
}
