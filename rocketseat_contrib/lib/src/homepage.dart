import 'package:flutter/material.dart';
import 'package:rocketseat_contrib/src/listitem.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
            color: Colors.white,
          ),
        ],
        title: const Text("RLX"),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      drawer: const Drawer(),
      body: ListView.separated(
        itemCount: 5,
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 0),
        itemBuilder: (context, index) {
          return ListItem(
            tag: "Produto ${(index + 1).toString()}",
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 0); // Espaçamento
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
