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
      debugShowCheckedModeBanner: false,
      title: 'App Login',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 74, 143, 199)),
        useMaterial3: true,
      ),
      home: _MyHomePageState(),
    );
  }
}

class _MyHomePageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 74, 143, 199),
        title: const Text(
          'BEM-VINDO',
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.home,
              size: 180,
              color: Color.fromARGB(255, 74, 143, 199),
            ),
            Text(
              'INFO HOME',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 143, 199),
              ),
            ),
            Text(
              'SOLUÇÕES EM IoT',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 74, 143, 199),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 74, 143, 199),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)) // foreground
                      ),
                  onPressed: () {},
                  child: Text('LOGIN'),
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 74, 143, 199),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                  onPressed: () {},
                  child: Text('CADASTRAR'),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
