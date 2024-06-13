
import 'package:flutter/material.dart';


class RoundButton extends StatelessWidget {

  const RoundButton({super.key,
  required this.title,
  required this.onPress,
    this.loading = false,
  this.width = 60,
  this.height = 50,
  });

  final bool loading;
  final String title;
  final double height,width;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(50)
        ),
        child: loading ? const Center(child: CircularProgressIndicator(), ) : Center(child: Text(title,style:const  TextStyle(fontSize: 25,color: Colors.white),)),
      ),
    );
  }
}
