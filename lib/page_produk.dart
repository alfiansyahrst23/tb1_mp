import 'package:flutter/material.dart';
import 'package:tugas_besar_1/form_produk.dart';
import 'package:tugas_besar_1/view_produk.dart';

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
        ),
      ),
      body: ListView(
        children: [
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
                'Product: Wireless Earphones',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              trailing: GestureDetector(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ViewProduct(),
                    ),
                  );
                },
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.blue,
                ),
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
                'Product: Laptop',
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
                'Product: Wireless Keyboard',
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FormProduct(),
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: () {
              // Action for the second button
              print('Action: Second button');
            },
            child: const Icon(Icons.edit),
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: () {
              // Action for the second button
              print('Action: Second button');
            },
            child: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}

class ButtonActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            // Action when "Update" button is pressed
            print('Action: Update');
          },
          child: const Text('Update'),
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // Action when "Delete" button is pressed
            print('Action: Delete');
          },
          child: const Text('Delete'),
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // Action when "Edit" button is pressed
            print('Action: Edit');
          },
          child: const Text('Edit'),
        ),
      ],
    );
  }
}
