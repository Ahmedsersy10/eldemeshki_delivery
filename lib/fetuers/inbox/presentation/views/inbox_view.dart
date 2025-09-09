import 'package:eldemeshki_delivery/fetuers/inbox/presentation/views/widgets/inbox_view_body.dart';
import 'package:flutter/material.dart';

class InboxView extends StatelessWidget {
  const InboxView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SingleChildScrollView(child: InboxViewBody()));
  }
}
