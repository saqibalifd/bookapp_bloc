import 'package:equatable/equatable.dart';

class OnboardingState extends Equatable {
  final int pageIndex;

  const OnboardingState({required this.pageIndex});

  OnboardingState copyWith({int? pageIndex}) {
    return OnboardingState(pageIndex: pageIndex ?? this.pageIndex);
  }

  @override
  List<Object> get props => [pageIndex];
}
