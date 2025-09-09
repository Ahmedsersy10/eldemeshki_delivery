import 'package:eldemeshki_delivery/core/widgets/custom_app_bar_pop.dart';
import 'package:eldemeshki_delivery/fetuers/inbox/presentation/views/widgets/inbox_item.dart';
import 'package:flutter/material.dart';

class InboxViewBody extends StatelessWidget {
  const InboxViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        CustomAppBarPop(title: 'Inbox'),
        SizedBox(height: 20),
        InboxItem(),
        InboxItem(),
        InboxItem(),
        InboxItem(),
        InboxItem(),
        InboxItem(),
        InboxItem(),
        InboxItem(),
        InboxItem(),
      ],
    );
  }
}
