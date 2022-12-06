import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  final String image, texxt, ttitle, price;

  const OrderPage(
      {super.key,
      required this.image,
      required this.price,
      required this.texxt,
      required this.ttitle});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

int isTapped = 0;
int count = 0;

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 513,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22, left: 30),
            child: Text(widget.texxt,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 31),
            child: Text(widget.ttitle,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 31),
            child: Text('Размер',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    if (isTapped == 0) {
                      isTapped = 1;
                    } else {
                      isTapped = 0;
                    }
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              isTapped == 1 ? Colors.black : Color(0xffF5F5F5)),
                      child: Center(
                        child: Text('XS',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: isTapped == 1
                                    ? Colors.white
                                    : Colors.black)),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (isTapped == 0) {
                      isTapped = 2;
                    } else {
                      isTapped = 0;
                    }
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              isTapped == 2 ? Colors.black : Color(0xffF5F5F5)),
                      child: Center(
                        child: Text('S',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: isTapped == 2
                                    ? Colors.white
                                    : Colors.black)),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (isTapped == 0) {
                      isTapped = 3;
                    } else {
                      isTapped = 0;
                    }
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              isTapped == 3 ? Colors.black : Color(0xffF5F5F5)),
                      child: Center(
                        child: Text('M',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: isTapped == 3
                                    ? Colors.white
                                    : Colors.black)),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (isTapped == 0) {
                      isTapped = 4;
                    } else {
                      isTapped = 0;
                    }
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              isTapped == 4 ? Colors.black : Color(0xffF5F5F5)),
                      child: Center(
                        child: Text('L',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: isTapped == 4
                                    ? Colors.white
                                    : Colors.black)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 31),
            child: Text('Кол-во',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14, left: 25),
            child: Row(
              children: [
                StatefulBuilder(
                  builder: (BuildContext context, setState) {
                    return Container(
                      height: 48,
                      width: 134,
                      decoration: BoxDecoration(
                          color: Color(0xffF5F5F5),
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 8, bottom: 8),
                        child: Row(
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Center(
                                child: InkWell(
                                  onTap: () {
                                    count--;

                                    setState(() {});
                                  },
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                count.toString(),
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Center(
                                child: InkWell(
                                  onTap: () {
                                    count++;

                                    setState(() {});
                                  },
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 67),
                  child: Column(
                    children: [
                      Text('Цена'),
                      Padding(
                        padding: const EdgeInsets.only(top: 11),
                        child: Text(
                          widget.price,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22, left: 20, right: 20),
            child: InkWell(
              onTap: () {
                showCupertinoDialog(
                  context: context,
                  builder: ((context) => CupertinoAlertDialog(
                        title: Text('You’re all Set'),
                        content: Text('Your puschase was successfull.'),
                        actions: [
                          CupertinoButton(
                              child: Text(
                                'Ok',
                                style: TextStyle(
                                    color: Color(0xff007AFF),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700),
                              ),
                              onPressed: (() {
                                Navigator.pop(context);
                              }))
                        ],
                      )),
                );
              },
              child: Container(
                padding:
                    EdgeInsets.only(top: 19, left: 125, right: 80, bottom: 17),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xff2B2A2A)),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/bag.png',
                      height: 22.09,
                      width: 17.51,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.49),
                      child: Text(
                        'В корзину',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 150, right: 150),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((context) => Container(
                        color: Colors.white,
                        height: 426,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 11,
                            left: 42.51,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/applepay.png',
                                    height: 18,
                                    width: 43.84,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 250.15),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff007AFF)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                color: Color(0xffB2B2B2),
                                thickness: 0.5,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Image.asset(
                                      'assets/mastercard.png',
                                      height: 26,
                                      width: 40,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 14, right: 109),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('MASTERCARD PLATINUM',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                        Text('(•••• 2505)',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black))
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xff007AFF),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                color: Color(0xffB2B2B2),
                                thickness: 0.5,
                              ),
                              Row(
                                children: [
                                  Text('ADDRESS',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffB2B2B2))),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12, left: 29),
                                    child: Column(
                                      children: [
                                        Text('AVENIDA CAXANGÁ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                        Text('RECIFE',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                        Text('PE 44886-232',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                        Text('BRASIL',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xff007AFF),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Divider(
                                  color: Color(0xffB2B2B2),
                                  thickness: 0.5,
                                ),
                              ),
                              Row(
                                children: [
                                  Text('CONTACT',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffB2B2B2))),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12, left: 28),
                                    child: Column(
                                      children: [
                                        Text('GUIFRANCA@ICLOUD.COM',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                        Text('(81) 92503-1996',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xff007AFF),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Color(0xffB2B2B2),
                                thickness: 0.5,
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 80),
                                        child: Text('SUBTOTAL ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffB2B2B2))),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 80),
                                        child: Text('SHIPPING ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffB2B2B2))),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 60),
                                        child: Text('\$ 299,00',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 40),
                                        child: Text('\$ 19,90',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 80, top: 14),
                                    child: Text('PAY MOTOGUI',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffB2B2B2))),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 40),
                                    child: Text('\$ 309,90',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: Divider(
                                  color: Color(0xffB2B2B2),
                                  thickness: 0.5,
                                ),
                              ),
                              Center(
                                child: Image.asset(
                                  'assets/faceid.png',
                                  height: 80,
                                  width: 213,
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 87, 80, 80),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 40,
                child: Center(
                    child: Text(
                  'Buy',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}





// Container(
//                             height: 131,
//                             width: 270,
//                             decoration: BoxDecoration(
//                                 color: Color(0xffF7F7F8),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(14))),
//                             child: Column(
//                               children: [Text('You’re all Set')],
//                             ),
//                           ),