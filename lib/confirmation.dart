import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:washit/welcome.dart';

class Confirm extends StatelessWidget {
  const Confirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Thank You",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellowAccent,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Your order has been confirmed\nOur WashIn agent will pickup\nyour supplies tomorrow\n\n\nPlease keep patience.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: (() => Get.to(Get.off(Welcome()))),
                    child: const SizedBox(
                      height: 60,
                      width: 150,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Home",
                          style: TextStyle(fontSize: 25, color: Colors.blue),
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
