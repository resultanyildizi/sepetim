part of 'item_category_form_bloc.dart';

@freezed
abstract class ItemCategoryFormEvent with _$ItemCategoryFormEvent {
  const factory ItemCategoryFormEvent.initialized(
      Option<ItemCategory> initialOption) = _Initialized;
  const factory ItemCategoryFormEvent.titleChanged(String title) =
      _TitleChanged;
  const factory ItemCategoryFormEvent.colorChanged(Color color) = _ColorChanged;
  const factory ItemCategoryFormEvent.coverImageChanged(
      ImageSource imageSource) = _CoverImageChanged;
  const factory ItemCategoryFormEvent.coverImageRemoved() = _CoverImageRemoved;
  const factory ItemCategoryFormEvent.saved() = _Saved;
}
