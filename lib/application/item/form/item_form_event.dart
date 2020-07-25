part of 'item_form_bloc.dart';

@freezed
abstract class ItemFormEvent with _$ItemFormEvent {
  const factory ItemFormEvent.initialized(Option<Item> initialOption) =
      _Initialized;
  const factory ItemFormEvent.titleChanged(String title) = _TitleChanged;
  const factory ItemFormEvent.priceChanged(String price) = _PriceChanged;
  const factory ItemFormEvent.descriptionChanged(String descriptionBody) =
      _DescriptionChanged;
  const factory ItemFormEvent.imageChanged(int index, ImageSource imageSource) =
      _ImageChanged;
  const factory ItemFormEvent.saved(
    UniqueId categoryId,
    UniqueId groupId,
  ) = _Saved;
}
