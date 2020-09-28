import 'dart:async';

import 'package:Sepetim/domain/dynamic_links/i_dynamic_links_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dynamic_links_event.dart';
part 'dynamic_links_state.dart';
part 'dynamic_links_bloc.freezed.dart';

@injectable
class DynamicLinksBloc extends Bloc<DynamicLinksEvent, DynamicLinksState> {
  final IDynamicLinksRepository _dynamicLinksRepository;
  DynamicLinksBloc(this._dynamicLinksRepository)
      : super(DynamicLinksState.initial());

  @override
  Stream<DynamicLinksState> mapEventToState(
    DynamicLinksEvent event,
  ) async* {
    final _dynamicLinkUrl = await _dynamicLinksRepository.createDynamicLink(
      linkDescription: event.linkDescription,
    );

    yield state.copyWith(
      dynamicLinkUrl: _dynamicLinkUrl,
    );
  }
}
