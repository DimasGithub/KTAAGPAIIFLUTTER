import 'package:flutter/material.dart';

class Fitur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
        padding: EdgeInsets.all(10.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 180.0,
                height: 110.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {},
                  child: const Text('Kartu tanda anggota',
                      style: TextStyle(fontSize: 10.0)),
                ),
              ),
              SizedBox(
                width: 180.0,
                height: 110.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {},
                  child: const Text('Buku Digital ',
                      style: TextStyle(fontSize: 10.0)),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(3.0, 20.0, 3.0, 10.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 110.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {},
                    child: const Text('Murrotal',
                        style: TextStyle(fontSize: 10.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 110.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {},
                    child: const Text('Doa harian',
                        style: TextStyle(fontSize: 10.0)),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(3.0, 10.0, 3.0, 10.0),
                child: SizedBox(
                  width: 180.0,
                  height: 110.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {},
                    child: const Text('Penilaian digital',
                        style: TextStyle(fontSize: 10.0)),
                  ),
                ),
              ),
              SizedBox(
                width: 180.0,
                height: 110.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {},
                  child: const Text('RPP harian',
                      style: TextStyle(fontSize: 10.0)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  width: 180.0,
                  height: 240.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {},
                    child: const Text('Modul digital',
                        style: TextStyle(fontSize: 10.0)),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: SizedBox(
                        width: 180.0,
                        height: 110.0,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () {},
                          child: const Text('Marketplace',
                              style: TextStyle(fontSize: 10.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: SizedBox(
                        width: 180.0,
                        height: 110.0,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () {},
                          child: const Text('Hubungi kami',
                              style: TextStyle(fontSize: 10.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
