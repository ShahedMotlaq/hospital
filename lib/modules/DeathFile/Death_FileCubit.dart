import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/shared network/remode/dio_helper.dart';
import 'Death_FileState.dart';

class DeathFileCubit extends Cubit<DeathFilestate> {
  DeathFileCubit() : super(DeathFileInitialState());
  static DeathFileCubit get(context) => BlocProvider.of(context);

  void submitDeathFile({
    required Map<String, dynamic> deathFileData ,
  }) {
    emit(DeathFileLoadingState());
    DioHelper.postData(url:'information/deathFile/6', data: deathFileData).then((value) {
      print(value.data);
      emit(DeathFileSuccessState()

      );
    }).catchError((error) {
      print(error.toString());
      emit(DeathFileErrorState(error.toString()));
    });
  }
}
