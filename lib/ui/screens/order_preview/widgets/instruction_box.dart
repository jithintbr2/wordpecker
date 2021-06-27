import 'package:flutter/material.dart';

class InstructionBox extends StatelessWidget {
  const InstructionBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Special Instructions",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            TextField(
                textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.multiline,
                maxLines: 2,
                minLines: 2,
                decoration: InputDecoration(
                    isDense: true, border: OutlineInputBorder()))
          ],
        ),
      ),
    );
  }
}
