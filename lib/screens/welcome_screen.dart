import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final imagen1 = Image.network(
      "https://images.pexels.com/photos/14446665/pexels-photo-14446665.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load");
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: imagen1.image, fit: BoxFit.cover, opacity: 0.7),
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              children: <Widget>[
                const Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "To Adventures",
                  style: (TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1.5,
                  )),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: Center(
                    child: Image.network(
                      "https://img.freepik.com/premium-vector/eagle-logo_23987-400.jpg?w=1380",
                      height: 150,
                      width: 200,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 280),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: 1.8,
                        ),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Ink(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black54,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
