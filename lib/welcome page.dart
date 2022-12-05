import 'package:exam_5_december/sign%20in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => SignInPage())));
          setState(() {});
        },
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 168, left: 77),
                  child: Image.asset(
                    'assets/star.png',
                    height: 95,
                    width: 94,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 86,
                    left: 100,
                  ),
                  child: Image.asset(
                    'assets/triangle.png',
                    height: 99,
                    width: 103,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 57.15, left: 213, right: 149),
              child: Image.asset(
                'assets/krug.png',
                height: 70,
                width: 66,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Text(
                'GYMPERS',
                style: TextStyle(fontSize: 64, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300, left: 63),
              child: Row(
                children: [
                  Image.asset(
                    'assets/puma.png',
                    height: 29.59,
                    width: 58,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 64),
                    child: Image.asset(
                      'assets/nike.png',
                      height: 21,
                      width: 58,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 64),
                    child: Image.asset(
                      'assets/adidas.png',
                      height: 39.18,
                      width: 58,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
