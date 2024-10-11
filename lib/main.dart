import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(healthappbgc());
}

class healthappbgc extends StatelessWidget {
  const healthappbgc({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 255, 255)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

    void getNext() {
      current = WordPair.random();
      notifyListeners();
    }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair =appState.current;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RandomText(pair: pair),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: (){
                appState.getNext();
              },
              child:Text("press me")
              ),     
          ],
        ),
      ),
    );
  }
}

class RandomText extends StatelessWidget {
  const RandomText({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  // ...

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color: theme.colorScheme.primary,    // ← And also this.
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Text(pair.asLowerCase, style: style,),
      ),
    );
  }

// ...
}