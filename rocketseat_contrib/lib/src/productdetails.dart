import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String tag;

  const ProductDetails({super.key, this.tag = ""});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tag),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Hero(
          tag: widget.tag,
          child: Image.network(
              "https://down-br.img.susercontent.com/file/4732390cf0e77287de2384562054e370"),
        ),
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
