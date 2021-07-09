import 'package:flutter/material.dart';
import 'package:woodle/core/models/item_varient/item_varient_model.dart';

class VarientLister extends StatelessWidget {
  final List<ItemVarientModel> varients;
  final void Function(int id) onPressed;
  final int currentVarientId;
  const VarientLister({
    Key? key,
    required this.varients,
    required this.onPressed,
    required this.currentVarientId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> varientTypes =
        varients.map((varient) => varient.varientType).toSet().toList();
    return ListView.builder(
      padding: EdgeInsets.all(10),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        List<ItemVarientModel> typeVarients = varients
            .where((varient) => varientTypes[index] == varient.varientType)
            .toList();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              varientTypes[index],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 5,
              children: typeVarients
                  .map((varient) => varient.varientId == currentVarientId
                      ? ElevatedButton(
                          onPressed: () {}, child: Text(varient.varientName))
                      : OutlinedButton(
                          onPressed: () => onPressed(varient.varientId),
                          child: Text(varient.varientName)))
                  .toList(),
            )
          ],
        );
      },
      itemCount: varientTypes.length,
    );
  }
}
