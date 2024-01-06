import 'package:flutter/material.dart';

class NoteTile extends StatelessWidget {
  final String text;
  final void Function()? onEditPressed;
  final void Function()? onDeletePressed;
  const NoteTile({
    super.key,
    required this.text,
    required this.onEditPressed,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10, left: 25, right: 25),
      child: ListTile(
        title: Text(text),
        trailing: IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {
            Column(
              children: [
                IconButton(
                  onPressed: onEditPressed, 
                  icon: const Icon(Icons.edit)
                  ),
                  IconButton(
                    onPressed: 
                    onDeletePressed, 
                    icon: const Icon(Icons.delete)
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
