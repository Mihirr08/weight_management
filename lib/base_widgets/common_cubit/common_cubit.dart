

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common_repo.dart';

part 'common_state.dart';

class CommonCubit extends Cubit<CommonState> {
  CommonCubit({required this.commonRepo}) : super(CommonInitial());

  final CommonRepo commonRepo;

  fetchData({data}) async{
          emit(CommonStateLoading());
          try {
            var response = await commonRepo.fetchData(data: data);

            emit(CommonStateSuccess(response));

          }catch (e){
            emit(CommonStateError(e.toString()));
          }
  }

}
