import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //arreglo de widgets
          Text('Numero de clicks: ', style: _estiloTexto),
          Text(
            '$_conteo',
            style: _estiloTexto,
          ),
        ],
      )),
      floatingActionButton: _crearbotones(),
    );
  }

  final _estiloTexto = const TextStyle(
      fontSize: 20,
      color: Color.fromARGB(255, 8, 52, 125),
      fontWeight: FontWeight.bold);

  Widget _crearbotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const SizedBox(
          width: 50.0,
        ),
        FloatingActionButton(
            onPressed: _reset, child: const Icon(Icons.exposure_zero)),
        const Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _agregar, child: const Icon(Icons.add)),
        const Expanded(
            child: SizedBox(
          width: 10.0,
        )),
        FloatingActionButton(
            onPressed: _sustraer, child: const Icon(Icons.remove_sharp)),
        FloatingActionButton(onPressed: _sustraer, child: const Text("Hello"))
      ],
    );
  }

  void _reset() {
    setState(() => _conteo = 0);
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() {
      if (_conteo > 0) _conteo--;
    });
  }
}
