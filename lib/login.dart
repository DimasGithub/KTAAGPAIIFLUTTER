import 'package:flutter/material.dart';
import 'package:agpaii_kta/createaccount.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: new InputDecoration(
                hintText: 'Email anda',
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(50.0),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Kata sandi',
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(50.0),
                    ),
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 0.0, right: 0.0),
            padding: EdgeInsets.only(top: 50.0),
            child: SizedBox(
              width: 450.0,
              height: 50.0,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                textColor: Colors.white,
                color: Colors.black26,
                onPressed: () {},
                child: Text(
                  "Masuk",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("BELUM PUNYA AKUN? ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateAccount()),
                    );
                  },
                  child: Text(
                    'BUAT AKUN',
                    textAlign: TextAlign.start,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 1.0),
            child: FlatButton(
              onPressed: () {},
              child: Text("LUPA PASSWORD ? "),
            ),
          ),
        ],
      ),
    )));
  }
}
