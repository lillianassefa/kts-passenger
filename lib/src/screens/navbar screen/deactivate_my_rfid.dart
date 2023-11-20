import "package:flutter/material.dart";
import "package:kts/src/screens/navbar%20screen/navBar_screen.dart";

class DeactivateRfid extends StatefulWidget {
  @override
  createState() {
    return DeactivateRfidState();
  }
}

class DeactivateRfidState extends State<DeactivateRfid> {
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: Image.asset(
          'assets/images/logo.png',
          width: 100.0,
          height: 100.0,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50.0),
            ),
            const Text(
              "Deactivate My RFiD",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              width: 200,
              child: Image.asset('assets/images/cutRfid.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(30, 0),
                        backgroundColor: const Color(0xFFF87F5B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            20,
                          ), // set the border radius here
                        ),
                      ),
                      onPressed: () {
                        // if(formKey.currentState!.validate()){
                        //   formKey.currentState!.save();
                        //   print("Time to post $email and $password to the API.");
                        // }
                      },
                      child: const Text(
                        "Anbessa Card",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(70, 0),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              30), // set the border radius here
                        ),
                      ),
                      onPressed: () {
                        // if(formKey.currentState!.validate()){
                        //   formKey.currentState!.save();
                        //   print("Time to post $email and $password to the API.");
                        // }
                      },
                      child: const Text(
                        "Sheger Card",
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(70, 0),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              30), // set the border radius here
                        ),
                      ),
                      onPressed: () {
                        // if(formKey.currentState!.validate()){
                        //   formKey.currentState!.save();
                        //   print("Time to post $email and $password to the API.");
                        // }
                      },
                      child: const Text(
                        "LRT Card",
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 0),
                backgroundColor: const Color(0xFFF87F5B),
                padding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),

                  // set the border radius here
                ),
              ),
              onPressed: () {
                // if(formKey.currentState!.validate()){
                //   formKey.currentState!.save();
                //   print("Time to post $email and $password to the API.");
                // }
              },
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
