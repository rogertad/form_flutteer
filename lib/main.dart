import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

//import '/';

final player = AudioCache(
  prefix: "",
);

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            //backgroundColor: Colors.orange,
            //foregroundColor: Colors.black,
            title: Text(
              '!   TEXTO + AQUI   !',
            ),
          ),
          body: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Text('zzzzzzzzzzzzeeeee.......'),
                  Center(
                    child: TextButton(
                      child: Image(
                          image: NetworkImage(
                              'https://www.infoescola.com/wp-content/uploads/2017/04/leao-126767138.jpg')),
                      onPressed: () => player.play('lib/assets/miau.mp3'),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          )),
    ),
  );
}
