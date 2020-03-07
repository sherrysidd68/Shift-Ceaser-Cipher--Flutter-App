import 'package:flutter/material.dart';
import 'enc.dart';
import 'dec.dart';

class ShiftCipher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              title: Text('SHIFT CIPHER'), backgroundColor: Colors.greenAccent),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: slideList.length,
                  itemBuilder: (ctx, i) => SlideItems(i),
                )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FlatButton(
                      child: Text(
                        "ENCRYPT",
                        style: TextStyle(fontSize: 20),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(15),
                      color: Colors.greenAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Encrypt()));
                      },
                      textColor: Colors.white,
                    ),
                    FlatButton(
                      child: Text(
                        "DECRYPT",
                        style: TextStyle(fontSize: 18),
                      ),
                      padding: const EdgeInsets.all(15),
                      color: Colors.greenAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Decrypt()));
                      },
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class SlideItems extends StatelessWidget {
  final int index;
  SlideItems(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(slideList[index].imageUrl),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          slideList[index].title,
          style: TextStyle(fontSize: 24, color: Theme.of(context).primaryColor),
        ),
        SizedBox(
          height: 10,
        ),
        Text(slideList[index].decs,
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class Slide {
  final String imageUrl;
  final String title;
  final String decs;
  Slide({@required this.imageUrl, @required this.title, @required this.decs});
}

final slideList = [
  Slide(
      imageUrl: "images/cc1.jpg",
      title: "JULUIUS CEASER",
      decs: "Caesar cipher, also known as Caesar's cipher, the shift cipher, "
          "Caesar's code or Caesar shift, is one of the simplest and most widely"
          " known encryption techniques. It is a type of substitution cipher in "
          "which each letter in the plaintext is replaced by a letter some fixed"
          " number of positions down the alphabet. For example, with a left shift "
          "of 3, D would be replaced by A, E would become B, and so on. The method "
          "is named after Julius Caesar, who used it in his private correspondence "),
  Slide(
      imageUrl: "images/cc2.jpg",
      title: "DESCRIPTION",
      decs: "The Caesar Cipher is a type of shift cipher. Shift Ciphers work by"
          " using the modulo operator to encrypt and decrypt messages. The Shift "
          "Cipher has a key K, which is an integer from 0 to 25. We will only share"
          " this key with people that we want to see our message.")
];
