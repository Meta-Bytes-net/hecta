import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'edit_profile_state.dart';

@injectable
class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(const EditProfileState.initial());

  void updateProfile({
    required String name,
    required String mobileNumber,
    required String email,
  }) {
    emit(const EditProfileState.loading());

    // Simulate API call
    Future.delayed(const Duration(seconds: 2), () {
      // Here you would typically call your repository/API
      emit(const EditProfileState.success());
    });
  }

  void updateProfileImage(String imagePath) {
    emit(const EditProfileState.loading());

    // Simulate API call for image upload
    Future.delayed(const Duration(seconds: 1), () {
      emit(const EditProfileState.success());
    });
  }
}
