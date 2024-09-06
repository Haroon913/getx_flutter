import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_colors.dart';
class Localization extends StatefulWidget {
  const Localization({super.key});

  @override
  State<Localization> createState() => _LocalizationState();
}

class _LocalizationState extends State<Localization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text('Getx Localization',style: TextStyle(color: AppColors.whiteColor),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(onPressed: (){
                  Get.updateLocale(Locale('en','US'));
                }, child: Text('English')),
                OutlinedButton(onPressed: (){
                  Get.updateLocale(Locale('ur','PK'));
                }, child: Text('Urdu')),

              ],
            )
          ],
        ),
      ),
    );
  }
}
