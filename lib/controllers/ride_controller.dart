import 'package:get/get.dart';
import 'dart:async';

import '../models/ride.dart';

class RideController extends GetxController {
  var currentRide = Rx<Ride?>(null);
  var rideStatus = 'searching'.obs; 

  Timer? searchTimer;

  void findDriver() {
    searchTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (timer.tick == 3) { 
        currentRide.value = Ride(
          id: 'R1',
          driverName: 'John Doe',
          vehicleType: 'Sedan',
          rating: 4.5,
        );
        rideStatus.value = 'found';
        timer.cancel();
      }
    });
  }

  void startRide() {
    if (currentRide.value != null) {
      rideStatus.value = 'inprogress';
    }
  }

  void completeRide() {
    rideStatus.value = 'completed';
  }

  void cancelSearch() {
    searchTimer?.cancel();
    rideStatus.value = 'notFound';
  }

  @override
  void onClose() {
    searchTimer?.cancel();
    super.onClose();
  }
}
