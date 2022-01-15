import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '../cubits/cat_display_state.dart';

class CatDisplayCubit extends Cubit<CatDisplayState> {
  CatDisplayCubit() : super(CatDisplayInitial());


}
