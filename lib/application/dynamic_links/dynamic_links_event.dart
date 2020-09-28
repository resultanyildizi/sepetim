part of 'dynamic_links_bloc.dart';

@freezed
abstract class DynamicLinksEvent with _$DynamicLinksEvent {
  const factory DynamicLinksEvent.dynamicLinkCreated({
    @required String linkDescription,
  }) = _DynamicLinkCreated;
}
