import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'contact_us_cubit.freezed.dart';
part 'contact_us_state.dart';

@injectable
class ContactUsCubit extends Cubit<ContactUsState> {
  ContactUsCubit() : super(const ContactUsState.initial());

  void submitContactForm({
    required String name,
    required String phone,
    required String propertyCode,
    required String message,
  }) {
    emit(const ContactUsState.loading());

    // TODO: Implement API call to submit contact form
    // For now, just simulate success
    Future.delayed(const Duration(seconds: 2), () {
      emit(const ContactUsState.success());
    });
  }

  void resetState() {
    emit(const ContactUsState.initial());
  }
}
