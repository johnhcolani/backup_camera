import 'package:backup_camera/auth/auth_error.dart';
import 'package:flutter/cupertino.dart';

import 'generic_dialog.dart';

Future<void> showAuthError({
  required AuthError authError,
  required BuildContext context}) {
  return showGenericDialog<void>(
    context: context,
    title: authError.dialogTitle,
    content: authError.dialogText,
    optionsBuilder: () => {
      'Ok': true,
      },

  );
}
