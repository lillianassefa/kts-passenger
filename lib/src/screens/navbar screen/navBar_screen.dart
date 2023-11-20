import 'package:flutter/material.dart';
import 'package:kts/src/router/router.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFFF87F5B),
                  child: Icon(
                    Icons.person,
                    size: 50.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Lealem Kinfe",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Good Evening",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(80, 0),
                    backgroundColor: const Color(0xFFF87F5B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    // set the background color here
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRouter.profileRoute);
                  },
                  child: Row(
                    children: const [
                      Text("Edit"),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.edit),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Image.asset(
              'assets/icons/deactivate.png',
              width: 30,
              height: 30,
              color: Color(0xFFF87F5B),
            ),
            title: const Text("Deactivate My RFiD"),
            onTap: () {
              Navigator.pushNamed(context, AppRouter.deactivateRfidRoute);
            },
          ),
          ListTile(
            leading: Image.asset(
              'assets/icons/request.png',
              width: 30,
              height: 30,
              color: Color(0xFFF87F5B),
            ),
            title: const Text("Request New RFiD"),
            onTap: () {
              Navigator.pushNamed(context, AppRouter.requestNewRfidRoute);
            },
          ),
          const Divider(
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: const Icon(
              Icons.color_lens,
              color: Color(0xFFF87F5B),
            ),
            title: const Text("Change Theme"),
            onTap: () {
              Navigator.pushNamed(context, AppRouter.changeThemeRoute);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.info_outline_rounded,
              color: Color(0xFFF87F5B),
            ),
            title: const Text("About KTS"),
            onTap: () {
              Navigator.pushNamed(context, AppRouter.aboutKtsRoute);
            },
          ),
          const Spacer(),
          const Divider(
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Color(0xFFF87F5B),
            ),
            title: const Text("Sign Out"),
            onTap: () {
              Navigator.pushNamed(context, AppRouter.authRoute);
            },
          ),
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              'Kelal Transportation Systems',
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Center(
            child: Text(
              'All Rights Reserved',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
