import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget text({
  required String constText,
  required String text,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$constText:",
          style: const TextStyle(
              color: Colors.blue, fontWeight: FontWeight.normal, fontSize: 18),
        ),
        const SizedBox(
          width: 5,
        ),
        if (text.isNotEmpty)
          Expanded(
            child: Container(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          )
      ],
    ),
  );
}
