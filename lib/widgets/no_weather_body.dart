import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/images/background.jpg',
          ),
          fit: BoxFit.cover,
        )),
        child: const Column(
          children: [
            SizedBox(
              height: 280,
            ),
            Center(
              child: Text(
                'There Is No Weather Start',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Text(
                'Searching Now 🔍',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
    // return const Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 16),
    //   child: Center(
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         Text(
    //           'there is no weather 😔 start',
    //           style: TextStyle(
    //             fontSize: 30,
    //           ),
    //         ),
    //         Text(
    //           'searching now 🔍',
    //           style: TextStyle(
    //             fontSize: 30,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
