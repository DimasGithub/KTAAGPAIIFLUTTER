import 'package:flutter/material.dart';
import 'package:agpaii_kta/login.dart';
import 'package:agpaii_kta/profil.dart';
import 'package:agpaii_kta/fitur.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int selectedIndex = 0;
  final PageController _pageController = PageController();
  final widgetOptions = [
    Konten(),
    LoginPage(),
    Fitur(),
    Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            child: widgetOptions.elementAt(selectedIndex),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.grey), label: "Beranda"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded, color: Colors.grey),
            label: "Acara",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps_sharp, color: Colors.grey), label: "Fitur"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people, color: Colors.grey), label: "Profil"),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.black,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }
}

class Konten extends StatefulWidget {
  Konten({Key key}) : super(key: key);

  @override
  _KontenState createState() => _KontenState();
}

class _KontenState extends State<Konten> {
  final List<Widget> cards = List<Widget>.generate(10, (i) => new Kartu());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('KTA AGPAII', style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_alert),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.send),
              color: Colors.black,
            )
          ],
        ),
        body: ListView(
          children: cards,
        ));
  }
}

class Kartu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(children: [
      Wrap(children: [
        Container(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                        child: Image.network(
                            "https://impact-psy.com/desempeno/assets/images/avatars/profile-pic.jpg",
                            width: 50.0,
                            height: 50.0),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text("Nama Pengguna, .Pd.I",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                )),
                          ),
                          Text(
                            "Guru PAI SD N 1 DEMO",
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "ini caption posting",
                    ),
                  ),
                  FittedBox(
                    child: Image.network('https://picsum.photos/250?image=9'),
                    fit: BoxFit.fill,
                  )
                ],
              )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              " 1 suka",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              " 7 comment",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite_border_outlined),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.comment_bank_outlined),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.bookmark_border_outlined),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 10.0),
                            child: Container(
                              child: Text("2 year ago"),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          margin: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
      ]),
    ]);
  }
}
