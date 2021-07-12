//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

//import '/';

final player = AudioCache(
  prefix: "",
);

String a = "";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController c1 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: c1,
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                  setState(() {});
                }
              },
              child: const Text('Submit'),
            ),
          ),
          Text(a),
          Center(
            child: TextButton(
                child: Image(
                    image: NetworkImage(
                        'https://www.infoescola.com/wp-content/uploads/2017/04/leao-126767138.jpg')),
                onPressed: () {
                  //player.play('lib/assets/miau.mp3');
                  setState(() {
                    a = c1.text;
                  });
                }),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(const MyApp());

void main2() {
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
