import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/app_colors.dart';
import 'package:getx_flutter/screen_one.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text('Getx',style: TextStyle(color: AppColors.whiteColor),),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Getx Dialog Alert'),
              subtitle: Text('Dialog alert using Getx'),
              onTap:(){
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titleStyle: TextStyle(color: AppColors.primaryColor),
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(10),
                  middleText: 'Are you sure too delete this chat',
                  confirm: TextButton(onPressed: (){
                    Get.back();                }, child: Text('OK')),
                  cancel: TextButton(onPressed: (){
                    Get.back();                }, child: Text('Cancel')),
            
            
                );
              }
            ),
          ),
          Card(
            child: ListTile(
                title: Text('Getx Bottom Sheet'),
                subtitle: Text('Dialog alert using Getx'),
                onTap:(){
                  Get.bottomSheet(Container(
                    height: MediaQuery.of(context).size.height*.25,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20))
                    ),
                    child:  Column(
                      children: [
                        ListTile(
                          leading:Icon(Icons.light_mode,color: AppColors.whiteColor,),
                          title: Text('Light Theme',style: TextStyle(color: AppColors.whiteColor),),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading:Icon(Icons.dark_mode,color: AppColors.whiteColor,),
                          title: Text('Dark Theme',style: TextStyle(color: AppColors.whiteColor),),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        )
                      ],
                    ),
                  ));
                }
            ),
          ),
          TextButton(
              onPressed: (){
            Get.to(ScreenOne(name: 'Haroon',));
          }, child: Text('Goto  ScreenOne')),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar('Haroon', 'Flutter Developer');
      }),
    );
  }
}
