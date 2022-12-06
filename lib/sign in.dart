import 'package:exam_5_december/shopping%20page.dart';
import 'package:exam_5_december/sign%20up%20page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

bool isEmpty = false;
bool isEmptyPassword = false;
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
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
                onChanged: (value) {
                  isEmpty = false;
                  setState(() {});
                },
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'Email'),
              ),
            ),
            isEmpty
                ? Text(
                    'You should enter your email',
                    style: TextStyle(color: Colors.red),
                  )
                : SizedBox.shrink(),
            Padding(
              padding:
                  const EdgeInsets.only(top: 35.78, left: 59.13, right: 56.95),
              child: TextFormField(
                onChanged: (value) {
                  isEmpty = false;
                  setState(() {});
                },
                controller: password,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'Password'),
              ),
            ),
            isEmptyPassword
                ? Text(
                    'You should enter your password',
                    style: TextStyle(color: Colors.red),
                  )
                : SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.only(top: 111.78, right: 57, left: 56),
              child: InkWell(
                onTap: () {
                  if (email.text.isEmpty) {
                    isEmpty = true;
                    setState(() {});
                  }
                  if (password.text.isEmpty) {
                    isEmptyPassword = true;
                    setState(() {});
                  }
                  if (email.text.isNotEmpty && password.text.isNotEmpty) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => ShoppingPage())));
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xff2A2A2A),
                  ),
                  padding: EdgeInsets.only(
                      top: 19, bottom: 17, left: 127, right: 126),
                  child: Text(
                    'Войти',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
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
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => ShoppingPage())));
                    },
                    child: Image.asset(
                      'assets/google.png',
                      height: 25.74,
                      width: 24.12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.17),
                    child: InkWell(
                      onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => ShoppingPage())));
                    },
                      child: Image.asset(
                        'assets/apple.png',
                        height: 29.74,
                        width: 24.12,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 61),
                child: TextButton(
                  onPressed: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => SignUpPage())));
                  }),
                  child: Text(
                    'Нет аккаунта? Войти',
                    style: TextStyle(color: Color(0xff324A59)),
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
