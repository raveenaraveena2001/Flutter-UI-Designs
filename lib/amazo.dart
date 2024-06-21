import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class amazo extends StatefulWidget {
  const amazo({super.key});

  @override
  State<amazo> createState() => _amazoState();
}

class _amazoState extends State<amazo> {

  List phone=[
    "assets/iphone.jpg",
    "assets/iphone6.jpg",
    "assets/iphone3.jpg",
    "assets/iphone7.jpg",
    "assets/iphone2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.cyan.shade100,


        title: Container(
          height: 40,
          width: 300,

          color: Colors.white,
          child: TextFormField(

            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,size: 25,),
              hintText: "Search Amazon.in",suffixStyle: TextStyle(fontStyle: FontStyle.normal),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.mic_none_rounded,size: 30,),
          )
        ],
      ),

        body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    children: [
    Text("Visit The Simple Store",style: TextStyle(color: Colors.cyan.shade700,fontSize: 17),),
    Spacer(flex: 2,),

    Padding(
    padding: const EdgeInsets.all(8),
    child: RatingBar.builder(
    initialRating: 3,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: true,
    itemCount: 5,
    itemSize: 15,
    itemPadding: EdgeInsets.symmetric(horizontal: 1.0,vertical: 3.0),
    itemBuilder: (context, _) => Icon(
    Icons.star,
    color: Colors.amber,
    ),
    onRatingUpdate: (rating) {
    print(rating);
    },
    ),
    ),
      Text("4232")
    ],
    ),
    Text("Apple iPhone 13 (128GB) - Blue",style: TextStyle(fontSize: 17),),

    ],
    ),



    SizedBox(
      height: 500,
      child: Stack(
      children: [
      Padding(
      padding: const EdgeInsets.all(3.0),
      child: CarouselSlider.builder(
      options: CarouselOptions(
      height: 600,
      aspectRatio: 16/9,
      viewportFraction: 1,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      // onPageChanged: callbackFunction,
      // scrollDirection: Axis.horizontal,
      ),
      itemCount: phone.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Column(
          children: [
            Container(
              height: 480,
              width: 320,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(phone[itemIndex],),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        );
      }
      ),
      ),

        Positioned(
          top: 10,
          left: 10,
          child: Container(
            height: 70,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset("assets/choice.png"),
          ),
        ),

        Positioned(
          top: 70,
          left: 10,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.red.shade500,
              borderRadius: BorderRadius.circular(60),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("30%",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  Text("Off",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

                ],
              ),
            )

          ),
        ),

        Positioned(
          top: 10,
          right: 10,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(child: Icon(Icons.share_outlined,size: 30,)),

          ),
        ),

        Positioned(
          top: 400,
          left: 10,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(child: Icon(Icons.favorite_outline,size: 30,)),
          ),
        ),
      ],
      ),
    ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Text("2k+ bought in past month",style: TextStyle(color: Colors.teal,fontSize: 17),)),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("-30%",style: TextStyle(fontSize: 40,color: Colors.red.shade700),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("270",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("(180/100ml)"),
                      ),
                    ],
                  ),
                  Text("M.R.P:385",style: TextStyle(fontSize: 17),),
                  Text(""),

                  Row(
                    children: [
                      Container(
                        height: 26,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          image: DecorationImage(
                            image: AssetImage("assets/am.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text("Fulfilled",style: TextStyle(fontSize: 18,backgroundColor: Colors.black,color: Colors.white),)
                    ],
                  ),
                  Text(""),
                  Text("Inclusive of all taxes",style: TextStyle(fontSize: 17),),
                  Text(""),
                ],
              ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total: 274",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    Text(""),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("FREE delivery" ,style: TextStyle(fontSize: 17,color: Colors.cyan.shade700)),
                        Text("Wednesday",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                        Text( "on orders dispatched by ",style: TextStyle(fontSize: 17),),


                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Amazon",style: TextStyle(fontSize: 17),),
                            Text("over 499.Details",style: TextStyle(fontSize: 17,color: Colors.cyan.shade700)),
                          ],
                        ),
                        Text(""),
                        Text("Or fastest delivery Monday.Order within 7 hrs 31 mins.",style: TextStyle(fontSize: 17),),
                        Text(""),
                        Text("Details",style: TextStyle(fontSize: 17,color: Colors.cyan.shade700),),
                        Text(""),
                      ],
                    ),


                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text("Delivery to Raveena-Sathyamangalam...643402",style: TextStyle(fontSize: 17,color: Colors.cyan.shade700),),
                        Text(""),
                      ],
                    ),
                    Text("Use by: 01 MAR 2025",style: TextStyle(fontSize: 17),),
                    Text(""),
                    Text("In Stock",style: TextStyle(color: Colors.green.shade700,fontSize: 18),),
                    Text(""),

                    Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Qty",style: TextStyle(fontSize: 17),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.keyboard_arrow_down),
                          )
                        ],
                      ),
                    ),
                    Text(""),
                  ],
                ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.yellow .shade600,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text("Add to cart",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text("Buy Now",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                ),
              ),
        ],
    )
    ),
        ),


    );
  }
}
