import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Инкремент'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementPlus() {
    setState(() {
      _counter++;
    });
  }
  void _incrementMinus() {
    setState(() {
      _counter--;
    });
  }
  void _incrementReset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        //centerTitle: true,
      ),

      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            const Text('Значение инкремента'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: _incrementMinus,
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.greenAccent)
                ),
              ),
              TextButton(
                onPressed: _incrementPlus,
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.redAccent)
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Padding(padding: EdgeInsets.only(top: 40)),
              TextButton(
                  onPressed: _incrementReset,
                  child: Text('Сбросить',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.withOpacity(0.6),
                  ),
                  ),
              )
            ],
          )
        ],
      ),
      ),
    );
  }
}
