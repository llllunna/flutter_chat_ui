import 'package:flutter/material.dart';

import '../state/inherited_chat_theme.dart';

class SystemMessage extends StatelessWidget {
  const SystemMessage({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        margin: InheritedChatTheme.of(context).theme.systemMessageTheme.margin,
        child: Text(
          message,
          style:
              InheritedChatTheme.of(context).theme.systemMessageTheme.textStyle,
        ),
      );
}

@immutable
class SystemMessageTheme {
  const SystemMessageTheme({
    required this.margin,
    required this.textStyle,
  });

  /// Margin around the system message.
  final EdgeInsets margin;

  /// Text style for the unseen message banner text.
  final TextStyle textStyle;
}