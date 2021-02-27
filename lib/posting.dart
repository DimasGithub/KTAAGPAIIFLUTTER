import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Posting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Icons.arrow_back),
              color: Colors.black),
          backgroundColor: Colors.white,
          title: Text('Posting', style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {},
              color: Colors.black,
            ),
          ],
        ),
        body: Container(
            child: Column(
          children: [
            Row(children: [
              Container(
                padding: EdgeInsets.all(5.0),
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                    child: Image.asset("assets/img/masjid.jpg",
                        width: 50.0, height: 50.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('NAMA PENGGUNA, S.pd',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ]),
              )
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
              child: TextFormField(
                decoration: new InputDecoration(
                    labelText: 'Diskusi hari ini',
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(50.0),
                      ),
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.add_a_photo_sharp),
                  onPressed: () {},
                )
              ],
            )
          ],
        )));
  }
}
