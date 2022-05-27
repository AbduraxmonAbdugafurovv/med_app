import 'package:bloc/bloc.dart';
import 'package:medapp/screens/home/bloc/state/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitialHome());
  int tabIndex = 0;
  int selected = 0;
  bool checkTable = false;
  int gender = 0;

  selectGender(index) {
    gender = index;
    emit(InitialHome());
  }

  changeTab(index) {
    tabIndex = index;
    emit(InitialHome());
  }

  checkingTable() {
    checkTable = !checkTable;
    emit(InitialHome());
  }

  changePage(index) {
    selected = index;
    emit(InitialHome());
  }
}
