import 'package:alemeno_adarsh/components/constants.dart';
import 'package:alemeno_adarsh/components/screen_navigation.dart';
import 'package:alemeno_adarsh/home.dart';
import 'package:flutter/material.dart';

class ClickPicture extends StatelessWidget {
  const ClickPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.circular(100)),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    changeScreen(context, Home());
                  },
                )),
          ),
          const SizedBox(
            height: 180,
          ),
          Expanded(
            child: Container(
              width: size.width,
              decoration: const BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                    Image.asset('assets/Cutlery.png'),
                    Image.asset('assets/plate.png'),
                    Image.asset('assets/Corners.png')
                  ],),
            ),
          ),
          Container(
            height: size.width*0.35,
            width: size.width,
            color: Color(0xFFF4F4F4),
            child: Column(
              children: [
                const Text('Click your meal', style: TextStyle(fontSize: 19),),
                const SizedBox(height: 15,),
                InkWell(
                  onTap: () {},
                  child: Image.asset('assets/Camera Button.png')),
              ],
            ),
          ),
          
        ],
      ),
    ));
  }
}
