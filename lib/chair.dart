import 'package:flutter/material.dart';
import 'package:furniture_app/checkout.dart';

class Chaise1Page extends StatefulWidget {

  final String imagepath;
  const Chaise1Page({required this.imagepath, super.key});


  @override
  State<Chaise1Page> createState() => _Chaise1PageState();
}

class _Chaise1PageState extends State<Chaise1Page> {
  
  bool _isfav = false;
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

  void favorite() {
    setState(() {
      _isfav = !_isfav;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(child: SizedBox()),
            Center(
              child: Text(
                'Detail',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  favorite();
                },
                icon: Icon(
                  _isfav ? Icons.favorite_sharp : Icons.favorite_outline_sharp,
                  color: _isfav ? Colors.red : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                widget.imagepath,
                
                fit: BoxFit.cover,
                width: 400,
                height: 370,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xfff6f9ff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 20,
                    right: 10,
                    bottom: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 150),
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Lorem Chair',
                            style: TextStyle(
                              fontSize: 27,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xefCCDAFC),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    decremente();
                                  },
                                  icon: Icon(
                                    Icons.remove_circle,
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    size: 25,
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
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Relax, Comfortable',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Blandit in nunc, et sit velit at aliquam tortor. Tristique ut ante nec nullam urna. Ultrices ac lorem rutrum purus. Nunc.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Color',
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.circle,
                            color: Color(0xef121214),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.circle,
                            color: Color(0xef670B00),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.circle,
                            color: Color(0xefA8A6A7),
                          ),
                          Expanded(child: SizedBox()),
                          const Text(
                            'Total Rp.99.999',
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
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
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>CheckoutPage(imagepath: widget.imagepath),),);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context).primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              child: Text(
                                'Add to cart',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
