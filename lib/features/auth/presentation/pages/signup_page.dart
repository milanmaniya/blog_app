import 'package:blog_app/core/theme/app_pallet.dart';
import 'package:blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static routes() => MaterialPageRoute(
        builder: (context) => const SignUpPage(),
      );

  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final txtEmail = TextEditingController();
  final txtPassword = TextEditingController();
  final txtName = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    txtEmail.dispose();
    txtPassword.dispose();
    txtName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign Up.',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              AuthField(
                hintText: 'Name',
                controller: txtName,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthField(
                hintText: 'Email',
                controller: txtEmail,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthField(
                isObsecureText: true,
                hintText: 'Password',
                controller: txtPassword,
              ),
              const SizedBox(
                height: 20,
              ),
              const AuthGradientButton(
                buttonName: 'Sign Up',
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    LoginPage.routes(),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: "Already have an acount?",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: ' Sign In',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: AppPallete.gradient2,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
