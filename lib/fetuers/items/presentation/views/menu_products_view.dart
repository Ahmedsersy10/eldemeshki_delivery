import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/fetuers/items/presentation/views/widgets/menu_products_view_body.dart';

class MenuProductsView extends StatelessWidget {
  const MenuProductsView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(child: MenuProductsViewBody(category: category)));
  }
}
