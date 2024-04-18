class OrderModel {
  final String userName;
  final String phoneNumber;
  final String fullAddress;
  final String productName;
  final String imageUrl;
  final int price;
  final int productWeight;

  OrderModel({
    required this.userName,
    required this.phoneNumber,
    required this.fullAddress,
    required this.productName,
    required this.imageUrl,
    required this.price,
    required this.productWeight,
  });
}
