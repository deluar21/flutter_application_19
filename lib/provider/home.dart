import 'package:flutter/material.dart';
import 'package:flutter_application_19/provider/counter.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key, required this.Title}) : super(key: key);

  final String Title;

  @override
  Widget build(BuildContext context) {
    final Counter = Provider.of<counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(Title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is provider',
              textScaleFactor: 2,
            ),
            Text(
              '${Counter.value}',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Counter.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes au
    );
  }
}
