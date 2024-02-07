import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo Flutter'),
        ),
        body: const MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool showMessage = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          '¡Hola, Flutter!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          color: Colors.blue,
          child: const Text(
            'Este es un contenedor con color de fondo',
            style: TextStyle(color: Colors.white),
          ),
        ),
        if (showMessage)
          const Text(
            'Mensaje mostrado al presionar el botón',
            style: TextStyle(fontSize: 16),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Muestra el mensaje al presionar el botón
                setState(() {
                  showMessage = true;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('Presionar para Mostrar Mensaje'),
            ),
            ElevatedButton(
              onPressed: () {
                // Oculta el mensaje al presionar el botón
                setState(() {
                  showMessage = false;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Presionar para Ocultar Mensaje'),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            'Este es otro contenedor con bordes redondeados',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
