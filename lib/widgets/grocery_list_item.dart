import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class GroceryListItem extends StatelessWidget {
  const GroceryListItem({super.key, required this.groceryItem});

  final GroceryItem groceryItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 24,
            width: 24,
            color: groceryItem.category.color,
          ),
          const SizedBox(width: 24),
          Text(groceryItem.name),
          // const SizedBox(width: 24),
          Spacer(),
          Text(groceryItem.quantity.toString())
        ],
      ),
    );
  }
}
