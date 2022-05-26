import 'package:bloc/bloc.dart';
import 'package:medapp/screens/home/bloc/state/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitialHome());
  int selected = 0;
  change(index) {
    selected = index;
    emit(InitialHome());
  }
}
