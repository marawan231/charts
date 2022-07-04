import 'package:charts/presentation/models/temp.dart';
import 'package:flutter/material.dart';

import '../resources/color_manger.dart';
import '../resources/routes_manager.dart';
import '../widgets/my_home_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  _buildPopUpMessage(context) {
    if (errorList![0].toString() != '') {
      return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Fault'),
          content: Text(errorList![0]),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('ok'))
          ],
        ),
        // ignore: avoid_print
      );
    } else {
      return print('asdasd');
    }
  }

  _buildBody(context) {
    return SingleChildScrollView(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 8,
          ),
          MyHomeContainer(
            ontap: () {
              Navigator.pushNamed(context, Routes.tempretureScreen);
            },
            containerColor: ColorManager.myPurble,
            text: 'Tempreature',
            fontColor: ColorManager.myWhite,
          ),
          const SizedBox(
            height: 8,
          ),
          MyHomeContainer(
            ontap: () {
              Navigator.pushNamed(context, Routes.humidtyScreen);
            },
            containerColor: Colors.blue,
            text: 'Humidty',
            fontColor: ColorManager.myWhite,
          ),
          const SizedBox(
            height: 8,
          ),
          MyHomeContainer(
              ontap: () {
                Navigator.pushNamed(context, Routes.currentScreen);
              },
              containerColor: ColorManager.myDarkBlue,
              text: 'Current',
              fontColor: ColorManager.myWhite),
          const SizedBox(
            height: 8,
          ),
          MyHomeContainer(
              ontap: () {
                Navigator.pushNamed(context, Routes.powerScreen);
              },
              containerColor: ColorManager.myPink,
              text: 'Power',
              fontColor: ColorManager.myWhite),
          const SizedBox(
            height: 8,
          ),
          MyHomeContainer(
            ontap: () {
              Navigator.pushNamed(context, Routes.ldr);
            },
            containerColor: Colors.black,
            text: 'L D R',
            fontColor: ColorManager.myWhite,
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration.zero,
      () => _buildPopUpMessage(context),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.myPurble,
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: _buildBody(context),
    );
  }
}
