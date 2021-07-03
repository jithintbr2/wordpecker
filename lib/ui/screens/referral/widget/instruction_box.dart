import 'package:flutter/material.dart';

class ReferralInstructionBox extends StatelessWidget {
  final String title;
  final List<String> instructions;
  const ReferralInstructionBox({
    Key? key,
    required this.instructions,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (instructions.isNotEmpty)
      return Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Card(
              margin: EdgeInsets.all(0),
              child: ListView.builder(
                padding: EdgeInsets.all(8),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, int index) {
                  final String item = instructions[index];
                  final int count = index + 1;
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Text("$count    $item"),
                  );
                },
                itemCount: instructions.length,
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      );
    return SizedBox();
  }
}
