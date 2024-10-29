import 'package:flutter/material.dart';
import 'package:furniture_app/sucess.dart';

class PaymentPage extends StatefulWidget {
  final String imagepath;
  const PaymentPage({required this.imagepath, super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _compter = 1;

  void incremente() {
    setState(() {
      _compter++;
    });
  }

  void decremente() {
    setState(() {
      if (_compter > 1) {
        _compter--;
      } else {
        _compter = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        title: Center(
          child: Text(
            'Payment',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Theme.of(context).secondaryHeaderColor,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      widget.imagepath,
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Lorem Chair',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 95,
                                color: Color(0xefCCDAFC),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        decremente();
                                      },
                                      icon: Icon(
                                        Icons.remove_circle,
                                        color: Theme.of(context)
                                            .secondaryHeaderColor,
                                      ),
                                    ),
                                    Text(
                                      '$_compter',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        incremente();
                                      },
                                      icon: Icon(
                                        Icons.add_circle,
                                        color: Theme.of(context)
                                            .secondaryHeaderColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Dark Grey",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rp.99.999',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Add notes',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Add name & address',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Mr. Lorem Ipsum",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Sending by',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'JNE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Rp 10.000",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Choose Payment',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 130,
                  height: 70,
                  child: Card(
                    color: Theme.of(context).secondaryHeaderColor,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('assets/images/Component 1.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 70,
                  child: Card(
                    color: Theme.of(context).secondaryHeaderColor,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('assets/images/Component 2.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 70,
                  child: Card(
                    color: Theme.of(context).secondaryHeaderColor,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('assets/images/Component 3.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 130,
                  height: 70,
                  child: Card(
                    color: Theme.of(context).secondaryHeaderColor,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('assets/images/Component 4.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 70,
                  child: Card(
                    color: Theme.of(context).secondaryHeaderColor,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('assets/images/Component 5.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 70,
                  child: Card(
                    color: Theme.of(context).secondaryHeaderColor,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('assets/images/Component 6.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 130,
                  height: 70,
                  child: Card(
                    color: Theme.of(context).secondaryHeaderColor,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('assets/images/Component 7.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 70,
                  child: Card(
                    color: Theme.of(context).secondaryHeaderColor,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('assets/images/Component 8.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  height: 70,
                  child: Card(
                    color: Theme.of(context).secondaryHeaderColor,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('assets/images/Component 9.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 130,
              height: 70,
              child: Card(
                color: Theme.of(context).secondaryHeaderColor,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset('assets/images/Component 10.png'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Rp.99.999',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            Center(
              child: SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SucessPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
