import 'package:Sepetim/app_localization.dart';
import 'package:Sepetim/application/contact_us/contact_us_bloc.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:Sepetim/domain/item/item.dart';
import 'package:Sepetim/domain/item/value_objects.dart';
import 'package:Sepetim/presentation/core/widgets/buttons.dart';
import 'package:Sepetim/presentation/sign_in/widgets/auth_failure_popups.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

double screenWidthByScalar(BuildContext context, double scalar) {
  return MediaQuery.of(context).size.width * scalar;
}

double screenHeightByScalar(
  BuildContext context, {
  @required double scalarSmall,
  @required double scalarMedium,
  @required double scalarBig,
}) {
  if (MediaQuery.of(context).size.height < 700) {
    return MediaQuery.of(context).size.height * scalarSmall;
  } else if (MediaQuery.of(context).size.height < 800) {
    return MediaQuery.of(context).size.height * scalarMedium;
  } else {
    return MediaQuery.of(context).size.height * scalarBig;
  }
}

String translate(BuildContext context, String key) {
  return AppLocalizations.of(context).translate(key);
}

Price totalItemsPrice(KtList<Item> items) {
  double totalPrice = 0;

  items.forEach((item) {
    if (item.failureOption.isNone()) {
      totalPrice += item.price.getOrCrash();
    }
  });
  return Price(totalPrice.toString());
}

BlocConsumer<ContactUsBloc, ContactUsState> reactiveErrorOutlineButton({
  @required UniqueId categoryId,
  @required UniqueId groupId,
  @required UniqueId itemId,
  @required String details,
  Color color = Colors.white,
}) {
  ErrorOutlineButtonState buttonState = ErrorOutlineButtonState.normal;
  return BlocConsumer<ContactUsBloc, ContactUsState>(
    listener: (context, state) {
      state.contactUsFailureOrUnitOption.fold(
        () {},
        (either) => either.fold(
          (f) => f.map(
            networkException: (_) => networkExceptionPopup(context),
            unexpectedServerError: (_) => serverErrorPopup(context),
          ),
          (_) {
            buttonState = ErrorOutlineButtonState.done;
          },
        ),
      );
    },
    builder: (context, state) {
      return ErrorOutlineButton(
        onPressed: () {
          buttonState = ErrorOutlineButtonState.loading;
          context.bloc<ContactUsBloc>().add(
                ContactUsEvent.reportMailSent(
                  categoryId: optionOf(categoryId),
                  groupId: optionOf(groupId),
                  itemId: optionOf(itemId),
                  details: details,
                ),
              );
        },
        state: buttonState,
        color: color,
      );
    },
  );
}
