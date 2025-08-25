part of 'contact_us_cubit.dart';

@freezed
class ContactUsState with _$ContactUsState {
  const factory ContactUsState.initial() = _Initial;
  const factory ContactUsState.loading() = _Loading;
  const factory ContactUsState.success() = _Success;
  const factory ContactUsState.error(String message) = _Error;
}
