import 'package:flutter/material.dart';
import 'package:flutter_state_management_using_change_notifier/data.dart';
import 'package:provider/provider.dart';
import 'package:randomstring_dart/randomstring_dart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management - Change Notifier"),
      ),
      body: Center(
        child: Consumer<Data>(
          builder: (context, data, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(data.value),
                SizedBox(height: 50,),
                ElevatedButton(onPressed: (){
                  final rs = RandomString();
                  String result = rs.getRandomString();
                  data.changeValue(result);

                }, child: Text("Modifier"),),
              ],
            );
          },
        ),
      ),
    );
  }
}
