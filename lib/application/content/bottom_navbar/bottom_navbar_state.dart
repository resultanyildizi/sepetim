part of 'bottom_navbar_bloc.dart';

@freezed
abstract class BottomNavbarState with _$BottomNavbarState {
  const factory BottomNavbarState({
    @required int selectedIndex,
  }) = _BottomNavbarState;

  factory BottomNavbarState.initial() =>
      const BottomNavbarState(selectedIndex: 2);
}
