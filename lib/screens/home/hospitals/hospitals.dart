import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';

class HospitalsPage extends StatefulWidget {
  const HospitalsPage({Key? key}) : super(key: key);

  @override
  State<HospitalsPage> createState() => _HospitalsPageState();
}

class _HospitalsPageState extends State<HospitalsPage> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: context.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: context.height * 0.04,
                        width: context.width * 0.1,
                        child: Image.asset("assets/icons/profile.png")),
                    SizedBox(
                        height: context.height * 0.03,
                        child: SvgPicture.asset("assets/icons/med.svg")),
                    SvgPicture.asset("assets/icons/filter.svg")
                  ],
                ),
              ),
              SizedBox(
                height: context.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: context.height*0.05,
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: ColorConst.red),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: ColorConst.black,
              )
            ],
          ),
        ],
      ),
    );
  }
}
