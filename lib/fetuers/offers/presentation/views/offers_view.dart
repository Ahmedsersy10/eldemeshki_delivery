import 'package:eldemeshki_delivery/fetuers/offers/presentation/views/widgets/offers_view_body.dart';
import 'package:flutter/material.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SingleChildScrollView(child: OffersViewBody()));
  }
}
