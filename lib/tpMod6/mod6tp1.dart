import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo layout",
      home: AppHomePage(title: "Calculette de prix"),
    );
  }
}

class AppHomePage extends StatelessWidget {
  String title;

  AppHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ContainerCalculator());
  }
}

class ContainerCalculator extends StatefulWidget {



  const ContainerCalculator({super.key});

  @override
  State<StatefulWidget> createState() => _ContainerCalculatorState();
}

class _ContainerCalculatorState extends State<ContainerCalculator> {

  double totalOrder = 0.0;

  majTotalOrder(double lastTotal, double newTotal) {
    setState(() {
      print(lastTotal);
      print(newTotal);
      totalOrder -= lastTotal;
      totalOrder += newTotal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Article(productName: "Clavier", unitPrice: 50, onTotalChanged: majTotalOrder),
        Article(productName: "Ecran", unitPrice: 200.99,  onTotalChanged: majTotalOrder),
        Article(productName: "Manette", unitPrice: 45.99,  onTotalChanged: majTotalOrder),
        Article(productName: "Stylo", unitPrice: 1.5,  onTotalChanged: majTotalOrder),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Total = $totalOrder €")],)
      ],
    );
    throw UnimplementedError();
  }
}


class Article extends StatefulWidget {

  final String productName;
  final double unitPrice;
  Function(double, double) onTotalChanged;

  Article({super.key,
    required this.productName,
    required this.unitPrice,
    required this.onTotalChanged});

  @override
  State<Article> createState() =>
      _ArticleState();
}

class _ArticleState extends State<Article> {

  int quantity = 0;
  double totalPrice = 0;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
    updateTotalPrice();
  }

  void decrementQuantity() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
      updateTotalPrice();
    }
  }

  void updateTotalPrice() {
    setState(() {
      double lastTotal = totalPrice;
      totalPrice = quantity * widget.unitPrice;
      widget.onTotalChanged(lastTotal, totalPrice);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text(widget.productName),
        Text("${widget.unitPrice} €"),
        TextButton(
            onPressed: incrementQuantity,
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
            ),
            child: Text("+")),
        Text(quantity.toString()),
        TextButton(
            onPressed: decrementQuantity,
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
            ),
            child: Text("-")),
        Text("total = ${totalPrice.toString()} €")
      ]),
    );
    throw UnimplementedError();
  }
}
