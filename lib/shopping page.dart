import 'package:exam_5_december/order%20page.dart';
import 'package:flutter/material.dart';

import 'data model/model shopping page.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

List<Data> peoples = [
  Data(
      images: 'assets/bir.png',
      name: 'Tech Fleece',
      title: 'Men\'s Pullover Hoodie',
      price: '\$110'),
  Data(
      images: 'assets/ikki.png',
      name: 'Indy Luxe',
      title: 'Women\'s Light-Support ',
      price: '\$36'),
  Data(
      images: 'assets/uch.png',
      name: 'Space Hippi',
      title: 'Women\'s Shoes',
      price: '\$130'),
  Data(
      images: 'assets/tort.webp',
      name: 'Therma Fit',
      title: 'Women\'s Parka',
      price: '\$250'),
  Data(
      images: 'assets/besh.webp',
      name: 'Nike Sportswear ',
      title: 'Women\'s Long-Sleeve',
      price: '\$70'),
];

List<Krossi> krasovka = [
  Krossi(photoKross: 'assets/kross01.webp'),
  Krossi(photoKross: 'assets/kross02.webp'),
  Krossi(photoKross: 'assets/kross03.webp'),
  Krossi(photoKross: 'assets/kross04.webp'),
  Krossi(photoKross: 'assets/kross05.webp'),
];

