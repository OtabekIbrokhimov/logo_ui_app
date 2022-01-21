import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logo_ui/Second%20Page.dart';
import 'package:logo_ui/sign_%20in_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
static const String id = "/id";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int y = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(
          
          children: [
            Expanded(child:
            Container(
              margin: EdgeInsets.all(100),
              child: Text("Your Logo", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
            ),),
            Expanded(child: PageView(
           scrollDirection: Axis.horizontal,
    controller: _pageController,
    onPageChanged: (index){
    setState(() {
    y = index;
    });},
           children: [
             Container(
                 child:Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("All your favourite dishes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),
                        ],
                     ),
                     SizedBox(height: 15,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("order from your nearby restaurant in your town", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                       ],
                     ),
                     SizedBox(height: 5,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("order from your nearby restaurant in your town", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                       ],
                     ),
                   ],
               ),
             ),
             Container(
               child:Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 // crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("All your favourite dishes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),
                     ],
                   ),
                   SizedBox(height: 15,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("order from your nearby restaurant in your town", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                     ],
                   ),
                   SizedBox(height: 5,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("order from your nearby restaurant in your town", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                     ],
                   ),
                 ],
               ),
             ),
             Container(
               child:Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 // crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("All your favourite dishes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),
                     ],
                   ),
                   SizedBox(height: 15,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("order from your nearby restaurant in your town", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                     ],
                   ),
                   SizedBox(height: 5,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("order from your nearby restaurant in your town", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                     ],
                   ),
                 ],
               ),
             ),
           ]

            ),),
            Container(
              child:  SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: const WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  type: WormType.thin,
                  // strokeWidth: 5,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(child:
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50), ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
   child: MaterialButton(
   onPressed: (){
     Navigator.pushNamed(context, SecondPage.id);
   },
   child: Text("Get Started", style: TextStyle(color: Colors.white),),
),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: MaterialButton(
                      onPressed: (){
                        Navigator.of(context).pushNamed(SignInPage.id);
                      },
                      child: Text("Log in", style: TextStyle(color: Colors.white),),
                    ),
                  ),

                ],
              ),
            ),),
          ],
        ),
      ),

    );
  }
}
