// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThuTuc extends StatelessWidget {
  String name;
  String id;
  ThuTuc({
    Key? key,
    required this.name,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 12),
      child: Container(
        width: 1000,
        height: 50,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 229, 240, 248),
            border: Border.all(),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: InkWell(
            child: Text(
              // ignore: unnecessary_string_interpolations
              "$name",
              textAlign: TextAlign.justify,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () => GoRouter.of(context).go('/Home2/$id'),
          ),
        ),
      ),
    );
  }
}
