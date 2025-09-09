import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_app_bar_pop.dart';
import 'package:eldemeshki_delivery/fetuers/prodact/presentation/views/widgets/custom_dropdown_prodact.dart';
import 'package:eldemeshki_delivery/fetuers/prodact/presentation/views/widgets/custom_number_portions_item.dart';
import 'package:eldemeshki_delivery/fetuers/prodact/presentation/views/widgets/custom_reating_and_piec_item.dart';
import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/core/util/assets_data.dart';
import 'package:eldemeshki_delivery/fetuers/prodact/presentation/views/widgets/custom_descraipthon_prodact.dart';
import 'package:eldemeshki_delivery/fetuers/prodact/presentation/views/widgets/custom_title_prodact.dart';

class ProdactViewBody extends StatefulWidget {
  const ProdactViewBody({super.key});

  @override
  State<ProdactViewBody> createState() => _ProdactViewBodyState();
}

class _ProdactViewBodyState extends State<ProdactViewBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(image: AssetImage(AssetsData.itemTest), fit: BoxFit.fill, height: 350),
        const CustomAppBarPop(colorIcon: Colors.white, title: ''),
        Align(
          alignment: const Alignment(0, 2),
          child: Container(
            width: double.infinity,
            height: 500,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  // CustomTitleItem
                  const CustomTitleProdact(),
                  const SizedBox(height: 10),
                  const CustomReatingAndPiecItem(),
                  const CustomDescraipthonProdact(),
                  Padding(
                    padding: Styels.padding16,
                    child: Column(
                      spacing: 15,
                      children: [
                        CustomDropdownItem(
                          hintText: '   - Select the size of portion -',
                          egyptGovernorates: const ['Small', 'Mediam', 'Larg'],
                        ),
                        CustomDropdownItem(
                          hintText: '   - Select the ingredients -',
                          egyptGovernorates: const ['Small', 'Mediam', 'Larg'],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CustomNumberPortionsItem(),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
