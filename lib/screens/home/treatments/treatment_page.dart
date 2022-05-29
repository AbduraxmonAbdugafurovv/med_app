import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medapp/core/constant/constant.dart';
import 'package:medapp/core/extension/context_ex.dart';
import 'package:medapp/core/init/navigation_service.dart';
import 'package:medapp/screens/home/bloc/cubit/home_cubit.dart';
import 'package:medapp/screens/home/bloc/state/home_state.dart';

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
                  ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                    return InkWell(child: treatmentList(context),onTap: (){
                      NavigationService.instance.pushNamed("treatment_details");
                    },);
                  }),
                   Center(
                    child: ListView.builder(itemBuilder: (context,index){
                      return SizedBox();
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

  SizedBox treatmentList(BuildContext context) {
    return SizedBox(
                            height: context.height * 0.13,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Aortic ",
                                        style: TextStyle(
                                            fontSize:
                                                FontConst.mediumFont + 2,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.chevron_right,
                                          size: 33,
                                          color: ColorConst.black
                                              .withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 6),
                                    child: Text(
                                      'Mamurov abbos',
                                      style: TextStyle(
                                          fontSize: FontConst.mediumFont,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 7),
                                    child: Text(
                                      "Familiy clinic",
                                      style: TextStyle(
                                          fontSize: FontConst.mediumFont - 2,
                                          fontWeight: FontWeight.w500,
                                          color: ColorConst.black
                                              .withOpacity(0.5)),
                                    ),
                                  ),
                                  Divider(
                                    color: ColorConst.black.withOpacity(0.5),
                                  )
                                ],
                              ),
                            ),
                          );
  }
}
