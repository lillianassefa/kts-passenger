import "package:flutter/material.dart";
import "package:kts/src/screens/navbar%20screen/navBar_screen.dart";

class RequestNewRfid extends StatefulWidget {
  @override
  createState() {
    return RequestNewRfidState();
  }
}

class RequestNewRfidState extends State<RequestNewRfid> {
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: Image.asset('assets/images/anbessa.png'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50.0),
            ),
            const Text(
              "Request New RFiD",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              width: 200,
              child: Image.asset('assets/images/newRfid.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
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
                              20), // set the border radius here
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
