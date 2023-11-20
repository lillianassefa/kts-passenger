import "package:flutter/material.dart";

class ChangePassword extends StatefulWidget {
  @override
  createState() => ChangePasswordState();
}

class ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Change Your \n Password",
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              width: 200,
              child: Image.asset("assets/images/lock.png"),
            ),
            Form(
              child: Column(
                children: [
                  SizedBox(
                    width: 300.0,
                    child: Center(
                      child: currentPasswordField(),
                    ),
                  ),
                  SizedBox(
                    width: 300.0,
                    child: Center(
                      child: newPasswordField(),
                    ),
                  ),
                  SizedBox(
                    width: 300.0,
                    child: Center(
                      child: confirmPasswordField(),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  ),
                  SizedBox(
                    width: 750.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: submitButton(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget currentPasswordField() {
  return const TextField(
    obscureText: true,
    decoration: InputDecoration(
      //  filled: true,
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFF87F5B),
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFF87F5B),
        ),
      ),
      labelText: "Current Password",
      labelStyle: TextStyle(
        color: Color(0xFFF87F5B),
      ),
    ),
    // validator:validateEmail,
    // onSaved: (value){
    //   email = value;
    // }
  );
}

Widget newPasswordField() {
  return TextFormField(
    obscureText: true,
    decoration: const InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFF87F5B),
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFF87F5B),
        ),
      ),
      labelText: 'New Password',
      // hintText: 'Password',
      labelStyle: TextStyle(
        color: Color(0xFFF87F5B),
      ),
    ),
    // onSaved: (value)=> password = value,
    // validator: validatePassword,
  );
}

Widget confirmPasswordField() {
  return TextFormField(
    obscureText: true,
    decoration: const InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFF87F5B),
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFF87F5B),
        ),
      ),
      labelText: 'Confirm Password',
      // hintText: 'Password',
      labelStyle: TextStyle(
        color: Color(0xFFF87F5B),
      ),
    ),
    // onSaved: (value)=> password = value,
    // validator: validatePassword,
  );
}

Widget submitButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(300, 0),
      backgroundColor: const Color(0xFFF87F5B),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50), // set the border radius here
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
      "Save",
      style: TextStyle(fontSize: 16.0),
    ),
  );
}
