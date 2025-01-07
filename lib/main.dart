import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Демонстрационное приложение Flutter'),
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
  Color _color = Colors.orangeAccent;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      _color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Кнопка нажата:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'раз.',
            ),
            if (_counter >= 10)
            Text(
              'Перестань нажимать эту кнопку!!!!!',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: _color,
            onPressed: _incrementCounter,
            tooltip: 'Добавить',
            child: const Icon(Icons.add),
          ),           const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            backgroundColor: _color,
            onPressed: _resetCounter,
            tooltip: 'Сбросить',
            child: const Icon(Icons.clear),
          ),
        ],
      ),     );
  }
}
