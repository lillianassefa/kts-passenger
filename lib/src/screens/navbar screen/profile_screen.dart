import 'package:flutter/material.dart';
import 'package:kts/src/router/router.dart';

class ProfileScreen extends StatefulWidget {
  @override
  createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  String _name = 'Lealem Kinfe';
  String _dob = "01.03.1995";
  String _email = 'lealem.kinfe@example.com';
  String _phoneNumber = '+251911 12 54 56';
  String _city = 'Addis Ababa';
  String _sub_city = 'K/Keranyo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 40.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRouter.navBarRoute);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 30.0,
                        ),
                      ),
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Color(0xFFF87F5B),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 70.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Evening,',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            'Lealem Kinfe',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30.0),
                  ),
                  Row(
                    children: [
                      Icon(
                        size: 36.0,
                        Icons.person,
                        color: Color(0xFFF87F5B),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                      ),
                      Text(
                        "Personal Info.",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                          fontSize: 25.0,
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  ),
                  Row(
                    children: [
                      Text(
                        'Name:',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      SizedBox(
                          width:
                              10), // Add some spacing between the label and text field
                      Expanded(
                        child: TextFormField(
                          initialValue: _name,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'DOB:',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30.0),
                      ),
                      SizedBox(
                          width:
                              10), // Add some spacing between the label and text field
                      Expanded(
                        child: TextFormField(
                          initialValue: _dob,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Email:',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      SizedBox(
                          width:
                              10), // Add some spacing between the label and text field
                      Expanded(
                        child: TextFormField(
                          initialValue: _email,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Phone:',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      SizedBox(
                          width:
                              10), // Add some spacing between the label and text field
                      Expanded(
                        child: TextFormField(
                          initialValue: _phoneNumber,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30.0),
                  ),
                  Row(
                    children: [
                      Icon(
                        size: 36.0,
                        Icons.location_on,
                        color: Color(0xFFF87F5B),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                      ),
                      Text(
                        "Address",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                          fontSize: 25.0,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'City:',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 50.0),
                      ),
                      SizedBox(
                          width:
                              10), // Add some spacing between the label and text field
                      Expanded(
                        child: TextFormField(
                          initialValue: _city,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Sub City:',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      SizedBox(
                          width:
                              10), // Add some spacing between the label and text field
                      Expanded(
                        child: TextFormField(
                          initialValue: _sub_city,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30.0),
                  ),
                  Row(
                    children: [
                      Icon(
                        size: 36.0,
                        Icons.fingerprint,
                        color: Color(0xFFF87F5B),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                      ),
                      Text(
                        "Change Password",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                          fontSize: 25.0,
                        ),
                      )
                    ],
                  ),
                  ElevatedButton(
                    child: Text(
                      "Change Password",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 0),
                      backgroundColor: Color(0xFFF87F5B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            50), // set the border radius here
                      ),
                      padding: EdgeInsets.all(10.0),
                      // set the background color here
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRouter.changePasswordRoute);
                    },
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 25.0),
                  ),
                  SizedBox(height: 16.0),
                  Center(
                    child: ElevatedButton(
                      child: Text(
                        "Save Profile",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 0),
                        backgroundColor: Color(0xFFF87F5B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              50), // set the border radius here
                        ),
                        padding: EdgeInsets.all(15.0),
                        // set the background color here
                      ),
                      onPressed: () {
                        // if(formKey.currentState!.validate()){
                        //   formKey.currentState!.save();
                        //   print("Time to post $email and $password to the API.");
                        // }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
