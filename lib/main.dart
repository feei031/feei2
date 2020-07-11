import 'package:flutter/material.dart';
import 'package:flutter_app/book_list_page.dart';
import 'package:flutter_app/login_page.dart';
import 'package:flutter_app/signup_page.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_app/book_list_model.dart';
import 'main_model.dart';
//import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Column(
              children: <Widget>[
                Text(
                  'スポーツ一覧',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: <Widget>[
                  Text(
                    model.asaiText,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'mail password',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  RaisedButton(
                    child: Text('登録'),
                    onPressed: () {
                      //何かする
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text('ログイン'),
                    onPressed: () {
                      //何かする
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
