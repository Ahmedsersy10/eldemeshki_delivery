import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/assets_data.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_elevated_button.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/app_bar_home_view.dart';
import 'package:eldemeshki_delivery/fetuers/profile/presentation/views/widgets/custom_contaner_profile_view.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        const CustomAppBar(title: 'Profile'),
        const SizedBox(height: 20),
        const CircleAvatar(
          radius: 60,
          child: CircleAvatar(radius: 60, backgroundImage: AssetImage(AssetsData.me)),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 5,
          children: [
            const Icon(Icons.edit, color: kMainColor, size: 20),
            Text('Edit Profile', style: Styels.textStyle16.copyWith(color: kMainColor)),
          ],
        ),
        const SizedBox(height: 10),
        const Text('Hi there Ahmed!', style: Styels.textStyle24),
        Text('Sign Out', style: Styels.textStyle16.copyWith(color: kSecondaryFontColor)),
        const SizedBox(height: 20),
        Column(
          spacing: 10,
          children: [
            const CustomContanerProfileView(hint: 'Name', title: 'Ahmed Elsersy'),
            const CustomContanerProfileView(hint: 'Email', title: 'Ahmedelsersy10@yahoo.com'),
            const CustomContanerProfileView(hint: 'Mobile No', title: '+20-01023324677'),
            const CustomContanerProfileView(hint: 'Address', title: 'No 23, 6th Lane, Colombo 03'),
            const CustomContanerProfileView(hint: 'Password', title: '*************'),
            CustomElevatedButton(title: 'Save', onPressed: () {}),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
