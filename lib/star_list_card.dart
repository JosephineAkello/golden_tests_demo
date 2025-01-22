import 'package:flutter/material.dart';

class StarListCard extends StatelessWidget {
  const StarListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Star List View',
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // First card with an outlined star
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 4,
            child: const ListTile(
              title: Text('Card with Outlined Star'),
              trailing: Icon(
                Icons.star_border,
                color: Colors.red,
              ),
            ),
          ),

          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 4,
            child: const ListTile(
              title: Text('Card with Outlined Star'),
              trailing: Icon(
                Icons.star_border,
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Second card with a filled star
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 4,
            child: const ListTile(
              title: Text('Card with Filled Star'),
              leading: Icon(
                Icons.star,
                color: Colors.red,
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 4,
            child: const ListTile(
              title: Text('Card with Filled Star'),
              leading: Icon(
                Icons.star,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
