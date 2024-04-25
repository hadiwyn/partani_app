import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:partani_app/bucket_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<BucketModel> bucket = [
    BucketModel(
      productName: 'Tomat',
      price: '5000',
      quantity: 10,
      weight: 50,
      imageUrl:
          'https://bakoelsayur.net/wp-content/uploads/2020/04/4.-cabe-merah-kriting.jpg',
    ),
    BucketModel(
      productName: 'Bawang Merah',
      price: '5000',
      quantity: 10,
      weight: 50,
      imageUrl:
          'https://bakoelsayur.net/wp-content/uploads/2020/04/4.-cabe-merah-kriting.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Keranjang',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back,
                color: Colors
                    .white), // Tambahkan ikon atau widget lain sesuai kebutuhan
            onPressed: () {
              // Fungsi yang akan dijalankan ketika tombol leading ditekan
            },
          ),
          backgroundColor: const Color(0xff64AA54),
          elevation: 0,
          shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0), // Adjust the value as needed
              bottomRight: Radius.circular(20.0), // Adjust the value as needed
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9).withOpacity(0.34),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 10.0),
                        child: Text("Alamat",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff535353),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Text(
                          "Depan gerbang Institut Teknologi Del, Sitoluama, Kec. Balige, Toba, Sumatera Utara 22381",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff535353),
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    elevation: 0,
                                    backgroundColor: Colors.transparent,
                                    child: Container(
                                      width: 414,
                                      height: 250,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffF3F9F3),
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(color: Colors.black),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Edit Alamat',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            const SizedBox(height: 10),
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: const Color(0xffD9D9D9)
                                                    .withOpacity(0.34),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10.0, right: 10.0),
                                                child: Text(
                                                  "Depan gerbang Institut Teknologi Del, Sitoluama, Kec. Balige, Toba, Sumatera Utara 22381",
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        const Color(0xff535353),
                                                  ),
                                                  // maxLines: 3,
                                                  // overflow:
                                                  //     TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  OutlinedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        "Simpan",
                                                        style:
                                                            GoogleFonts.poppins(
                                                          color: const Color(
                                                              0xff64AA54),
                                                        ),
                                                      ))
                                                ])
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Text(
                              "Edit",
                              style: GoogleFonts.poppins(
                                color: const Color(
                                  0xff64AA54,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9).withOpacity(0.34),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 10.0, top: 10.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    color: const Color(0xffD9D9D9),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Gunawan Sinaga",
                                    style: GoogleFonts.poppins(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              )),
                        ],
                      ),
                      ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: bucket.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 0),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0,
                                  left: 20.0,
                                  right: 20.0,
                                  bottom: 20.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 5, right: 5),
                                      child: SizedBox(
                                        height: 76,
                                        width: 70,
                                        child: Image.network(
                                          bucket[index].imageUrl.toString(),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              bucket[index]
                                                  .productName
                                                  .toString(),
                                              style: GoogleFonts.poppins(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff535353),
                                              ),
                                            ),
                                            Text(
                                              "Rp ${bucket[index].price.toString()}/kg",
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff535353),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Min Pemesanan: ${bucket[index].quantity.toString()} kg",
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 0, 0, 0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    right: 10,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Text(bucket[index]
                                                        .weight
                                                        .toString()),
                                                    const SizedBox(
                                                      width: 80,
                                                    ),
                                                    const Text("kg"),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            )
                                          ]),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return Dialog(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                elevation: 0,
                                                backgroundColor:
                                                    Colors.transparent,
                                                child: Container(
                                                  width: 414,
                                                  height: 277,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xffF3F9F3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                        color: Colors.black),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20,
                                                        vertical: 70),
                                                    child: Column(
                                                      children: [
                                                        const Text(
                                                          'Apakah anda yakin menghapus keranjang?',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        ),
                                                        const SizedBox(
                                                            height: 30),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            ElevatedButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      context),
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    const Color(
                                                                        0xffC6D3C3),
                                                                foregroundColor:
                                                                    Colors
                                                                        .black,
                                                                textStyle:
                                                                    const TextStyle(
                                                                        fontSize:
                                                                            14),
                                                                minimumSize:
                                                                    const Size(
                                                                        77, 27),
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4),
                                                                ),
                                                              ),
                                                              child: const Text(
                                                                'Cancel',
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                width: 57),
                                                            ElevatedButton(
                                                              onPressed: () =>
                                                                  Navigator
                                                                      .push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const HomePage(),
                                                                ),
                                                              ),
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    const Color(
                                                                        0xff64AA54),
                                                                foregroundColor:
                                                                    Colors
                                                                        .white,
                                                                textStyle:
                                                                    const TextStyle(
                                                                        fontSize:
                                                                            14),
                                                                minimumSize:
                                                                    const Size(
                                                                        77, 27),
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4),
                                                                ),
                                                              ),
                                                              child: const Text(
                                                                'Ya',
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.cancel,
                                          color: Colors.red,
                                        ))
                                  ],
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
