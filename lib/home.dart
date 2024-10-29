import 'package:flutter/material.dart';
import 'package:furniture_app/chair.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> _categorie = [
    'Chair',
    'Table',
    'Bed',
    'Carpet',
    'sofa',
    'carpet'
  ];

  final List<String> _chairhorizontal = [
    'assets/images/chaise1.png',
    'assets/images/chaise2.png',
    'assets/images/chaise3.jpg',
  ];

  final List<String> _chairvertical = [
    'assets/images/chaise4.png',
    'assets/images/chaise5.png',
    'assets/images/chaise6.png',
    'assets/images/chaise7.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'My Furniture',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chat_outlined),
                ),
              ],
            ),
            const Text(
              'Your partner interior design',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.grey,
                      ),
                      hintText: "Try search 'Computer Table'",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/person');
                  },
                  child: CircleAvatar(
                    radius: 30,
                    child: Image.asset('assets/images/person.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _categorie.length,
                itemBuilder: (context, index) {
                  bool isFirst = index == 0;
                  bool issecond = index == 1;
                  return TextButton(
                    onPressed: () {
                      if (isFirst) {
                        Navigator.of(context).pop();
                        Navigator.pushNamed(context, '/home');
                      }
                      if (issecond) {
                        Navigator.of(context).pop();
                        Navigator.pushNamed(context, '/home1');
                      }
                    },
                    child: Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isFirst
                            ? Theme.of(context).primaryColor
                            : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          _categorie[index],
                          style: TextStyle(
                            color: isFirst
                                ? Theme.of(context).secondaryHeaderColor
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              'Best for you',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 200,
                    width: 170,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Chaise1Page(imagepath: _chairhorizontal[index]),
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  _chairhorizontal[index],
                                  width: 110,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Lorem Chair',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("4.9"),
                                  Expanded(child: SizedBox()),
                                  Text(
                                    'Rp.99.999',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
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
                    width: 5,
                  );
                },
                itemCount: _chairhorizontal.length,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              'Best for you',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 260,
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
                                Chaise1Page(imagepath: _chairvertical[index]),
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
                                _chairvertical[index],
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
                    height: 15,
                  );
                },
                itemCount: _chairvertical.length,
              ),
            ),
          ],
        ),
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
                color: Theme.of(context).primaryColor,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/discount');
              },
              icon: Icon(
                Icons.percent_outlined,
                size: 35,
                color: Colors.grey,
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
