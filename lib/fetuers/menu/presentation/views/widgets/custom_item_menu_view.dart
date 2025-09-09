import 'package:eldemeshki_delivery/fetuers/items/presentation/views/menu_products_view.dart';
import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/consts.dart';

class CustomItemMenuView extends StatelessWidget {
  final String category;
  final int count;
  final String image;

  const CustomItemMenuView({
    super.key,
    required this.category,
    required this.count,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 20),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 35, right: 30),
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32),
                bottomLeft: Radius.circular(32),
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 10)],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: CircleAvatar(radius: 35, backgroundImage: AssetImage(image)),
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: const TextStyle(
                      color: kBlackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '$count عناصر',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 15),
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (_) => MenuProductsView(category: category)));
                  },
                  icon: const Icon(Icons.keyboard_arrow_right, color: kMainColor, size: 30),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:eldemeshki_delivery/consts.dart';
// import 'package:eldemeshki_delivery/core/util/assets_data.dart';
// import 'package:eldemeshki_delivery/core/util/styels.dart';
// import 'package:eldemeshki_delivery/fetuers/items/presentation/views/menu_products_view.dart';

// class CustomItemMenuView extends StatelessWidget {
//   const CustomItemMenuView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 16),
//           child: Stack(
//             alignment: Alignment.centerLeft,
//             children: [
//               Container(
//                 margin: const EdgeInsets.only(left: 35, right: 30),
//                 height: 90,
//                 width: double.infinity,

//                 decoration: BoxDecoration(
//                   color: kWhiteColor,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Styels.radius32,
//                     bottomLeft: Styels.radius32,
//                     topRight: Styels.radius16,
//                     bottomRight: Styels.radius16,
//                   ),

//                   boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 10)],
//                 ),
//               ),

//               Row(
//                 spacing: 20,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: Styels.borderRadius50,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.shade300,
//                           blurRadius: 5,
//                           offset: const Offset(0, 0),
//                         ),
//                       ],
//                     ),
//                     child: const CircleAvatar(
//                       radius: 35,
//                       backgroundImage: AssetImage(AssetsData.smallTest),
//                     ),
//                   ),
//                   Column(
//                     spacing: 5,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Food',
//                         style: Styels.textStyle20.copyWith(
//                           color: kBlackColor,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         '220 Items',
//                         style: Styels.textStyle12.copyWith(
//                           color: Colors.grey,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Spacer(),
//                   Container(
//                     margin: const EdgeInsets.only(right: 15),
//                     width: 45,
//                     height: 45,
//                     decoration: BoxDecoration(
//                       borderRadius: Styels.borderRadius50,
//                       color: kWhiteColor,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.shade300,
//                           blurRadius: 5,
//                           offset: const Offset(0, 0),
//                         ),
//                       ],
//                     ),
//                     child: IconButton(
//                       onPressed: () {
//                         Navigator.of(
//                           context,
//                         ).push(MaterialPageRoute(builder: (_) => const MenuProductsView()));
//                       },
//                       icon: const Icon(Icons.keyboard_arrow_right, color: kMainColor, size: 30),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
