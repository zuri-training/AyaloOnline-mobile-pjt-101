import 'package:ayalo_mobile_pjt101/Screens/LoggingAndSigningScreens/login_screen.dart';
import 'package:ayalo_mobile_pjt101/Screens/home.dart';
import 'package:ayalo_mobile_pjt101/state_manager/log_status.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logStatus = Provider.of<LogStatus>(context);
    bool status = Provider.of<LogStatus>(context).status;
    return Scaffold(
      body: status ? Home() : LoginScreen(),
    );
  }
}
