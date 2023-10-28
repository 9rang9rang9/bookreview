// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookreview/src/common/enum/common_state_status.dart';

class AppDataLoadCubit extends Cubit<AppDataLoadState> {
  AppDataLoadCubit() : super(AppDataLoadState()) {
    _loadData();
  }

  void _loadData() async {
    emit(
      state.copyWith(status: CommonStateStatus.loading),
    );
    await Future.delayed(
      const Duration(milliseconds: 1000),
    );
    emit(
      state.copyWith(status: CommonStateStatus.loaded),
    );
  }
}

class AppDataLoadState extends Equatable {
  final CommonStateStatus status;

  const AppDataLoadState({this.status = CommonStateStatus.init});

  @override
  List<Object?> get props => [status];

  AppDataLoadState copyWith({
    CommonStateStatus? status,
  }) {
    return AppDataLoadState(
      status: status ?? this.status,
    );
  }
}
