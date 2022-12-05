import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 129, left: 191, right: 180),
            child: Text(
              'Вход',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 111.98, left: 59.13, right: 56.95),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: 'Email'),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 35.78, left: 59.13, right: 56.95),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: 'Password'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 111.78, right: 57, left: 56),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xff2A2A2A),
              ),
              padding:
                  EdgeInsets.only(top: 19, bottom: 17, left: 127, right: 126),
              child: Text(
                'Войти',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 68, right: 37, left: 38),
            child: Row(
              children: [
                SizedBox(
                    width: 140,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 22),
                  child: Text('Или'),
                ),
                SizedBox(
                    width: 140,
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 49, left: 175),
            child: Row(
              children: [
                Image.asset(
                  'assets/google.png',
                  height: 25.74,
                  width: 24.12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.17),
                  child: Image.asset(
                    'assets/apple.png',
                    height: 29.74,
                    width: 24.12,
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 61),
              child: TextButton(
                onPressed: (() {}),
                child: Text(
                  'Нет аккаунта? Войти',
                  style: TextStyle(color: Color(0xff324A59)),
                ),
              ))
        ],
      ),
    ));
  }
}
