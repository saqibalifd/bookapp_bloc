import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState(pageIndex: 0));

  void pageChanged(int index) {
    emit(state.copyWith(pageIndex: index));
  }

  void nextPage(int totalPages) {
    if (state.pageIndex < totalPages - 1) {
      emit(state.copyWith(pageIndex: state.pageIndex + 1));
    }
  }
}
