import 'package:delivery/common/custom_appbar.dart';
import 'package:delivery/common/custom_container.dart';
import 'package:delivery/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: CustomAppBar(),
      ),
      body: SafeArea(child: CustomContainer(containerContent: Container())),
    );
  }
}
