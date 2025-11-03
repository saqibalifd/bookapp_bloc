import 'package:flutter_bloc/flutter_bloc.dart';

class VisibilityCubit extends Cubit<bool> {
  VisibilityCubit() : super(true); // true = password hidden initially

  void toggleVisibility() => emit(!state);
}
