import 'package:flutter/material.dart';
import 'package:rocketseat_contrib/src/productdetails.dart';

class ListItem extends StatelessWidget {
  final String tag;

  const ListItem({super.key, this.tag = ""});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductDetails(
            tag: tag,
          ),
        ));
      },
      title: const Text("Whey Protein"),
      subtitle: const Text("R\$ 150.00"),
      leading: Hero(
        tag: tag,
        child: Image.network(
            "https://down-br.img.susercontent.com/file/4732390cf0e77287de2384562054e370"),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_basket),
          color: Theme.of(context).hintColor),
    );
  }
}
