import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:washit/confirmation.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Washit"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Enter Order Details",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "*** We are accepting COD only ***",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Your Name", labelText: "Name"),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Your Address", labelText: "Address"),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Famous places in your area",
                    labelText: "Landmark"),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Enter Pincode",
                  labelText: "Pincode",
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) return "Enter Number";
                  if (value.length > 10)
                    return "Invalid Number";
                  else
                    return null;
                },
                decoration: const InputDecoration(
                  hintText: "Enter Your Mobile Number ",
                  labelText: "Mobile Number",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: (() => Get.to(Confirm())),
                      child: const SizedBox(
                        height: 60,
                        width: 150,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Confirm",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
