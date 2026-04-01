import 'package:flutter/material.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add a new item')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: InputDecoration(label: Text('Name')),
                validator: (value) {
                  return 'Demo';
                },
              ),
              Row(children: [
                  TextFormField(
                    decoration: InputDecoration(label: Text('Quantity')),
                    initialValue: 1.toString(),
                    keyboardType: TextInputType.number,
                    validator: (value)=> 'demo',
                  ),
                  const SizedBox(width: 8),
                  DropdownButtonFormField(
                    items: [],
                    onChanged: (value){},
                  )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
