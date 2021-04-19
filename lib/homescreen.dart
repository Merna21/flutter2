import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: null),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 20,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.red),
              child: Center(
                child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: null),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.red),
                              color: Colors.red[50],
                            ),
                            child: Center(
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.red[50],
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://assets.stickpng.com/images/5a5f620bee40df432bfac54c.png'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 25),
                              child: Text(
                                'Lychee',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Most Popular',
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 370,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 350,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red[200],
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 280,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.red[200],
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://assets.stickpng.com/images/5b37e3222751046a99744b80.png'),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                height: 65,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Tomato Juice',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '\$ 7.55',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                                                        ],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
