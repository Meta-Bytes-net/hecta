import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'more_cubit_state.dart';

@injectable
class MoreCubitCubit extends Cubit<MoreCubitState> {
  MoreCubitCubit() : super(MoreCubitInitial());
}
