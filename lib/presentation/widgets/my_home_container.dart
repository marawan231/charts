import 'package:flutter/material.dart';

class MyHomeContainer extends StatelessWidget {
  const MyHomeContainer(
      {Key? key,
      required this.containerColor,
      required this.text,
      required this.fontColor,
      required this.ontap})
      : super(key: key);
  final Color containerColor;
  final String text;
  final Color fontColor;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
            color: containerColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: containerColor,
              ),
            ],
            border: Border.all(
              color: containerColor,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .2,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 30,
                color: fontColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
