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
      title: 'Convertidor',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Convertidor'),
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


  String total = "0";
  double _total = 0;
  final _valoringresado = TextEditingController();
  int _numero2 = 0;
  String moneda="";
  String colombianos="pesos";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text("Calculadora de monedas",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: _valoringresado,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Cantidad de pesos Colombianos a convertir",
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  OutlinedButton.icon(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      setState(() {
                        _numero2 = int.parse(_valoringresado.text);
                        if(_numero2 == 1){
                          moneda = "Dolar";
                          colombianos = "peso Colombiano";
                        }else{
                          moneda = "Dolares";
                          colombianos = "pesos Colombianos";
                        }
                        const double _precioDolar = 4120;
                        _total = _numero2 / _precioDolar;
                        total = _total.toStringAsFixed(3);
                      });
                    },
                    icon: const Icon(Icons.attach_money),
                    label: const Text("Convertir a Dolar Estadounidense"),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  OutlinedButton.icon(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      setState(() {
                        _numero2 = int.parse(_valoringresado.text);
                        if(_numero2 == 1){
                          moneda = "peso Mexicano";
                          colombianos = "peso Colombiano";
                        }else{
                          moneda = "Pesos Mexicanos";
                          colombianos = "pesos Colombianos";
                        }
                        const double _precioMexicano = 228.08;
                        _total = _numero2 / _precioMexicano;
                        total = _total.toStringAsFixed(3);
                      });

                    },
                    icon: const Icon(Icons.monetization_on),
                    label: const Text("Convertir a Peso Mexicano"),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  OutlinedButton.icon(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      setState(() {
                        _numero2 = int.parse(_valoringresado.text);
                        if(_numero2 == 1){
                          moneda = "Euro";
                          colombianos = "peso Colombiano";
                        }else{
                          moneda = "Euros";
                          colombianos = "pesos Colombianos";
                        }
                      });
                      const double _precioEuro = 4352.58;
                      _total = _numero2 / _precioEuro;
                      total = _total.toStringAsFixed(3);
                    },
                    icon: const Icon(Icons.euro_symbol),
                    label: const Text("Convertir a Euro"),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  OutlinedButton.icon(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      setState(() {
                        _numero2 = int.parse(_valoringresado.text);
                        if(_numero2 == 1){
                          moneda = "Libra Esterlina";
                          colombianos = "peso Colombiano";
                        }else{
                          moneda = "Libras Esterlinas";
                          colombianos = "pesos Colombianos";
                        }
                      });
                      const double _precioEuro = 4998.03;
                      _total = _numero2 / _precioEuro;
                      total = _total.toStringAsFixed(3);
                    },
                    icon: const Icon(Icons.monetization_on),
                    label: const Text("Convertir a Libra Esterlina"),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text('$_numero2 $colombianos equivalen a $total $moneda',
                      style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                          color: Colors.indigo)),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ))
            ]),
      ),
    );
  }
}
