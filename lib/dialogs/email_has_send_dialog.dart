import 'package:flutter/cupertino.dart';

import '../auth/auth_error.dart';
import 'generic_dialog.dart';

Future<bool> emailHasSentDialog(BuildContext context) {
  return showGenericDialog<bool>(
      context: context,
      title: 'Reset password',
      content: "Please check your email to reset your password!",
      optionsBuilder: () =>
      {
        'Ok': false,
      }
  ).then(
        (value) => value ?? false,
  );
}