import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/app_router.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_app_bar_pop.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_elevated_button.dart';
import 'package:eldemeshki_delivery/fetuers/myOrder/presentation/views/widgets/delivery_instructions.dart';
import 'package:eldemeshki_delivery/fetuers/myOrder/presentation/views/widgets/restaurant_info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyOrderViewBody extends StatelessWidget {
  const MyOrderViewBody({super.key});

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
    const delivery = 2;
    final total = subtotal + delivery;

    return Column(
      children: [
        const SizedBox(height: 40),
        const CustomAppBarPop(title: 'My Order', colorIcon: kWhiteColor),
        const SizedBox(height: 20),
        // Restaurant Info
        const RestaurantInfo(),
        const SizedBox(height: 20),
        // Order Items
        ...items.map((item) {
          return Column(
            children: [
              Container(
                color: const Color(0x56DFDFDF),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${item['name']} x1', style: const TextStyle(fontSize: 16)),
                      Text(
                        '\$${item['price']}',
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
        const Divider(color: Color.fromARGB(106, 223, 223, 223), thickness: 1),
        // DeliveryInstructions
        const SizedBox(height: 10),
        const DeliveryInstructions(),
        const SizedBox(height: 10),
        // Totals
        const Divider(color: Color.fromARGB(110, 223, 223, 223), thickness: 1),
        Padding(
          padding: Styels.padding16,
          child: Column(
            children: [
              _buildPriceRow('Sub Total', subtotal),
              _buildPriceRow('Delivery Cost', delivery),
              const SizedBox(height: 8),
              const Divider(color: Color.fromARGB(103, 223, 223, 223), thickness: 1),
              _buildPriceRow('Total', total, isTotal: true),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Checkout Button
        CustomElevatedButton(
          title: 'Checkout',
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kCheckOutView);
          },
        ),
        const SizedBox(height: 20),
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
