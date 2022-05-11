import 'package:alemeno_adarsh/click_picture.dart';
import 'package:alemeno_adarsh/components/rounded_button.dart';
import 'package:alemeno_adarsh/components/screen_navigation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: RoundedButton(text: 'Share your meal', press: () {
          changeScreen(context, const ClickPicture());
        }),
      ),
    );
  }
}