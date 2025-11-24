import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);


  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> value = List.filled(9, "");
  bool isFirstTap = true ;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFD6AEAD) ,
      body: Center(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/img.png",width: 100,height: 100,),
            SizedBox(height: 40,),
            Container(
              width: 300,
              height: 300,
              child: CustomScrollView(

                slivers: [
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                          (context, index) {
                        return GestureDetector(
                          onTap: (){
                            if(value[index].isNotEmpty){
                              return;
                            }

                            setState(() {
                              if(isFirstTap){
                                value[index] = "X";
                                isFirstTap = false;

                                counter++;

                              }
                              else {
                                value[index] = "O";
                                isFirstTap = true;
                                counter++;

                              }
                            });

                            String val1 , val2 , val3 , val4 ,val5 , val6 ,val7 ,val8 ,val9;
                            val1 = value[0] ;
                            val2 = value[1] ;
                            val3 = value[2] ;
                            val4 = value[3] ;
                            val5 = value[4] ;
                            val6 = value[5] ;
                            val7 = value[6] ;
                            val8 = value[7] ;
                            val9 = value[8] ;

                            String firstRP = val1+val2+val3;
                            String SeconfRP = val4+val5+val6;
                            String thirdRP = val7+val8+val9;
                            String firstCP = val1+val4+val7;
                            String SecondCP = val2+val5+val8;
                            String thirdCP = val3+val6+val9;
                            String firstCrosP = val1+val5+val9;
                            String secondCrosP = val3+val5+val7;



                            if(firstRP.contains("XXX") || firstRP.contains("OOO")){

                              toastMessage(value[index]);
                              print(value[index]+"winner");
                              setState(() {
                                value = List.filled(9, "");
                                counter = 0;
                                isFirstTap = true;

                              });
                            }
                            else if(SeconfRP.contains("XXX") || SeconfRP.contains("OOO")){
                              print(value[index]+"winner");
                              toastMessage(value[index]);

                              setState(() {
                                value = List.filled(9, "");
                                counter = 0;
                                isFirstTap = true;
                              });
                            }
                            else if(thirdRP.contains("XXX") || thirdRP.contains("OOO")){
                              print(value[index]+"winner");
                              toastMessage(value[index]);

                              setState(() {
                                value = List.filled(9, "");
                                counter = 0;
                                isFirstTap = true;
                              });
                            }

                            else if(firstCP.contains("XXX") || firstCP.contains("OOO")){
                              print(value[index]+"winner");
                              toastMessage(value[index]);

                              setState(() {
                                value = List.filled(9, "");
                                counter = 0;
                                isFirstTap = true;
                              });
                            }
                            else if(SecondCP.contains("XXX") || SecondCP.contains("OOO")){
                              print(value[index]+"winner");
                              toastMessage(value[index]);

                              setState(() {
                                value = List.filled(9, "");
                                counter = 0;
                                isFirstTap = true;
                              });
                            } else if(thirdCP.contains("XXX") || thirdCP.contains("OOO")){
                              print(value[index]+"winner");
                              toastMessage(value[index]);

                              setState(() {
                                value = List.filled(9, "");
                                counter = 0;
                                isFirstTap = true;
                              });
                            }else if(firstCrosP.contains("XXX") || firstCrosP.contains("OOO")){
                              print(value[index]+"winner");
                              toastMessage(value[index]);

                              setState(() {
                                value = List.filled(9, "");
                                counter = 0;
                                isFirstTap = true;
                              });
                            }
                            else if(secondCrosP.contains("XXX") || secondCrosP.contains("OOO")){
                              print(value[index]+"winner");
                              toastMessage(value[index]);

                              setState(() {
                                value = List.filled(9, "");
                                counter = 0;
                                isFirstTap = true;
                              });
                            }
                            else {
                              if(counter >= 9){
                                print("Draw Match");

                                Fluttertoast.showToast(msg: "Draw Match",toastLength: Toast.LENGTH_SHORT);
                                setState(() {
                                  value = List.filled(9, "");
                                  counter = 0;
                                  isFirstTap = true;
                                });

                              }
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(color: Color(0xFF81023F), width: 3),
                                left: BorderSide(color: Color(0xFF81023F), width: 3),
                                right: BorderSide(color: Color(0xFF81023F), width: 3),
                                bottom: BorderSide(color: Color(0xFF81023F), width: 3),
                              ),
                            ),
                            child: Center(
                              child: Text(value[index],style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w700),),
                            ),
                          ),
                        );
                      },
                      childCount: 9,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )

      )
    );
  }

  void toastMessage(String value) {
    Fluttertoast.showToast(msg: value+" Winner",toastLength: Toast.LENGTH_SHORT);
  }
}
