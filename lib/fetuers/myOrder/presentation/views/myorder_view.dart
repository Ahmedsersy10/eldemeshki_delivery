import 'package:eldemeshki_delivery/fetuers/myOrder/presentation/views/widgets/my_order_view_body.dart';
import 'package:flutter/material.dart';

class MyOrderView extends StatelessWidget {
  const MyOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SingleChildScrollView(child: MyOrderViewBody()));
  }
}
