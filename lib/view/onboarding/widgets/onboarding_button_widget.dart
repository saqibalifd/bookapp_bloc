import 'package:bookapp/config/component/components.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/cubit/onboarding/onboardig_cubit.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/services/session_manager/session_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingButton extends StatefulWidget {
  final int totalPages;
  final PageController controller;

  const OnboardingButton({
    super.key,
    required this.totalPages,
    required this.controller,
  });

  @override
  State<OnboardingButton> createState() => _OnboardingButtonState();
}

class _OnboardingButtonState extends State<OnboardingButton> {
          SessionController sessionController = SessionController();

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final state = context.watch<OnboardingCubit>().state;

    return MainButtonComponent(
      onPressed: () {
        if (state.pageIndex == widget.totalPages - 1) {
          Navigator.pushNamed(context, RoutesName.login);
          sessionController.completeOnBoarding();
        } else {
          context.read<OnboardingCubit>().nextPage(widget.totalPages);

          widget.controller.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        }
      },
      name: state.pageIndex == widget.totalPages - 1
          ? loc.getStarted
          : loc.continueText,
    );
  }
}
