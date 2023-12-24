import '/src/view_model/blocs/cubits/container_cubit/container_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContainerCubit extends Cubit<ContainerState> {
  ContainerCubit() : super(RedState());

  colorChanger() {
    try {
      if (state is RedState) {
        emit(BlueState());
      } else {
        emit(RedState());
      }
    } catch (e) {
      emit(ErrorState());
    }
  }
}
