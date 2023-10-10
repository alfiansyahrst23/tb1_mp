import 'package:flutter/material.dart';
import 'package:tugas_besar_1/form_produk.dart';
import 'package:tugas_besar_1/page_produk.dart';

class ViewProduct extends StatefulWidget {
  final String? IDProduk;
  final String? NamaProduk;
  final int? Harga;
  final String? JenisProduk;
  final int? Stok;

  const ViewProduct(
      {Key? key,
      this.IDProduk,
      this.NamaProduk,
      this.Harga,
      this.JenisProduk,
      this.Stok})
      : super(key: key);

  @override
  _ViewProductState createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VIEW PRODUCT'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildInfoCard("ID Produk : " + widget.IDProduk.toString()),
          _buildInfoCard("Nama Produk : ${widget.NamaProduk}"),
          _buildInfoCard("Harga : ${widget.Harga}"),
          _buildInfoCard("Jenis Produk : ${widget.JenisProduk}"),
          _buildInfoCard("Stok : ${widget.Stok}"),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: ElevatedButton(
                onPressed: () {
                  // Kembali ke halaman list produk
                  Navigator.pushNamed(context, PageProduct.routeName);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Warna latar belakang tombol
                  onPrimary: Colors.black, // Warna teks tombol
                  textStyle: TextStyle(fontSize: 16.0), // Gaya teks tombol
                ),
                child: Text('DONE'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(String text) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text),
      ),
    );
  }
}
