import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'customer_services_state.dart';

@injectable
class CustomerServicesCubit extends Cubit<CustomerServicesState> {
  CustomerServicesCubit() : super(CustomerServicesInitial());
}
