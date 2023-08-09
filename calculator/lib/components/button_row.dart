import 'package:flutter/cupertino.dart';
import 'button.dart';

class ButtonRow extends StatelessWidget {

  // ignore: non_constant_identifier_names
  final List<Button> Buttons;

  const ButtonRow(this.Buttons, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: Buttons.fold( <Widget>[], (list, b){
          list.isEmpty ? list.add(b) : list.addAll([const SizedBox(width: 1,), b]);
          return list;
        }),
      ),
    );
  }
}
