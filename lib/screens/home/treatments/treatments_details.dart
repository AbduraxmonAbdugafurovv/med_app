import 'package:flutter/material.dart';
import 'package:medapp/core/widget/sign_appbar.dart';

class TreatmentDetails extends StatefulWidget {
  const TreatmentDetails({Key? key}) : super(key: key);

  @override
  State<TreatmentDetails> createState() => _TreatmentDetailsState();
}

class _TreatmentDetailsState extends State<TreatmentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: signAppBar(context, "Treatment details"),
    );
  }
}