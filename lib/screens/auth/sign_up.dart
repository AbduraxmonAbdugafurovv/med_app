import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medapp/core/components/mainbutton.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/init/navigation_service.dart';
import 'package:medapp/screens/auth/cubit/auth_cubit.dart';
import 'package:medapp/screens/auth/state/auth_state.dart';
import 'package:medapp/screens/home/bloc/cubit/home_cubit.dart';
import 'package:medapp/screens/home/bloc/state/home_state.dart';
import '../../core/components/inputfield.dart';
import '../../core/components/text_before_input.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final name = context.watch<AuthCubit>().nameConroller;
    final phone = context.watch<AuthCubit>().phoneNumberConroller;
    final password = context.watch<AuthCubit>().passwordConroller;
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      if (state is AuthInitial) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Sign Up",
              style: TextStyle(color: ColorConst.kPimaryColor),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: ColorConst.kPimaryColor),
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // signAppBar(context),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: context.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Sign up in order to get a full acces to the system",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: FontConst.mediumFont,
                            color: ColorConst.black.withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(height: context.height * 0.1),
                      Form(
                        key: _key,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textBeforeInput("Full name"),
                            SizedBox(
                              height: context.height * 0.01,
                            ),
                            inputfield("Enter your full name...",name),

                            textBeforeInput("Phone number"),
                            SizedBox(
                              height: context.height * 0.01,
                            ),
                            inputfield("Enter your phone number...",phone),

                            textBeforeInput("Create password"),
                            SizedBox(
                              height: context.height * 0.01,
                            ),
                            inputfield("Create your new password...",password),
                          ],
                        ),
                      ),
                      SizedBox(height: context.height * 0.25),
                      InkWell(
                        child: mainButton(context, "Continue"),
                        onTap: () {
                          if (_key.currentState!.validate()) {
                            NavigationService.instance.pushNamed("confirm");
                          }
                        },
                      ),
                      SizedBox(
                        height: context.height * 0.05,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      } else {
        return const Text("State daa Hatooo");
      }
    });
  }
}
