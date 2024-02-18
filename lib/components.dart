import 'package:flutter/material.dart';

class darkButton extends StatelessWidget {
  final String tit;
  final VoidCallback onpress;
  const darkButton({super.key,required this.tit,required this.onpress});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color: const Color.fromARGB(255, 241, 5, 5).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset:const Offset(0, 3)
            )],
            shape: BoxShape.circle,
            color: Colors.amberAccent
          ),
          child: Center(
            child: Text(tit,style:const TextStyle(fontSize: 25),),
          ),
        ),
      ),
    );
  }
}

class lightButton extends StatelessWidget {
  final String tilt;
  final VoidCallback onpress;
  const lightButton({super.key,required this.tilt,required this.onpress});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color:const Color.fromARGB(255, 7, 141, 134).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset:const Offset(0, 3)
            )],
            shape: BoxShape.circle,
            color:const Color.fromARGB(255, 92, 76, 20)
          ),
          child: Center(
            child: Text(tilt,style:const TextStyle(fontSize: 25,color: Colors.white),),
          ),
        ),
      ),
    );
  }
}