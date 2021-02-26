import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Postingdetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Icons.arrow_back),
              color: Colors.black),
          backgroundColor: Colors.white,
          title: Text('Postingan', style: TextStyle(color: Colors.black)),
        ),
        body: Container(
          child: Wrap(children: [
            Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.edit))
                            ],
                          ),
                        )
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
                        child:
                            Image.network('https://picsum.photos/250?image=9'),
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
                                      icon:
                                          Icon(Icons.favorite_border_outlined),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.comment_bank_outlined),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon:
                                          Icon(Icons.bookmark_border_outlined),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    0.0, 0.0, 10.0, 10.0),
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
        ));
  }
}
