import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/app_router.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_app_bar_pop.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_elevated_button.dart';
import 'package:eldemeshki_delivery/fetuers/checkout/presentation/views/widgets/custom_payment_method.dart';
import 'package:eldemeshki_delivery/fetuers/payment/presentation/views/widgets/custom_container_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    const items = [
      {'name': 'Beef Burger', 'price': 16},
      {'name': 'Classic Burger', 'price': 14},
      {'name': 'Cheese Chicken Burger', 'price': 17},
      {'name': 'Chicken Legs Basket', 'price': 15},
      {'name': 'French Fries Large', 'price': 6},
    ];
    final subtotal = items.fold(0, (sum, item) => sum + (item['price'] as int));
    const delivery = 4;
    final total = subtotal + delivery;
    return Column(
      children: [
        const SizedBox(height: 40),
        const CustomAppBarPop(title: 'Checkout', colorIcon: kWhiteColor),
        Padding(
          padding: Styels.padding24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivery Address',
                style: Styels.textStyle14.copyWith(color: kPlaceholderColor),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text('653 Nostrand Ave., \nBrooklyn, NY 11216', style: Styels.textStyle18),
                  const Spacer(),
                  Text('Change', style: Styels.textStyle16.copyWith(color: kMainColor)),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(color: Color(0x46DDDDDD), thickness: 5, height: 20),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Delivery Address',
                    style: Styels.textStyle14.copyWith(color: kSecondaryFontColor),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: kWhiteColor,
                        context: context,
                        builder: (context) => const CustomContainerBottomSheet(),
                      );
                    },
                    child: Text(
                      '+ Add Card',
                      style: Styels.textStyle16.copyWith(color: kMainColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CustomPaymentMethod(
                cardNumber: 'Cash on delivery',
                image: 'assets/images/visa.png',
              ),
              const SizedBox(height: 10),
              const CustomPaymentMethod(
                cardNumber: '**** **** **** 1234',
                image: 'assets/images/visa.png',
              ),
              const SizedBox(height: 10),
              const CustomPaymentMethod(
                cardNumber: 'johndoe@email.com',
                image: 'assets/images/paypal.png',
              ),
              const SizedBox(height: 10),
              const Divider(color: Color(0x46DDDDDD), thickness: 5, height: 20),
              const SizedBox(height: 10),
              Column(
                children: [
                  _buildPriceRow('Sub Total', subtotal),
                  _buildPriceRow('Delivery Cost', delivery),
                  const SizedBox(height: 8),
                  const Divider(color: Color.fromARGB(103, 223, 223, 223), thickness: 1),
                  _buildPriceRow('Total', total, isTotal: true),
                ],
              ),
              const SizedBox(height: 20),
              CustomElevatedButton(
                title: 'Send Order',
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: kWhiteColor,
                    context: context,
                    builder: (context) => const CustomContainerBottomSheetSend(),
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPriceRow(String title, int amount, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: isTotal ? 18 : 15,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? Colors.black : Colors.grey[800],
            ),
          ),
          Text(
            '\$$amount',
            style: TextStyle(
              fontSize: isTotal ? 18 : 15,
              fontWeight: FontWeight.bold,
              color: isTotal ? kMainColor : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomContainerBottomSheetSend extends StatelessWidget {
  const CustomContainerBottomSheetSend({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 650,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),

        child: Padding(
          padding: Styels.padding24,
          child: Column(
            spacing: 20,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close, size: 24),
                    color: kMainColor,
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/thankYou.png',
                  width: 280,
                  height: 260,
                  fit: BoxFit.cover,
                ),
              ),
              const Column(
                children: [
                  Text('Thank You!', style: Styels.textStyle28),
                  Text('for your order', style: Styels.textStyle12),
                ],
              ),
              const Text(
                'Your Order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your Order',
                style: Styels.textStyle18,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).go(AppRouter.kHomeView);
                },
                child: const Text('Back To Home', style: Styels.textStyle20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
