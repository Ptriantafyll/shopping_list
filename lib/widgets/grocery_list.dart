import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Groceries'),
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 24,
                width: 24,
                color: groceryItems[index].category.color,
              ),
              const SizedBox(width: 24),
              Text(groceryItems[index].name),
              // const SizedBox(width: 24),
              Spacer(),
              Text(groceryItems[index].quantity.toString())
            ],
          ),
        ),
      ),
    );
  }
}
