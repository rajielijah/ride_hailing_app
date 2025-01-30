import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Dummy Ride Model
class Ride {
  final String id;
  final String destination;
  final String status;

  Ride({required this.id, required this.destination, required this.status});
}

// Dummy Ride Controller
class RideController extends GetxController {
  final RxList<Ride> rideHistory = RxList<Ride>([
    Ride(id: "1", destination: "Central Park", status: "completed"),
    Ride(id: "2", destination: "Statue of Liberty", status: "canceled"),
    Ride(id: "3", destination: "Empire State Building", status: "in progress"),
  ]);

  List<Ride> get rides => rideHistory;
}

class RideHistoryScreen extends StatelessWidget {
  final RideController controller = Get.put(RideController());

  RideHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ride History'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Obx(() => ListView.builder(
            itemCount: controller.rides.length,
            itemBuilder: (context, index) {
              final ride = controller.rides[index];
              return Card(
                margin: const EdgeInsets.all(8),
                child: ListTile(
                  title: Text(ride.destination, style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Status: ${ride.status}', style: TextStyle(color: Colors.grey[600])),
                  leading: Icon(
                    Icons.directions_car,
                    color: ride.status == 'completed' ? Colors.green : ride.status == 'canceled' ? Colors.red : Colors.orange,
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.info, color: Colors.blue),
                    onPressed: () {
                      Get.snackbar('Info', 'Ride details for ${ride.destination}',
                          snackPosition: SnackPosition.BOTTOM);
                    },
                  ),
                ),
              );
            },
          )),
    );
  }
}
