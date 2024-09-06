import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/screen_two.dart';

import 'app_colors.dart';
class ScreenOne extends StatefulWidget {
  final String name;
  const ScreenOne({super.key,this.name=''});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text('Getx ScreenOne ${widget.name}',style: TextStyle(color: AppColors.whiteColor),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: (){
              Get.to(ScreenTwo());
            }, child: Text('Goto ScreenTwo')),
          )
        ],
      ),
    );
  }
}
