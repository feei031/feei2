import 'package:flutter/material.dart';
import 'package:flutter_app/book_list_page.dart';
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
                Row(
                  children: <Widget>[
                    Text('野球'),
                    Text('　サッカー'),
                    Text('　バスケ'),
                    Text('　卓球'),
                  ],
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
                    '本日のおすすめ',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  RaisedButton(
                    child: Text('一覧表示'),
                    onPressed: () {
                      //何かする
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookListPage()),
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
