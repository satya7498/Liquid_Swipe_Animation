import 'package:flutter/material.dart';
//import 'package:liquid_swipe/Constants/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 static const TextStyle gettingStyle =TextStyle(
   fontSize: 20,
   color:Colors.blueGrey,
   fontWeight: FontWeight.bold,
   fontFamily: "Product Sans"
 );
 static const TextStyle greyStyle =TextStyle(
     fontSize: 40,
     color:Colors.black45,


     fontFamily: "Product Sans"
 );
 static const TextStyle boldStyle =TextStyle(
     fontSize: 50,
     color:Colors.black,
     fontWeight: FontWeight.bold,
     fontFamily: "Product Sans"
 );
 static const TextStyle descriptionGreyStyle = TextStyle(
   color: Colors.black45,
   fontSize: 20.0,
   fontFamily: "Product Sans",
 );




 final pages=[

    Container(
      color: Colors.white,
     child:Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
  Padding(
  padding:  const EdgeInsets.symmetric(horizontal: 20.0),
  child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
    children: [
      Text("Getting Started",style: gettingStyle,),
      Text("Skip",style: gettingStyle,),
    ],


      ),
  ),
    Image.asset("assets/onlineshop.jpg"),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child:Column(
        children: [
          Text("Fashion",style:greyStyle),
          Text("& Lifestyle",style: boldStyle,),
        SizedBox(height:15),
          Text("Online shopping like never before!\n"
               "Get the latest trends ruling\n"
               "the charts in India.\n",

          style: descriptionGreyStyle,),

        ],
      )
    ),
         ],


      ),
    ),

   Container(
     color: Colors.purple.shade200,
     child:Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         SizedBox(height:18),
         Padding(
           padding:  const EdgeInsets.symmetric(horizontal: 20.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

             children: [

               Text("Getting Started",style: gettingStyle,),
               Text("Skip",style: gettingStyle,),
             ],


           ),
         ),
         Image.asset("assets/purple.png"),
         Padding(
             padding: const EdgeInsets.symmetric(horizontal: 30.0),
             child:Column(
               children: [
                 Text("Shop",style:greyStyle),
                 Text("& Add to Cart",style: boldStyle,),
                 SizedBox(height:15),
                 Text("Add all the favorite\n"
                     "items to your bag and get\n"
                     "the review the changed prices.\n",

                   style: descriptionGreyStyle,),

               ],
             )
         ),
       ],


     ),
   ),

   Container(
     color: Colors.yellowAccent.shade100,
     child:Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Padding(
           padding:  const EdgeInsets.symmetric(horizontal: 20.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

             children: [
               Text("Getting Started",style: gettingStyle,),
               Text("Skip",style: gettingStyle,),
             ],


           ),
         ),

         Image.asset("assets/paymentgreen.png" ,),
         Padding(
             padding: const EdgeInsets.symmetric(horizontal: 30.0),
             child:Column(
               children: [
                 Text("Flat Rs 300 Off",style:greyStyle),
                 Text("+ Free Delivery",style: boldStyle,),
                 SizedBox(height:15),
                 Text("Get flat Rs 300 off \n"
                     "on your first delivery\n"
                     "Use CODE YNTX300 to avail the offer.\n",

                   style: descriptionGreyStyle,),

               ],
             )
         ),
       ],


     ),
   ),
   Container(
     color: Colors.blueAccent,
     child:Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Padding(
           padding:  const EdgeInsets.symmetric(horizontal: 20.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

             children: [
               Text("Getting Started",style: gettingStyle,),
               Text("Skip",style: gettingStyle,),
             ],


           ),
         ),
         Image.asset("assets/deliveryyellow.png" ,),
         Padding(
             padding: const EdgeInsets.symmetric(horizontal: 30.0),
             child:Column(
               children: [
                 Text("Delivery At Your",style:greyStyle),
                 Text("Door Steps",style: boldStyle,),
                 SizedBox(height:15),
                 Text("Happy to deliver your packages\n"
                     "right to your doorstep,\n"
                     "or to any other place you wish.\n",

                   style: descriptionGreyStyle,),

               ],
             )
         ),
       ],


     ),
   ),


  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animation",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:LiquidSwipe(
          pages: pages,
          waveType: WaveType.liquidReveal,
          enableSlideIcon: true,
          positionSlideIcon: 0.5,
          enableLoop: true,
          fullTransitionValue: 300,
        ),
      ),
    );
  }
}


