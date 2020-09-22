import 'package:Sepetim/application/auth/password_visibility/password_visibility_bloc.dart';
import 'package:Sepetim/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:Sepetim/predefined_variables/colors.dart';
import 'package:Sepetim/predefined_variables/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget emailFormField(BuildContext context) {
  return TextFormField(
    cursorColor: sepetimGrey,
    keyboardType: TextInputType.emailAddress,
    style: Theme.of(context).textTheme.subtitle1,
    decoration: InputDecoration(labelText: translate(context, 'email')),
    autocorrect: false,
    onChanged: (value) => context
        .bloc<SignInFormBloc>()
        .add(SignInFormEvent.emailChanged(value.trim())),
    validator: (_) =>
        context.bloc<SignInFormBloc>().state.emailAddress.value.fold(
              (f) => f.maybeMap(
                invalidEmail: (_) => translate(context, 'invalid_email'),
                orElse: () => null,
              ),
              (_) => null,
            ),
  );
}

Widget passwordFormField(BuildContext context) {
  return BlocBuilder<PasswordVisibilityBloc, PasswordVisibilityState>(
    builder: (context, state) => TextFormField(
      obscureText: !state.isVisible,
      cursorColor: sepetimGrey,
      keyboardType: TextInputType.visiblePassword,
      style: Theme.of(context).textTheme.subtitle1,
      decoration: InputDecoration(
        labelText: translate(context, 'password'),
        suffixIcon: IconButton(
          icon: state.isVisible
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
          onPressed: () => context.bloc<PasswordVisibilityBloc>().add(
                const PasswordVisibilityEvent.visibilityChanged(),
              ),
          color: sepetimLightGrey,
        ),
      ),
      autocorrect: false,
      onChanged: (value) => context
          .bloc<SignInFormBloc>()
          .add(SignInFormEvent.passwordChanged(value)),
      validator: (_) =>
          context.bloc<SignInFormBloc>().state.password.value.fold(
                (f) => f.maybeMap(
                  weakPassword: (_) => translate(context, 'weak_password'),
                  orElse: () => null,
                ),
                (_) => null,
              ),
    ),
  );
}
