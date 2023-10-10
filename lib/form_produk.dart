import 'package:flutter/material.dart';
import 'package:tugas_besar_1/view_produk.dart';


class FormProduct extends StatefulWidget {
  const FormProduct({Key? key}) : super(key: key);

  @override
  _FormProductState createState() => _FormProductState();
}


class _FormProductState extends State<FormProduct> {
  final _IDProduk = TextEditingController();
  final _NamaProduk = TextEditingController();
  final _Harga = TextEditingController();
  final _JenisProduk = TextEditingController();
  final _Stok = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INPUT PRODUCT'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
        child: Column(
          children: [
            _textboxNoKTP(),
            _textboxNama(),
            _textboxUmur(),
            _textboxJK(),
            _textboxAgama(),
            _buttonSimpan()
          ],
        ),
      ),
     )
    );
  }


  _textboxNoKTP() {
    return TextField(
        decoration: const InputDecoration(labelText: "ID Produk"),
        controller: _IDProduk,
        );
  }

  _textboxNama() {
    return TextField(
        decoration: const InputDecoration(labelText: "Nama Produk"),
        controller: _NamaProduk,
        );
  }

  _textboxUmur() {
    return TextField(decoration: const InputDecoration(labelText: "Harga"),
    controller: _Harga,
    );
  }

  _textboxJK() {
    return TextField(decoration: const InputDecoration(labelText: "Jenis Produk"),
    controller: _JenisProduk,
    );
  }

  _textboxAgama() {
    return TextField(decoration: const InputDecoration(labelText: "Stok"),
    controller: _Stok,
    );
  }

_buttonSimpan() {
  return Padding(
    padding: const EdgeInsets.only(top: 50.0),
    child: ElevatedButton(
      onPressed: () {
        String IDProduk = _IDProduk.text;
        String NamaProduk = _NamaProduk.text;
        int Harga = int.parse(_Harga.text);
        String JenisProduk = _JenisProduk.text;
        int Stok = int.parse(_Stok.text);

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ViewProduct(
            IDProduk: IDProduk,
            NamaProduk: NamaProduk,
            Harga: Harga,
            JenisProduk: JenisProduk,
            Stok: Stok,
          ),
        ));
      },
      child: const Text('SUMBIT'),
    ),
  );
}
}