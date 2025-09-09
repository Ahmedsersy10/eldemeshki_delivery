import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_elevated_button.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_app_bar_pop.dart';
import 'package:eldemeshki_delivery/fetuers/payment/presentation/views/widgets/custom_container_bottom_sheet.dart';
import 'package:eldemeshki_delivery/fetuers/payment/presentation/views/widgets/custom_container_card_payment.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        const CustomAppBarPop(title: 'Payment Details'),
        const SizedBox(height: 20),
        const Padding(
          padding: Styels.padding24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Customize your payment method', style: Styels.textStyle16), Divider()],
          ),
        ),
        const SizedBox(height: 10),
        const CustomContainerCardPayment(),
        const SizedBox(height: 40),
        CustomElevatedButton(
          title: 'Add Another Credit/Debit Card',
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: kWhiteColor,
              context: context,
              builder: (context) => const CustomContainerBottomSheet(),
            );
          },
        ),
      ],
    );
  }
}
