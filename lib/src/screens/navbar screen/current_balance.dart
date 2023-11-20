import "package:flutter/material.dart";

class CurrentBalance extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50.0),
          ),
          const Text(
            "Current Balance",
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            width: 200,
            child: Image.asset('assets/images/balance.png'),
          ),
          const Text(
            "ETB 59.88",
            style: TextStyle(
                fontSize: 70.0,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(150, 0),
                  backgroundColor: const Color(0xFFF87F5B),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(50), // set the border radius here
                  ),
                  padding: const EdgeInsets.all(15.0),
                  // set the background color here
                ),
                onPressed: () {
                  // if(formKey.currentState!.validate()){
                  //   formKey.currentState!.save();
                  //   print("Time to post $email and $password to the API.");
                  // }
                },
                child: const Text(
                  "Go Back",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 50.0),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(150, 0),
                  backgroundColor: const Color(0xFFF87F5B),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(50), // set the border radius here
                  ),
                  padding: const EdgeInsets.all(15.0),
                  // set the background color here
                ),
                onPressed: () {
                  // if(formKey.currentState!.validate()){
                  //   formKey.currentState!.save();
                  //   print("Time to post $email and $password to the API.");
                  // }
                },
                child: const Text(
                  "Top-Up",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
