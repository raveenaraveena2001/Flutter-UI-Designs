import 'package:flutter/material.dart';

class calcs extends StatefulWidget {
  const calcs({super.key});

  @override
  State<calcs> createState() => _calcsState();
}

class _calcsState extends State<calcs> {

  final ctrl = TextEditingController();

  String val1="",val2="",optr="";

  bool clk = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 260,),
          TextFormField(
              textAlign: TextAlign.right,
              style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black,),
              controller: ctrl),

          SizedBox(height: 50),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    ctrl.text = "";
                    optr = "";
                    clk =  false;
                    val2="";
                    val1="";
                  }, child:Text("AC",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){}, child:Icon(Icons.arrow_back,size: 25,color: Colors.black,),),
                  ElevatedButton(onPressed: (){}, child:Text("+/-",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    ctrl.text = "/";
                    optr = "/";
                    clk =  true;
                  }, child:Text("∻",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),

                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                    if(clk)
                    {
                      val2 += "7";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "7";
                      ctrl.text = val1;
                    }


                  }, child: Text("7",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val2 += "8";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "8";
                      ctrl.text = val1;
                    }
                  }, child: Text("8",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val2 += "9";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "9";
                      ctrl.text = val1;
                    }
                  }, child: Text("9",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    ctrl.text = "*";
                    optr = "*";
                    clk =  true;
                  }, child: Text("*",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),

                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                    if(clk){
                      val2 += "4";
                      ctrl.text=val2;
                    }
                    else{
                      val1 += "4";
                      ctrl.text=val1;
                    }


                  }, child:Text("4",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk){
                      val2 += "5";
                      ctrl.text=val2;
                    }
                    else{
                      val1 += "5";
                      ctrl.text=val1;
                    }
                  }, child:Text("5",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk){
                      val2 += "6";
                      ctrl.text=val2;
                    }
                    else{
                      val1 += "6";
                      ctrl.text=val1;
                    }
                  }, child:Text("6",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    ctrl.text = "-";
                    optr = "-";
                    clk =  true;
                  }, child:Text("-",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),

                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                    if(clk)
                    {
                      val2 += "1";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "1";
                      ctrl.text = val1;
                    }


                  }, child: Text("1",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val2 += "2";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "2";
                      ctrl.text = val1;
                    }
                  }, child: Text("2",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val2 += "3";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "3";
                      ctrl.text = val1;
                    }
                  }, child: Text("3",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    ctrl.text = "+";
                    optr= "+";
                    clk =  true;
                  }, child: Text("+",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),

                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    ctrl.text = "%";
                    optr= "%";
                    clk =  true;
                  }, child:Text("%",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val2 += "0";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "0";
                      ctrl.text = val1;
                    }
                  }, child:Text("0",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val2 += ".";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += ".";
                      ctrl.text = val1;
                    }
                  }, child:Text(".",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(optr == "x²") {
                      double a = double.parse(val1);
                      double res = a * a;
                      ctrl.text = res.toString();
                    }

                    if(optr == "+")
                    {
                      double a = double.parse(val1);
                      double b = double.parse(val2);

                      double res = a + b ;

                      ctrl.text = res.toString();

                    }
                    if(optr == "-"){
                      double c = double.parse(val1);
                      double d = double.parse(val2);
                      double res = c - d ;
                      ctrl.text=res.toString();
                    }

                    if(optr == "*"){
                      double e = double.parse(val1);
                      double f = double.parse(val2);
                      double res = e * f ;
                      ctrl.text=res.toString();
                    }

                    if(optr == "/"){
                      double g = double.parse(val1);
                      double h = double.parse(val2);
                      double res =  g / h;
                      ctrl.text=res.toString();
                    }
                    ;
                  }, child: Text("=",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                ],
              ),
            ],
          ),

          SizedBox(height: 50),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    ctrl.text = "";
                    optr = "";
                    clk =  false;
                    val2="";
                    val1="";
                  }, child:Text("AC",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){}, child:Icon(Icons.arrow_back,size: 25,color: Colors.black,),),
                  ElevatedButton(onPressed: (){}, child:Text("+/-",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    ctrl.text = "/";
                    optr = "/";
                    clk =  true;
                  }, child:Text("∻",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),

                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                    if(clk)
                    {
                      val2 += "7";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "7";
                      ctrl.text = val1;
                    }


                  }, child: Text("7",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val2 += "8";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "8";
                      ctrl.text = val1;
                    }
                  }, child: Text("8",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val2 += "9";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "9";
                      ctrl.text = val1;
                    }
                  }, child: Text("9",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    ctrl.text = "*";
                    optr = "*";
                    clk =  true;
                  }, child: Text("*",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),

                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                    if(clk){
                      val2 += "4";
                      ctrl.text=val2;
                    }
                    else{
                      val1 += "4";
                      ctrl.text=val1;
                    }


                  }, child:Text("4",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk){
                      val2 += "5";
                      ctrl.text=val2;
                    }
                    else{
                      val1 += "5";
                      ctrl.text=val1;
                    }
                  }, child:Text("5",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk){
                      val2 += "6";
                      ctrl.text=val2;
                    }
                    else{
                      val1 += "6";
                      ctrl.text=val1;
                    }
                  }, child:Text("6",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    ctrl.text = "-";
                    optr = "-";
                    clk =  true;
                  }, child:Text("-",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),

                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                    if(clk)
                    {
                      val2 += "1";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "1";
                      ctrl.text = val1;
                    }


                  }, child: Text("1",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val2 += "2";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "2";
                      ctrl.text = val1;
                    }
                  }, child: Text("2",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val2 += "3";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "3";
                      ctrl.text = val1;
                    }
                  }, child: Text("3",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    ctrl.text = "+";
                    optr= "+";
                    clk =  true;
                  }, child: Text("+",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),

                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    ctrl.text = "%";
                    optr= "%";
                    clk =  true;
                  }, child:Text("%",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val2 += "0";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += "0";
                      ctrl.text = val1;
                    }
                  }, child:Text("0",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val2 += ".";
                      ctrl.text = val2;
                    }
                    else
                    {
                      val1 += ".";
                      ctrl.text = val1;
                    }
                  }, child:Text(".",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                  ElevatedButton(onPressed: (){
                    if(optr == "x²") {
                      double a = double.parse(val1);
                      double res = a * a;
                      ctrl.text = res.toString();
                    }

                    if(optr == "+")
                    {
                      double a = double.parse(val1);
                      double b = double.parse(val2);

                      double res = a + b ;

                      ctrl.text = res.toString();

                    }
                    if(optr == "-"){
                      double c = double.parse(val1);
                      double d = double.parse(val2);
                      double res = c - d ;
                      ctrl.text=res.toString();
                    }

                    if(optr == "*"){
                      double e = double.parse(val1);
                      double f = double.parse(val2);
                      double res = e * f ;
                      ctrl.text=res.toString();
                    }

                    if(optr == "/"){
                      double g = double.parse(val1);
                      double h = double.parse(val2);
                      double res =  g / h;
                      ctrl.text=res.toString();
                    }
                    ;
                  }, child: Text("=",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),)),
                ],
              ),
            ],
          ),




        ],
      ),
    );
  }
}
