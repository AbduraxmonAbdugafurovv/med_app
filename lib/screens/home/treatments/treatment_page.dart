import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/init/navigation_service.dart';
import 'package:medapp/screens/home/bloc/cubit/home_cubit.dart';
import 'package:medapp/screens/home/bloc/state/home_state.dart';

import '../../../core/components/home/treatment/drugmethod.dart';
import '../../../core/components/home/treatment/treatment_list.dart';

class TreatmentPage extends StatefulWidget {
  const TreatmentPage({Key? key}) : super(key: key);

  @override
  State<TreatmentPage> createState() => _TreatmentPageState();
}

class _TreatmentPageState extends State<TreatmentPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is InitialHome) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 1,
                leading: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: context.width * 0.08,
                    child: Image.asset("assets/icons/profile.png"),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset("assets/icons/notification.svg"),
                  )
                ],
                title: SizedBox(
                    height: context.height * 0.03,
                    child: SvgPicture.asset("assets/icons/med.svg")),
                bottom: TabBar(
                  labelColor: ColorConst.blue,
                  unselectedLabelColor: ColorConst.black.withOpacity(0.7),
                  indicatorColor: ColorConst.blue,
                  controller: _tabController,
                  tabs: const <Widget>[
                    Tab(
                      icon: Text(
                        "Current tretment",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Tab(
                      icon: Text(
                        "Medical history",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Tab(
                      icon: Text("Drug history",
                          style: TextStyle(fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Center(
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: treatmentList(context),
                            onTap: () {
                              NavigationService.instance
                                  .pushNamed("treatment_details");
                            },
                          );
                        }),
                  ),
                  Center(
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: treatmentList(context),
                            onTap: () {
                              NavigationService.instance
                                  .pushNamed("treatment_details");
                            },
                          );
                        }),
                  ),
                  Center(
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return InkWell(child: drugMethod(context),onTap: (){
                            NavigationService.instance.pushNamed("drug_history");
                          },);
                        }),
                  ),
                ],
              ),
            );
          } else {
            return const Text("Hato");
          }
        },
        listener: (context, state) {});
  }
}
