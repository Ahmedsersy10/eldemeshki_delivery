import 'package:eldemeshki_delivery/core/widgets/custom_app_bar_pop.dart';
import 'package:eldemeshki_delivery/fetuers/notifications/presentation/views/widgets/notification_item.dart';
import 'package:flutter/material.dart';

class NotificationsViewBody extends StatelessWidget {
  const NotificationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        CustomAppBarPop(title: 'Notifications'),
        SizedBox(height: 20),
        NotificationItem(),
        NotificationItem(),
        NotificationItem(),
        NotificationItem(),
        NotificationItem(),
        NotificationItem(),
        NotificationItem(),
        NotificationItem(),
      ],
    );
  }
}
