import 'package:flutter/material.dart';
import 'package:kts/src/screens/navbar%20screen/buy_specific_fare.dart';
import 'package:kts/src/screens/navbar%20screen/choose_package.dart';
import 'package:kts/src/screens/navbar%20screen/congratulations.dart';
import 'package:kts/src/screens/navbar%20screen/service_provider.dart';

class BuyTickets extends StatefulWidget {
  @override
  createState() => BuyTicketsState();
}

class BuyTicketsState extends State<BuyTickets> {
  int formState = 0;

  void setFormState(int value) {
    setState(() {
      formState = value;
    });
  }

  @override
  Widget build(context) {
    return formState == 0
        ? ServiceProvider(setFormState: setFormState)
        : formState == 1
            ? ChoosePackage(setFormState: setFormState)
            : formState == 2
                ? BuySpecificFare(setFormState: setFormState)
                : Congratualtions();
  }
}
