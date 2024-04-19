import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:assignment_3/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double width = constraints.maxWidth;
          double height = constraints.maxHeight;

          return Padding(
            padding: EdgeInsets.all(width * 0.05),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: height * 0.02),
                  Text(
                    "Sneaker Shop",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: width * 0.07,
                      //  color: Colors.white,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Padding(
                    padding: EdgeInsets.all(width * 0.10),
                    child: Image.asset(
                      'images/free-icon-shoes-550531.png',
                      width: width * 0.7,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    'Delivery in a KZ',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: width * 0.08,
                      // color: Colors.white,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  const Text(
                    "Welcome to SneakerShop - your ultimate destination for the freshest kicks! Explore our curated collection of sneakers that blend style and performance seamlessly.",
                    style: TextStyle(color: Colors.black38, height: 2),
                  ),
                  SizedBox(height: height * 0.02),
                  MyButton(
                    text: "Get Started",
                    onTap: () {
                      //go to menu page
                      Navigator.pushNamed(context, '/menupage');
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
