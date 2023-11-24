import 'package:contackbook/controller/home_controller.dart';
import 'package:contackbook/model/usermodel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    homeController.Fetchdata();
    super.initState();
  }

  HomeController homeController = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context, index) => Column(
                children: [Text(homeController.welcomemodel!.name.toString())],
              )),
    );
  }
}
