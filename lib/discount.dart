// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:furniture_app/chair.dart';

class DiscountPage extends StatelessWidget {
  DiscountPage({super.key});

  final List<String> _listdiscount = [
    'assets/images/discount1.png',
    'assets/images/discount2.png',
    'assets/images/discount3.png',
    'assets/images/discount4.png',
    'assets/images/discount5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        title: Center(
          child: Text(
            'Discount',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            // height: 260,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 150,
                  width: 170,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Chaise1Page(imagepath: _listdiscount[index]),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      color: Theme.of(context).secondaryHeaderColor,
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              _listdiscount[index],
                              width: 120,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lorem Chair',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Chill, comfortable",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ],
                                ),
                                Text("4.9"),
                                Text(
                                  'Rp.99.999',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 30,
                );
              },
              itemCount: _listdiscount.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).secondaryHeaderColor,
        elevation: 15,
        shadowColor: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: Icon(
                Icons.home_outlined,
                size: 35,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.percent_outlined,
                size: 35,
                color: Theme.of(context).primaryColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 35,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/person');
              },
              icon: Icon(
                Icons.person_2_outlined,
                size: 35,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
