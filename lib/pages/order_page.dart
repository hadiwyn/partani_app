import 'package:flutter/material.dart';
import 'package:partani_app/extension/int_ext.dart';
import 'package:partani_app/model/order_model.dart';
import 'package:partani_app/pages/detail_order.dart';
import 'package:partani_app/widgets/custom_button.dart';

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
      price: 10000,
      productWeight: 10,
    ),
    OrderModel(
      userName: 'Yuni Yustina Siagian',
      phoneNumber: '082163963582',
      fullAddress:
          'Jl. Sm Raja No.70, Balige II, Kec. Balige, Toba, Sumatera Utara 22312',
      productName: 'Cabe Merah',
      imageUrl:
          'https://bakoelsayur.net/wp-content/uploads/2020/04/4.-cabe-merah-kriting.jpg',
      price: 40000,
      productWeight: 13,
    ),
  ];
  final List<OrderModel> orders2 = [
    OrderModel(
      userName: 'Yuni Yustina Siagian',
      phoneNumber: '082163963582',
      fullAddress:
          'Jl. Sm Raja No.70, Balige II, Kec. Balige, Toba, Sumatera Utara 22312',
      productName: 'Bawang Merah',
      imageUrl:
          'https://s3-publishing-cmn-svc-prd.s3.ap-southeast-1.amazonaws.com/article/tpqx_7Ik9yLWFVOeJTs4W/original/052222900_1607682083-Manfaat-Bawang-Merah_-Antialergi-hingga-Menurunkan-Risiko-Kanker-shutterstock_1724962108.jpg',
      price: 35000,
      productWeight: 10,
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
    int totalPrice = 0;
    for (var item in orders2) {
      totalPrice += item.price * item.productWeight;
    }
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
                  child: Image.network(
                    orders2[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  orders2[index].productName,
                  style: const TextStyle(fontSize: 17),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${orders2[index].price.currencyFormatRp}/Kg',
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
                  border: Border.all(
                      color: const Color(0xff535353).withOpacity(0.7)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                  'Total: ${totalPrice.currencyFormatRp}',
                  style: const TextStyle(fontSize: 14),
                )),
              ),
              CustomButton(
                width: 77,
                height: 24,
                color: const Color(0xff64AA54),
                label: 'Detail',
                textColor: Colors.white,
                fontSize: 14,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailOrder(items: orders2),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _orderItem1() {
    int totalPrice = 0;
    for (var item in orders1) {
      totalPrice += item.price * item.productWeight;
    }
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
                  child: Image.network(
                    orders1[index].imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                title: Text(
                  orders1[index].productName,
                  style: const TextStyle(fontSize: 17),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${orders1[index].price.currencyFormatRp}/Kg',
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
                child: Center(
                    child: Text('Total: ${totalPrice.currencyFormatRp}')),
              ),
              CustomButton(
                width: 77,
                height: 24,
                color: const Color(0xff64AA54),
                label: 'Detail',
                textColor: Colors.white,
                fontSize: 14,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailOrder(items: orders1),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
