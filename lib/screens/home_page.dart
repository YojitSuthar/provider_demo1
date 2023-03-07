import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/provider/count_dart.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //using the provider
    final countProvider = Provider.of<Count>(context,listen: false);
    print("HomePage");
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
          child: Consumer<Count>(builder: (context,value,child){
            return Text(
              value.count.toString(),
              style: TextStyle(fontSize: 50),
            );
          },)),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            countProvider.setcount();
          },
          child: Icon(Icons.add)),
    );
  }
}
