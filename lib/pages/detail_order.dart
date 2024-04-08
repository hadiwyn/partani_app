// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:partani_app/model/order_model.dart';

class DetailOrder extends StatefulWidget {
  final List<OrderModel> items;
  const DetailOrder({
    super.key,
    required this.items,
  });

  @override
  State<DetailOrder> createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Pesanan',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9).withOpacity(0.34),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: _detailItem(),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 24,
                    width: 77,
                    decoration: BoxDecoration(
                      color: const Color(0xffC6D3C3),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                        child: Text(
                      'Tolak',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    )),
                  ),
                  const SizedBox(width: 50),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 24,
                      width: 89,
                      decoration: BoxDecoration(
                        color: const Color(0xff64AA54),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Center(
                          child: Text(
                        'Konfirmasi',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _detailItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            1,
            (index) => Table(
              columnWidths: const {
                0: FlexColumnWidth(4),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(4),
              },
              children: [
                TableRow(
                  children: [
                    const TableCell(
                      child: Text(
                        'Nama Pemesan',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const TableCell(
                      child: Text(
                        ':',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        widget.items[index].userName,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Text(
                        'Nomor Telepon',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const TableCell(
                      child: Text(
                        ':',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        widget.items[index].phoneNumber,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Text(
                        'Alamat Lengkap',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const TableCell(
                      child: Text(
                        ':',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        widget.items[index].fullAddress,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text('Pesanan:'),
        const SizedBox(height: 8),
        Container(
          width: 344,
          decoration: BoxDecoration(
            color: const Color(0xffEFF4EF),
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.items.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 30),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      widget.items[index].productName,
                      style: const TextStyle(fontSize: 14),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Deskripsi:',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          'Rp. ${widget.items[index].price} x ${widget.items[index].productWeight} Kg',
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 100),
                height: 24,
                width: 155,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(child: Text('Total: Rp. 350.000')),
              ),
              const SizedBox(height: 17),
            ],
          ),
        ),
      ],
    );
  }
}
