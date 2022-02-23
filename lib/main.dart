import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView"),
        ),
        body: const ListViewBody(),
      ),
    );
  }
}

class ListViewBody extends StatelessWidget{
  const ListViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView.builder(
    itemBuilder: (context,index){
      return ListTile(
        title: Text('Satır $index'),
      );
    }

    // children:
    //   ListTile.divideTiles(
    //     context: context,
    //       tiles: [
    //         ListTile(
    //           title: Text("Murat"),
    //         ),
    //         ListTile(
    //           title: Text("Gözde"),
    //         ),
    //         ListTile(
    //           title: Text("Gülden"),
    //         ),
    //         ListTile(
    //           title: Text("Ökkeş"),
    //         ),
    //       ],
    //   ).toList()
  );
}


