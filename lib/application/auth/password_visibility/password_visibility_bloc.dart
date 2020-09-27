import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'password_visibility_event.dart';
part 'password_visibility_state.dart';

part 'password_visibility_bloc.freezed.dart';

@injectable
class PasswordVisibilityBloc
    extends Bloc<PasswordVisibilityEvent, PasswordVisibilityState> {
  PasswordVisibilityBloc() : super(PasswordVisibilityState.initial());
  @override
  Stream<PasswordVisibilityState> mapEventToState(
    PasswordVisibilityEvent event,
  ) async* {
    yield state.copyWith(isVisible: !state.isVisible);
  }
}
