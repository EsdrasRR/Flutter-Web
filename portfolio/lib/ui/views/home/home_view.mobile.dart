import 'package:flutter/material.dart';
import 'package:portfolio/ui/common/app_colors.dart';
import 'package:portfolio/ui/common/ui_helpers.dart';
import 'package:portfolio/ui/views/home/home_viewmodel.dart';
import 'package:portfolio/ui/views/home/widgets/home_image.dart';
import 'package:portfolio/ui/views/home/widgets/home_notify_button.dart';
import 'package:portfolio/ui/views/home/widgets/home_subtitle.dart';
import 'package:portfolio/ui/views/home/widgets/home_title.dart';
import 'package:portfolio/ui/widgets/common/academy_icon.dart';
import 'package:portfolio/ui/widgets/common/input_field.dart';
import 'package:stacked/stacked.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
        backgroundColor: kcBackgroundColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 50,
          ),
          children: const [
            AcademyIcon(),
            verticalSpaceLarge,
            HomeTitle(),
            verticalSpaceTiny,
            HomeSubtitle(),
            verticalSpaceLarge,
            InputField(),
            verticalSpaceMedium,
            HomeNotifyButton(),
            verticalSpaceMedium,
            HomeImage(),
          ],
        ));
  }
}