import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';
import 'package:shopping_list/widgets/grocery_list_item.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CategoriesScreenState();
  }
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: groceryItems.length,
      itemBuilder: (ctx, index) => GroceryListItem(
        groceryItem: groceryItems[index],
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text('Your Groceries'),
        ),
        body: content);
  }
}