List<LastView> futbolki = [
  LastView(
      photobrands: 'assets/fut1.webp',
      count: 2,
      name: 'Tottenham Hotspur Travel',
      title: 'Men\'s Fleece Football Hoodie'),
  LastView(
      photobrands: 'assets/fut2.webp',
      count: 5,
      name: 'FFF Strike',
      title: 'Men\'s Fleece Football Hoodie'),
  LastView(
      photobrands: 'assets/fut3.webp',
      count: 1,
      name: 'Paris Saint-Germain',
      title: 'Men\'s French Terry '),
  LastView(
      photobrands: 'assets/fut4.webp',
      count: 3,
      name: 'England',
      title: 'Men\'s French Terry'),
  LastView(
      photobrands: 'assets/fut5.webp',
      count: 4,
      name: 'Chelsea F.C.',
      title: 'Men\'s Pullover Hoodie'),
];

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home.png',
              height: 24,
              width: 24,
            ),
            label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
      ]),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 82, left: 47, right: 48),
              child: Image.asset(
                'assets/Banner.png',
                height: 364,
                width: 333,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 28, right: 157),
              child: Text(
                'The Latest And Greatest',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff3C3C3C)),
              ),
            ),
            SizedBox(
              height: 213,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: peoples.length,
                  itemBuilder: ((context, index) => Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Container(
                          margin: EdgeInsets.only(left: 16),
                          color: Colors.white,
                          height: 196,
                          width: 140,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: ((context) => OrderPage(
                                            image: peoples[index].images,
                                            texxt: peoples[index].name,
                                            price: peoples[index].price,
                                            ttitle: peoples[index].title,
                                          ))));
                                },
                                child: Container(
                                  height: 140,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(peoples[index].images),
                                          fit: BoxFit.cover),
                                      color: Color(0xffF4F4F4),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  peoples[index].name,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text(
                                  peoples[index].title,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff3C3C3C)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  peoples[index].price,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff3C3C3C)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Container(
                  height: 206,
                  width: 372,
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 206,
                        width: 186,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/futbolka.png'),
                                fit: BoxFit.cover)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 27),
                            child: Text(
                              'White polo Shirt with',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 27),
                            child: Text(
                              'blue design',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 27),
                            child: Text(
                              '5% off',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 27),
                            child: Text(
                              '₦2,300',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16, left: 27),
                            child: Text(
                              'Colour',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 27),
                            child: Row(
                              children: [
                                Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff0C3A90)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff2B2B2B),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffFBBC05)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff34A853)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff3EC6FF)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 27, top: 47),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    'assets/applepay.png',
                                                    height: 18,
                                                    width: 43.84,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 250.15),
                                                    child: InkWell(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text(
                                                        'Cancel',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Color(
                                                                0xff007AFF)),
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
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 15),
                                                    child: Image.asset(
                                                      'assets/mastercard.png',
                                                      height: 26,
                                                      width: 40,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 14,
                                                            right: 109),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            'MASTERCARD PLATINUM',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                        Text('(•••• 2505)',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black))
                                                      ],
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
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
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color(
                                                              0xffB2B2B2))),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 12, left: 29),
                                                    child: Column(
                                                      children: [
                                                        Text('AVENIDA CAXANGÁ',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                        Text('RECIFE',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                        Text('PE 44886-232',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                        Text('BRASIL',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 25),
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      color: Color(0xff007AFF),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12),
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
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color(
                                                              0xffB2B2B2))),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 12, left: 28),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                            'GUIFRANCA@ICLOUD.COM',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                        Text('(81) 92503-1996',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 25),
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
                                                            const EdgeInsets
                                                                .only(left: 80),
                                                        child: Text('SUBTOTAL ',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Color(
                                                                    0xffB2B2B2))),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 80),
                                                        child: Text('SHIPPING ',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Color(
                                                                    0xffB2B2B2))),
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 60),
                                                        child: Text('\$ 299,00',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 40),
                                                        child: Text('\$ 19,90',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 80, top: 14),
                                                    child: Text('PAY MOTOGUI',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Color(
                                                                0xffB2B2B2))),
                                                  ),
                                                  Spacer(),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 40),
                                                    child: Text('\$ 309,90',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black)),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 14),
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
                                height: 32,
                                width: 159,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 1)),
                                child: Center(
                                  child: Text(
                                    'Proceed to payment',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
            Container(
              height: 206,
              width: 372,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sneakers with multiple',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' colours (white as main)',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '8% off',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '₦5,800',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Colour',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffE9E1BC)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffE4E1E2),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffB3BBEB)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff5F5DA4)),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff2B2B2B),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 27, top: 63),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                'assets/applepay.png',
                                                height: 18,
                                                width: 43.84,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 250.15),
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    'Cancel',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff007AFF)),
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
                                                padding: const EdgeInsets.only(
                                                    left: 15),
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
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black)),
                                                    Text('(•••• 2505)',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black))
                                                  ],
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
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
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Color(0xffB2B2B2))),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12, left: 29),
                                                child: Column(
                                                  children: [
                                                    Text('AVENIDA CAXANGÁ',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black)),
                                                    Text('RECIFE',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black)),
                                                    Text('PE 44886-232',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black)),
                                                    Text('BRASIL',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black)),
                                                  ],
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 25),
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Color(0xff007AFF),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
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
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Color(0xffB2B2B2))),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12, left: 28),
                                                child: Column(
                                                  children: [
                                                    Text('GUIFRANCA@ICLOUD.COM',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black)),
                                                    Text('(81) 92503-1996',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black)),
                                                  ],
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 25),
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
                                                        const EdgeInsets.only(
                                                            left: 80),
                                                    child: Text('SUBTOTAL ',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Color(
                                                                0xffB2B2B2))),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 80),
                                                    child: Text('SHIPPING ',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Color(
                                                                0xffB2B2B2))),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 60),
                                                    child: Text('\$ 299,00',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black)),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 40),
                                                    child: Text('\$ 19,90',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black)),
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
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xffB2B2B2))),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 40),
                                                child: Text('\$ 309,90',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black)),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 14),
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
                            height: 32,
                            width: 159,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: Center(
                              child: Text(
                                'Proceed to payment',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 206,
                    width: 186,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/kros.png'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 18, right: 252),
              child: Text(
                'Similar Items',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 213,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: krasovka.length,
                  itemBuilder: ((context, index) => Padding(
                        padding: const EdgeInsets.only(top: 12, left: 17),
                        child: Container(
                          height: 196,
                          width: 140,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                height: 157,
                                width: 140,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            krasovka[index].photoKross),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Container(
                                  height: 28,
                                  width: 146,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.black, width: 1)),
                                  child: Center(
                                    child: Text(
                                      'View',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: futbolki.length,
                  itemBuilder: ((context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Container(
                          height: 135,
                          width: 428,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 23, top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 115,
                                      width: 87,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  futbolki[index].photobrands),
                                              fit: BoxFit.cover)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 39, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            futbolki[index].name,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff3C3C3C)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              futbolki[index].title,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w100,
                                                  color: Color(0xff3C3C3C)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 13, left: 170),
                                            child: Container(
                                              height: 33,
                                              width: 99,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(22)),
                                                  color: Color(0xffF5F5F5)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 12,
                                                    right: 11,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 23,
                                                      width: 23,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          shape:
                                                              BoxShape.circle),
                                                      child: Center(
                                                        child: InkWell(
                                                          onTap: () {
                                                            futbolki[index]
                                                                .count--;
                                                            setState(() {});
                                                          },
                                                          child: Text(
                                                            '-',
                                                            style: TextStyle(
                                                                fontSize: 17),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5,
                                                              right: 5),
                                                      child: Text(
                                                          futbolki[index]
                                                              .count
                                                              .toString()),
                                                    ),
                                                    Container(
                                                      height: 23,
                                                      width: 23,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          shape:
                                                              BoxShape.circle),
                                                      child: Center(
                                                        child: InkWell(
                                                          onTap: () {
                                                            futbolki[index]
                                                                .count++;
                                                            setState(() {});
                                                          },
                                                          child: Text(
                                                            '+',
                                                            style: TextStyle(
                                                                fontSize: 17),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
