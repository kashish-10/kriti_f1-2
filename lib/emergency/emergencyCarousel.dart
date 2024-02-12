import 'package:flutter/material.dart';
import 'package:diva/emergency/emergencyContacts/AmbulanceEmergency.dart';
import 'package:diva/emergency/emergencyContacts/ArmyEmergency.dart';
import 'package:diva/emergency/emergencyContacts/FirebrigadeEmergency.dart';
import 'package:diva/emergency/emergencyContacts/PoliceEmergency.dart';

class EmergencyCarousel extends StatelessWidget {
  const EmergencyCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PoliceEmergency(),
          AmbulanceEmergency(),
          FireEmergency(),
          ArmyEmergency()
        ],
      ),
    );
  }
}
