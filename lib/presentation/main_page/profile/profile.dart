import 'package:e_shop/infrastructure/home/logout_repo.dart';
import 'package:flutter/material.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 6,
            width: double.infinity,
            color: const Color.fromARGB(255, 130, 115, 71),
            child: Center(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/3d-render-little-boy-with-glasses-tie-white-background_1142-32328.jpg?size=626&ext=jpg&ga=GA1.2.843125331.1691313888&semt=sph"),
                  ),
                ),
                Text(
                  "Hello Anoop G",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {
                    logOutFunction(context);
                  },
                  child: const Text("Account")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {
                    logOutFunction(context);
                  },
                  child: const Text("My Orders")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {
                    logOutFunction(context);
                  },
                  child: const Text("Log Out")),
            ),
          ),
        ],
      ),
    );
  }
}
