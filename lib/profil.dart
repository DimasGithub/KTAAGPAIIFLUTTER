import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agpaii_kta/home.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Get.offAllNamed('/login'),
              color: Colors.black),
          backgroundColor: Colors.white,
          title: Text('NAMA PENGGNA, S.Ag., M.Ag',
              style: TextStyle(color: Colors.black, fontSize: 15.0)),
        ),
        body: Container(
          child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                HalamanProfil(),
                Foto(),
              ]),
        ));
  }
}

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                    child: Image.network(
                        "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png",
                        width: 80.0,
                        height: 80.0),
                  ),
                ),
                Container(
                  child: Column(children: [
                    Text(
                      '102',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Text(
                      'media',
                    ),
                  ]),
                ),
                Container(
                  child: Column(children: [
                    Text(
                      '7',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Text(
                      'Acara',
                    ),
                  ]),
                ),
                Container(
                  child: Column(children: [
                    Text(
                      '124',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Text(
                      'Buku',
                    ),
                  ]),
                )
              ]),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "No. Anggota : 3374080001",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.black,
              ),
            ),
          ]),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Namapengguna@gmail.com",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ]),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Jabatan GPAII",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ]),
        ),
        Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FlatButton(
                  onPressed: () {
                    Get.to(Home());
                  },
                  child: Text(
                    "EDIT PROFILE",
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "DOKUMEN",
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "POST MEDIA",
                  ),
                )
              ]),
        ),
      ],
    );
  }
}

class Foto extends StatelessWidget {
  const Foto({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 3,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(20, (index) {
        return Material(
            child: InkWell(
          onTap: () => Get.toNamed("/profil/lihatposting"),
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => Postingdetail()),
          // );

          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Container(
                margin: EdgeInsets.all(1.0),
                color: Colors.grey,
                child: Image.network(
                    "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png"),
              ),
            ),
          ),
        ));
        // return widget(
        //   child: Center(
        //     child: ClipRRect(
        //       borderRadius: BorderRadius.all(Radius.circular(10.0)),
        //       child: Container(
        //         margin: EdgeInsets.all(1.0),
        //         color: Colors.grey,
        //         child: Image.network(
        //             "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png"),
        //       ),
        //     ),
        //     // child: Text('Gambar $index',
        //     //     style: TextStyle(
        //     //         fontSize: 15.0, backgroundColor: Colors.grey)),
        //   ),
        // );
      }),
    );
  }
}
