part of 'dynamic_links_bloc.dart';

@freezed
abstract class DynamicLinksState with _$DynamicLinksState {
  const factory DynamicLinksState({@required String dynamicLinkUrl}) =
      _DynamicLinksState;
  factory DynamicLinksState.initial() =>
      const DynamicLinksState(dynamicLinkUrl: '');
}
