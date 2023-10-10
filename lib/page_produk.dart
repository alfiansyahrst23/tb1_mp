import 'package:flutter/material.dart';
import 'package:tugas_besar_1/form_produk.dart';

class PageProduct extends StatefulWidget {
  const PageProduct({Key? key}) : super(key: key);

  static const routeName = '/page_produk';

  @override
  _PageProductState createState() => _PageProductState();
}

class _PageProductState extends State<PageProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          title: const Text('LIST PRODUCT'),
          flexibleSpace: Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FormProduct(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: const [
          Card(
            elevation: 8,
            child: ListTile(
              title: Text(
                '2457001',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Produk: Earphone Wireless',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ),
          ),
          Card(
            elevation: 8,
            child: ListTile(
              title: Text(
                '2457002',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Produk: Laptop',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ),
          ),
          Card(
            elevation: 8,
            child: ListTile(
              title: Text(
                '2457003',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Produk: Keyboard Wireless',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
