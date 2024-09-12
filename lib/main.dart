import 'package:flutter/material.dart' ;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MaxBid(title: 'Bidding Page'),
    );
  }
}

class MaxBid extends StatefulWidget {
  const MaxBid({super.key, required this.title});

  final String title;

  @override
  State<MaxBid> createState() => _MaxBidState();
}

class _MaxBidState extends State<MaxBid> {
  int _counter = 0;

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter -= 50;
      });
    }
  }

  void _incrementCounter() {
    setState(() {
      _counter += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _decrementCounter,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: const Text('Decrease Bid 50'),
                  ),
                  const SizedBox(width: 20), // Adds space between buttons
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.lightGreen),
                    ),
                    child: const Text('Increase Bid 50'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
