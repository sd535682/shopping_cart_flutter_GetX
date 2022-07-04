import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:washit/controller.dart';
import 'package:washit/order_details.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Washit")),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "*** Note : We are currently providing service within 5 km from Girishpark ***",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Text(
                "Shirt & T-Shirts - {Rs.20}",
                style: TextStyle(fontSize: 20),
              ),
              Expanded(child: Container()),
              IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  onPressed: () => c.incrementshirtTshirt()),
              const SizedBox(
                width: 20,
              ),
              Obx((() => Text(
                    "${c.shirtTshirt.toString()}",
                    style: const TextStyle(fontSize: 25),
                  ))),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.blue,
                ),
                onPressed: () => c.decrementshirtTshirt(),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text(
                "Jeans & Trousers - {Rs.20}",
                style: TextStyle(fontSize: 20),
              ),
              Expanded(child: Container()),
              IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  onPressed: () => c.incrementpantTrouser()),
              const SizedBox(
                width: 20,
              ),
              Obx((() => Text(
                    "${c.pantTrouser.toString()}",
                    style: const TextStyle(fontSize: 25),
                  ))),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.blue,
                ),
                onPressed: () => c.decrementpantTrouser(),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text(
                "Sweater & Coats - {Rs.40}",
                style: TextStyle(fontSize: 20),
              ),
              Expanded(child: Container()),
              IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  onPressed: () => c.incrementsweaterCoat()),
              const SizedBox(
                width: 20,
              ),
              Obx((() => Text(
                    "${c.sweaterCoat.toString()}",
                    style: const TextStyle(fontSize: 25),
                  ))),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.blue,
                ),
                onPressed: () => c.decrementsweaterCoat(),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text(
                "Saree & Salwars - {Rs.30}",
                style: TextStyle(fontSize: 20),
              ),
              Expanded(child: Container()),
              IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  onPressed: () => c.incrementsareeSalwars()),
              const SizedBox(
                width: 20,
              ),
              Obx((() => Text(
                    "${c.sareeSalwars.toString()}",
                    style: const TextStyle(fontSize: 25),
                  ))),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.blue,
                ),
                onPressed: () => c.decrementsareeSalwars(),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text(
                "Bedsheet & Covers - {Rs.25}",
                style: TextStyle(fontSize: 20),
              ),
              Expanded(child: Container()),
              IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  onPressed: () => c.incrementbedsheetCovers()),
              const SizedBox(
                width: 20,
              ),
              Obx((() => Text(
                    "${c.bedsheetCovers.toString()}",
                    style: const TextStyle(fontSize: 25),
                  ))),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.blue,
                ),
                onPressed: () => c.decrementbedsheetCovers(),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total Amount",
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
              Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue),
                  child: Obx(
                    () => Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Rs.  ${c.sum.toString()}",
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: (() => Get.to(Order())),
                  child: const Text(
                    "Proceed",
                    style: TextStyle(fontSize: 25),
                  )),
            ],
          )
        ]),
      ),
    );
  }
}
