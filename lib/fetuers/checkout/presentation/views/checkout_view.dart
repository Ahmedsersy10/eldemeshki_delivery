import 'package:eldemeshki_delivery/fetuers/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SingleChildScrollView(child: CheckoutViewBody()));
  }
}
