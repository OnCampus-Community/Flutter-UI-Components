import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  final Color primaryColor = const Color(0xff18203d);

  final Color secondaryColor = const Color(0xff232c51);

  final Color logoGreen = const Color(0xff25bcbb);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CachedNetworkImage(
              imageUrl:
                  "https://raw.githubusercontent.com/deepraj02/Firebase_Flutter_AUTH/master/assets/bg.png",
              placeholder: (context, url) =>
                  const CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.red),
              errorWidget: (context, url, error) =>
                  const Icon(Icons.error_outline),
            ),
            const SizedBox(
              height: 20,
            ),
            //Texts and Styling of them
            const Text(
              'Welcome to Awesomeness !',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 28),
            ),
            const SizedBox(height: 20),
            const Text(
              'A one-stop portal for you to learn the latest technologies from SCRATCH',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(
              height: 30,
            ),
            //Our MaterialButton which when pressed will take us to a new screen named as
            //LoginScreen
            MaterialButton(
              elevation: 0,
              height: 50,
              minWidth: 70,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()));
              },
              color: logoGreen,
              textColor: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Get Started',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
