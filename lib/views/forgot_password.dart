import 'package:backup_camera/bloc/app_event.dart';
import 'package:backup_camera/extensions/if_debugging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../bloc/app_bloc.dart';

class ForgotPassword extends HookWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController(
      text: 'johnhcolani@gmail.com'.ifDebugging,
    );


    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forgot Password',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Enter your email here...',
              ),
              keyboardType: TextInputType.emailAddress,
              keyboardAppearance: Brightness.dark,
            ),

            TextButton(
              onPressed: () {
                final email = emailController.text;
                context.read<AppBloc>().add(
                  AppEventForgotPassword(
                    email: email,

                  ),
                );
              },
              child: const Text(
                'Reset Password',
              ),
            ),


          ],
        ),
      ),
    );
  }
}