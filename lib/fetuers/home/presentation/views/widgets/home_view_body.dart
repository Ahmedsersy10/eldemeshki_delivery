import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/app_bar_home_view.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/custom_dropdown_button_form_field.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/head_title_lists_h_ome_view.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/list_view_most_popular_home_view.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/list_view_popular_restaurents_home_view.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/list_view_recent_items_home_view.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/list_view_types_food_home_view.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/text_field_search.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const CustomAppBar(title: 'Good Morning Ahmed!'),
              const SizedBox(height: 20),
              const Padding(
                padding: Styels.padding24,
                child: Text('Delivering to', style: Styels.textStyle12),
              ),
              Padding(padding: Styels.padding24, child: CustomDropdownButtonFormField()),
              const SizedBox(height: 20),
              const TextFieldSearch(),
              const SizedBox(height: 35),
              const ListViewTypesFoodHomeView(),
              const SizedBox(height: 35),
              const HeadTitleListsHOmeView(title: 'Popular Restaurents'),
              const ListViewPopularRestaurentsHomeView(),
              const HeadTitleListsHOmeView(title: 'Most Popular'),
              const SizedBox(height: 20),
              const ListViewMostPopularHomeView(),
              const HeadTitleListsHOmeView(title: 'Recent Items'),
              const ListViewRecentItemsHomeView(),
            ],
          ),
        ),
      ],
    );
  }
}
