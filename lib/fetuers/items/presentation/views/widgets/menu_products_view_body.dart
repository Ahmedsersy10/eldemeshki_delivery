import 'package:eldemeshki_delivery/core/services/model.dart';
import 'package:eldemeshki_delivery/core/services/services.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_app_bar_pop.dart';
import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/text_field_search.dart';
import 'package:eldemeshki_delivery/fetuers/items/presentation/views/widgets/list_view_menu_products.dart';

class MenuProductsViewBody extends StatelessWidget {
  final String category;

  const MenuProductsViewBody({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBarPop(title: category),
          const SizedBox(height: 10),
          const TextFieldSearch(),
          FutureBuilder<List<Product>>(
            future: loadProducts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('خطأ: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(child: Text('لا توجد منتجات'));
              }

              final products = snapshot.data!.where((p) => p.category == category).toList();

              if (products.isEmpty) {
                return const Center(child: Text('لا توجد منتجات في هذه الفئة'));
              }

              return ListViewMenuProducts(products: products);
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}


// import 'package:eldemeshki_delivery/core/util/assets_data.dart';
// import 'package:eldemeshki_delivery/core/widgets/custom_app_bar_pop.dart';
// import 'package:flutter/material.dart';

// import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/text_field_search.dart';
// import 'package:eldemeshki_delivery/fetuers/items/presentation/views/widgets/list_view_menu_products.dart';

// class MenuProductsViewBody extends StatelessWidget {
//   const MenuProductsViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       children: [
//         SizedBox(height: 50),
//         CustomAppBarPop(title: 'Food'),
//         SizedBox(height: 10),
//         TextFieldSearch(),
//         ListViewMenuProducts(
//           title: 'Minute by tuk tuk',
//           subtitle: '( 4.9 ) Minute by tuk tuk Desserts ',
//           image: AssetsData.itemTest,
//         ),
//         SizedBox(height: 10),
//       ],
//     );
//   }
// }
