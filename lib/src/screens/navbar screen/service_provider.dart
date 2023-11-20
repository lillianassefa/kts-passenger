import 'package:flutter/material.dart';

class ServiceProvider extends StatefulWidget {
  Function setFormState;

  ServiceProvider({
    required this.setFormState,
  });

  @override
  createState() => ServiceProviderState();
}

class ServiceProviderState extends State<ServiceProvider> {
  @override
  Widget build(context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50.0),
            ),
            const Text(
              "Buy Tickets",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              width: 200,
              child: Image.asset('assets/images/buyticket.png'),
            ),
            const Text(
              "Choose Service Provider",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      widget.setFormState(1);
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset('assets/images/anbessa.png'),
                          ),
                          const Text(
                            "Anbessa",
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30.0),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      widget.setFormState(1);
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset('assets/images/sheger.png'),
                          ),
                          const Text(
                            "Sheger",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
