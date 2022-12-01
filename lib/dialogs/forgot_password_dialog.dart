import 'package:flutter/cupertino.dart';

import '../auth/auth_error.dart';
import 'generic_dialog.dart';

Future<bool> showForgotPasswordDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Forgot password',
    content: "Please provide your account's email for which you want to reset your password!",
    optionsBuilder: () =>
    {
      'Ok': false,
    }
  ).then(
        (value) => value ?? false,
  );
}