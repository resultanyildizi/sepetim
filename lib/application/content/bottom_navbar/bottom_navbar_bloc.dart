import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'bottom_navbar_event.dart';
part 'bottom_navbar_state.dart';

part 'bottom_navbar_bloc.freezed.dart';

@injectable
class BottomNavbarBloc extends Bloc<BottomNavbarEvent, BottomNavbarState> {
  BottomNavbarBloc() : super(BottomNavbarState.initial());

  @override
  Stream<BottomNavbarState> mapEventToState(
    BottomNavbarEvent event,
  ) async* {
    yield state.copyWith(selectedIndex: event.index);
  }
}
