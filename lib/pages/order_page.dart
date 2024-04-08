import 'package:flutter/material.dart';
import 'package:partani_app/model/order_model.dart';
import 'package:partani_app/pages/detail_order.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final List<OrderModel> orders1 = [
    OrderModel(
      userName: 'Yuni Yustina Siagian',
      phoneNumber: '082163963582',
      fullAddress:
          'Jl. Sm Raja No.70, Balige II, Kec. Balige, Toba, Sumatera Utara 22312',
      productName: 'Tomat',
      imageUrl:
          'https://umsu.ac.id/artikel/wp-content/uploads/2023/09/manfaat-tomat-buah-segar-yang-penuh-nutrisi.jpg',
      price: '10.000',
      totalPrice: '100.000',
      productWeight: '10',
    ),
    OrderModel(
      userName: 'Yuni Yustina Siagian',
      phoneNumber: '082163963582',
      fullAddress:
          'Jl. Sm Raja No.70, Balige II, Kec. Balige, Toba, Sumatera Utara 22312',
      productName: 'Bawang Merah',
      imageUrl:
          'https://pertanian.uma.ac.id/wp-content/uploads/2022/04/Pasca-Idulfitri-Stok-dan-Harga-Bawang-Merah-Terpantau-Aman-1.jpg',
      price: '35.000',
      totalPrice: '350.000',
      productWeight: '10',
    ),
  ];
  final List<OrderModel> orders2 = [
    OrderModel(
      userName: 'Yuni Yustina Siagian',
      phoneNumber: '082163963582',
      fullAddress:
          'Jl. Sm Raja No.70, Balige II, Kec. Balige, Toba, Sumatera Utara 22312',
      productName: 'Cabe Merah',
      imageUrl:
          'https://bakoelsayur.net/wp-content/uploads/2020/04/4.-cabe-merah-kriting.jpg',
      price: '40.000',
      totalPrice: '520.000',
      productWeight: '13',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Halaman Pesanan',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: const Color(0xffD9D9D9).withOpacity(0.34),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              children: [
                _orderItem1(),
                const SizedBox(height: 20),
                _orderItem2(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _orderItem2() {
    return Container(
      width: 368,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: orders2.length,
            separatorBuilder: (context, index) => const SizedBox(height: 30),
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  width: 76,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Image.network(orders2[index].imageUrl),
                ),
                title: Text(
                  orders2[index].productName,
                  style: const TextStyle(fontSize: 17),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rp ${orders2[index].price}/Kg',
                      style: const TextStyle(fontSize: 14),
                    ),
                    Text(
                      'Pesanan: ${orders2[index].productWeight} Kg',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 24,
                width: 155,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(child: Text('Total: Rp. 350.000')),
              ),
              InkWell(
                onTap: () => const DetailOrder(),
                child: Container(
                  height: 24,
                  width: 77,
                  decoration: BoxDecoration(
                    color: const Color(0xff64AA54),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(child: Text('Detail')),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _orderItem1() {
    return Container(
      width: 368,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: orders1.length,
            separatorBuilder: (context, index) => const SizedBox(height: 30),
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  width: 76,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Image.network(orders1[index].imageUrl),
                ),
                title: Text(
                  orders1[index].productName,
                  style: const TextStyle(fontSize: 17),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rp ${orders1[index].price}/Kg',
                      style: const TextStyle(fontSize: 14),
                    ),
                    Text(
                      'Pesanan: ${orders1[index].productWeight} Kg',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 24,
                width: 155,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(child: Text('Total: Rp. 620.000')),
              ),
              InkWell(
                onTap: () => const DetailOrder(),
                child: Container(
                  height: 24,
                  width: 77,
                  decoration: BoxDecoration(
                    color: const Color(0xff64AA54),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(child: Text('Detail')),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
