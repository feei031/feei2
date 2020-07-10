import 'package:flutter/material.dart';
import 'package:flutter_app/book_list_page.dart';
import 'package:provider/provider.dart';

import 'main_model.dart';
import 'next_page.dart';

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
            title: Text('スポーツ'),
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
                    RaisedButton(
                      child: Text('ボタン'),
                      onPressed: (){
                        //何かする
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BookList()),
                        );
                      },
                    ),
                  ],
                ),
              );
            }
          ),
         ),
      ),
    );
  }
}