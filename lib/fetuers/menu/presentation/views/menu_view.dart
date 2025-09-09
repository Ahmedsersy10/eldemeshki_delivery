import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/fetuers/menu/presentation/views/widgets/menu_view_body.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SingleChildScrollView(child: MenuViewBody()));
  }
}
