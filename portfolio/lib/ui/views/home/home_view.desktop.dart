import 'package:flutter_svg/svg.dart';
import 'package:portfolio/ui/common/app_colors.dart';
import 'package:portfolio/ui/common/app_constants.dart';
import 'package:portfolio/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/views/home/widgets/home_image.dart';
import 'package:portfolio/ui/views/home/widgets/home_notify_button.dart';
import 'package:portfolio/ui/views/home/widgets/home_subtitle.dart';
import 'package:portfolio/ui/views/home/widgets/home_title.dart';
import 'package:portfolio/ui/widgets/common/academy_icon.dart';
import 'package:portfolio/ui/widgets/common/input_field.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Center(
        child: SizedBox(
          width: kdDesktopMaxContentWidth,
          height: kdDesktopMaxContentHeight,
          child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      const AcademyIcon(),
                      const Spacer(flex: 2),
                      const HomeTitle(),
                      const HomeSubtitle(),

                      // Arrow
                      verticalSpaceMedium,
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 100),
                          child: SvgPicture.asset('assets/sign-up-arrow.svg'),
                      ),
                      verticalSpaceSmall,

                      const Row(
                          children: [
                              InputField(),
                              horizontalSpaceSmall,
                              HomeNotifyButton()
                          ],
                      ),
                      const Spacer(flex: 3)
                  ],
                  ),
                  const HomeImage()
              ],
          ),
        ),
      )
    );
  }
}
