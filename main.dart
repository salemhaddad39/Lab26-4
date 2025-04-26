void main() {
  List<Map<String, dynamic>> orderInformation = [
    {"id": 1, "status": "ready", "item": "burger"},
    {"id": 2, "status": "canceled", "item": "pizza"},
    {"id": 3, "status": "ready", "item": "fries"},
    {"id": 4, "status": "vip", "item": "nuggets"},
  ];

  for (int i = 0; i < orderInformation.length; i++) {
    print("-----------------------------------");

    if (orderInformation[i]["status"] == "canceled") {
      print("Skip canceled order: ${orderInformation[i]}");
      continue;
    }

    if (orderInformation[i]["status"] == "vip") {
      print("VIP Order Prioritize : ${orderInformation[i]}");
    }

    int orderId = orderInformation[i]["id"];
    if (orderId == 4) {
      print("Order ID 4 is taking too long  Alert the kitchen");
    }

    switch (orderInformation[i]["item"]) {
      case "burger":
        print("Preparing burger");
        break;
      case "pizza":
        print("Preparing pizza");
        break;
      case "fries":
        print("Preparing fries");
        break;
      case "nuggets":
        print("Preparing nuggets");
        break;
      default:
        print("Unknown item: ${orderInformation[i]["item"]}");
    }

   if (orderInformation[i]["status"] == "vip") {
      break;
    }
  }

  
}
