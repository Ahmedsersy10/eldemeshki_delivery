import 'package:eldemeshki_delivery/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/app_bar_home_view.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/text_field_search.dart';
import 'package:eldemeshki_delivery/fetuers/menu/presentation/views/widgets/custom_item_menu_view.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        const CustomAppBar(title: 'Menu'),
        const SizedBox(height: 20),
        const TextFieldSearch(),
        const SizedBox(height: 20),
        FutureBuilder<List<Map<String, dynamic>>>(
          future: getCategoriesWithCounts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('خطأ: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('لا توجد فئات'));
            }

            final categories = snapshot.data!;
            return Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 90,
                    height: 480,
                    decoration: const BoxDecoration(
                      color: kMainColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                ),
                Column(
                  children:
                      categories
                          .asMap()
                          .entries
                          .map(
                            (entry) => CustomItemMenuView(
                              category: entry.value['category'],
                              count: entry.value['count'],
                              image: entry.value['image'],
                            ),
                          )
                          .toList(),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:eldemeshki_delivery/consts.dart';
// import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/app_bar_home_view.dart';
// import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/text_field_search.dart';
// import 'package:eldemeshki_delivery/fetuers/menu/presentation/views/widgets/custom_item_menu_view.dart';

// class MenuViewBody extends StatelessWidget {
//   const MenuViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const SizedBox(height: 40),
//         const CustomAppBar(title: 'Menu'),
//         const SizedBox(height: 20),
//         const TextFieldSearch(),
//         const SizedBox(height: 20),
//         Stack(
//           alignment: Alignment.centerLeft,
//           children: [
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Container(
//                 width: 90,
//                 height: 480,
//                 decoration: const BoxDecoration(
//                   color: kMainColor,
//                   borderRadius: BorderRadius.only(
//                     bottomRight: Radius.circular(40),
//                     topRight: Radius.circular(40),
//                   ),
//                 ),
//               ),
//             ),
//             const Column(
//               spacing: 25,
//               children: [
//                 CustomItemMenuView(),
//                 CustomItemMenuView(),
//                 CustomItemMenuView(),
//                 CustomItemMenuView(),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
