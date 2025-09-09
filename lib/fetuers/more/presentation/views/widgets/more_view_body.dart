import 'package:eldemeshki_delivery/fetuers/aboutUs/presentation/views/aboutus_view.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/app_bar_home_view.dart';
import 'package:eldemeshki_delivery/fetuers/inbox/presentation/views/inbox_view.dart';
import 'package:eldemeshki_delivery/fetuers/more/presentation/views/widgets/custom_contaner_more_view.dart';
import 'package:eldemeshki_delivery/fetuers/myOrder/presentation/views/myorder_view.dart';
import 'package:eldemeshki_delivery/fetuers/notifications/presentation/views/notifications_view.dart';
import 'package:eldemeshki_delivery/fetuers/payment/presentation/views/payment_details_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoreViewBody extends StatelessWidget {
  const MoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        const SizedBox(height: 40),
        const CustomAppBar(title: 'More'),
        const SizedBox(height: 5),
        CustomContanerMoreView(
          title: 'Payment Details',
          icon: Icons.monetization_on,
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => const PaymentDetailsView()));
          },
        ),
        CustomContanerMoreView(
          title: 'My Orders',
          icon: Icons.shopping_bag_sharp,
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => const MyOrderView()));
          },
        ),
        CustomContanerMoreView(
          title: 'Notifications',
          icon: Icons.notifications,
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => const NotificationsView()));
          },
        ),
        CustomContanerMoreView(
          title: 'Inbox',
          icon: Icons.inbox_outlined,
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => const InboxView()));
          },
        ),
        CustomContanerMoreView(
          title: 'About Us',
          icon: FontAwesomeIcons.info,
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => const AboutusView()));
          },
        ),
      ],
    );
  }
}
