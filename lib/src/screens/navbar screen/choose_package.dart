import "package:flutter/material.dart";

class ChoosePackage extends StatefulWidget {
  Function setFormState;

  ChoosePackage({
    required this.setFormState,
  });
  @override
  createState() => ChoosePackageState();
}

class ChoosePackageState extends State<ChoosePackage> {
  @override
  Widget build(context) {
    return WillPopScope(
      onWillPop: () async {
        widget.setFormState(0);
        return false;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Choose The Package \n You Want to Buy",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: ListTile(
                tileColor: const Color(0xFFF87F5B),
                title: const Text(
                  "Buy Multiple Fares",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onTap: () {
                  widget.setFormState(2);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                title: const Text(
                  "Weekly Package",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onTap: () {
                  widget.setFormState(2);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                title: const Text(
                  "Monthly Package",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onTap: () {
                  widget.setFormState(1);
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 0),
                backgroundColor: const Color(0xFFF87F5B),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20), // set the border radius here
                ),
                padding: const EdgeInsets.all(15.0),
                // set the background color here
              ),
              onPressed: () {
                widget.setFormState(2);
              },
              child: const Text(
                "Confirm",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 0),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20), // set the border radius here
                ),
                padding: const EdgeInsets.all(15.0),
                // set the background color here
              ),
              onPressed: () {
                widget.setFormState(0);
              },
              child: const Text(
                "Back",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFFF87F5B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
