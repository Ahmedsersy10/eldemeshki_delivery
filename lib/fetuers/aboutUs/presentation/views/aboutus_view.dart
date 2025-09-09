import 'package:eldemeshki_delivery/fetuers/aboutUs/presentation/views/widgets/aboutus_view_body.dart';
import 'package:flutter/material.dart';

class AboutusView extends StatelessWidget {
  const AboutusView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SingleChildScrollView(child: AboutusViewBody()));
  }
}
