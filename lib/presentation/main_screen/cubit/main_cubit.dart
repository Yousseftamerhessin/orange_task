import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  int mainIndex = 0;

  MainCubit() : super(MainInitial());

  void changeTab(int index) {
    mainIndex = index;
    emit(navigationControl());
  }
}
