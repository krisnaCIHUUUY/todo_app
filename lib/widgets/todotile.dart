import 'package:flutter/material.dart';

class Todotile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool? value;
  final void Function(bool?)? onChanged;
  final void Function() onTap;
  const Todotile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //     blurRadius: 1,
        //     spreadRadius: 2,
        //     color: Colors.black54,
        //     blurStyle: BlurStyle.outer,
        //   ),
        // ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 15),
        title: Text(title),
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(subtitle),
        ),
        subtitleTextStyle: TextStyle(color: Colors.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
        tileColor: Colors.white,
        trailing: SizedBox(
          width: 90,
          child: Row(
            children: [
              Checkbox(value: value, onChanged: onChanged),
              GestureDetector(onTap: onTap, child: Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );
  }
}
