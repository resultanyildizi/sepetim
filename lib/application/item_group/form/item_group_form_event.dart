part of 'item_group_form_bloc.dart';

@freezed
abstract class ItemGroupFormEvent with _$ItemGroupFormEvent {
  const factory ItemGroupFormEvent.initialized(Option<ItemGroup> initalOption) =
      _Initialized;
  const factory ItemGroupFormEvent.titleChanged(String title) = _TitleChanged;
  const factory ItemGroupFormEvent.saved(UniqueId categoryId) = _Saved;
}
