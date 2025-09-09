import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/fetuers/prodact/presentation/views/widgets/prodact_view_body.dart';

class ProdactView extends StatelessWidget {
  const ProdactView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ProdactViewBody()),
    );
  }
}
