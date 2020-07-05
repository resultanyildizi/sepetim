part of 'bottom_navbar_bloc.dart';

@freezed
abstract class BottomNavbarEvent with _$BottomNavbarEvent {
  const factory BottomNavbarEvent.indexChanged({@required int index}) =
      _BottomNavbarEvent;
}
