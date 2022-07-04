import 'package:get/get.dart';

class MyController extends GetxController {
  var shirtTshirt = 0.obs;
  var pantTrouser = 0.obs;
  var sweaterCoat = 0.obs;
  var sareeSalwars = 0.obs;
  var bedsheetCovers = 0.obs;

  int get sum =>
      shirtTshirt.value * 20 +
      pantTrouser.value * 20 +
      sweaterCoat.value * 40 +
      sareeSalwars.value * 30 +
      bedsheetCovers.value * 25;

  incrementshirtTshirt() {
    shirtTshirt.value++;
  }

  decrementshirtTshirt() {
    if (shirtTshirt.value <= 0) {
      Get.snackbar(
        "Error",
        "Can't be less than 0",
        duration: Duration(seconds: 2),
      );
    } else {
      shirtTshirt.value--;
    }
  }

  incrementpantTrouser() {
    pantTrouser.value++;
  }

  decrementpantTrouser() {
    if (pantTrouser.value <= 0) {
      Get.snackbar(
        "Error",
        "Can't be less than 0",
        duration: Duration(seconds: 2),
      );
    } else {
      pantTrouser.value--;
    }
  }

  incrementsweaterCoat() {
    sweaterCoat.value++;
  }

  decrementsweaterCoat() {
    if (sweaterCoat.value <= 0) {
      Get.snackbar(
        "Error",
        "Can't be less than 0",
        duration: Duration(seconds: 2),
      );
    } else {
      sweaterCoat.value--;
    }
  }

  incrementsareeSalwars() {
    sareeSalwars.value++;
  }

  decrementsareeSalwars() {
    if (sareeSalwars.value <= 0) {
      Get.snackbar(
        "Error",
        "Can't be less than 0",
        duration: Duration(seconds: 2),
      );
    } else {
      sareeSalwars.value--;
    }
  }

  incrementbedsheetCovers() {
    bedsheetCovers.value++;
  }

  decrementbedsheetCovers() {
    if (bedsheetCovers.value <= 0) {
      Get.snackbar(
        "Error",
        "Can't be less than 0",
        duration: Duration(seconds: 2),
      );
    } else {
      bedsheetCovers.value--;
    }
  }
}
