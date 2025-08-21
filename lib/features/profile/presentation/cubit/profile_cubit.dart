import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.initial());

  void updateProfile({
    required String name,
    required String mobileNumber,
    required String email,
  }) {
    emit(const ProfileState.loading());
    
    // Simulate API call
    Future.delayed(const Duration(seconds: 2), () {
      // Here you would typically call your repository/API
      emit(const ProfileState.success());
    });
  }

  void updateProfileImage(String imagePath) {
    emit(const ProfileState.loading());
    
    // Simulate API call for image upload
    Future.delayed(const Duration(seconds: 1), () {
      emit(const ProfileState.success());
    });
  }
}
