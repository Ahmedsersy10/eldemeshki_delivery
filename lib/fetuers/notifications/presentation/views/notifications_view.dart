import 'package:eldemeshki_delivery/fetuers/notifications/presentation/views/widgets/notifications_view_body.dart';
import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SingleChildScrollView(child: NotificationsViewBody()));
  }
}
