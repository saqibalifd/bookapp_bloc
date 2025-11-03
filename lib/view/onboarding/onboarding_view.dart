import 'package:bookapp/config/component/floating_color_component.dart';
import 'package:bookapp/config/images/app_images.dart';
import 'package:bookapp/cubit/onboarding/onboardig_cubit.dart';
import 'package:bookapp/cubit/onboarding/onboarding_state.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/view/onboarding/widgets/onboarding%20_text_widget.dart';
import 'package:bookapp/view/onboarding/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        'image': AppImages.onBoarding1,
        'title': 'Read your favourite book',
        'subtitle':
            'All your favourite books in one place. Read anytime, anywhere—at home or on the go!',
      },
      {
        'image': AppImages.onBoarding1,
        'title': 'Discover new stories',
        'subtitle':
            'Explore thousands of books across different genres and authors easily within the app.',
      },
      {
        'image': AppImages.onBoarding1,
        'title': 'Stay connected with stories',
        'subtitle':
            'Never stop reading. Keep your favorite books with you and continue where you left off!',
      },
    ];

    final PageController pageController = PageController();
    final theme = Theme.of(context);

    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          return FloatingColorComponent(
            child: Scaffold(
              body: SafeArea(
                child: PageView.builder(
                  controller: pageController,
                  itemCount: data.length,
                  onPageChanged: (index) =>
                      context.read<OnboardingCubit>().pageChanged(index),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.mediaQueryWidth * 0.1,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            20.height,
                            OnboardingImageSection(
                              image: data[index]['image']!,
                              theme: theme,
                            ),
                            20.height,
                            OnboardingIndicator(
                              currentIndex: state.pageIndex,
                              total: data.length,
                              theme: theme,
                            ),
                            30.height,
                            OnboardingTextWidget(
                              title: data[index]['title']!,
                              subtitle: data[index]['subtitle']!,
                              theme: theme,
                            ),
                            50.height,
                            OnboardingButton(
                              totalPages: data.length,
                              controller: pageController,
                            ),
                            30.height,
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
