import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "INBODY",
      home: PageOne(),
    );
  }
}
class PageOne extends StatelessWidget {

TextEditingController n1 = TextEditingController();
TextEditingController n2 = TextEditingController();
TextEditingController n3 = TextEditingController();
TextEditingController n4 = TextEditingController();
TextEditingController n5 = TextEditingController();
TextEditingController n6 = TextEditingController();
TextEditingController n7 = TextEditingController();
TextEditingController n8 = TextEditingController();
TextEditingController n9 = TextEditingController();
TextEditingController n10 = TextEditingController();
TextEditingController n11 = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("INBODY"),backgroundColor: Colors.black,),
      body:ListView(
              children: [
                Container(
                  height: 300,padding: EdgeInsets.all(15),margin: EdgeInsets.all(10),decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(10)/*we want to addd color to the border*/),
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        child:TextField(
                          controller:n1 ,
                          decoration: InputDecoration(
                              hintText:"Enter your weight (KG)",
                              labelText: "weight(KG)",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child:TextField(
                          controller:n2 ,
                          decoration: InputDecoration(
                              hintText:"Enter your height (CM)",
                              labelText: "height(CM)",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child:TextField(
                          controller: n3,
                          decoration: InputDecoration(
                              hintText:"Enter your age",
                              labelText: "age",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child:TextField(
                          controller:n4 ,
                          decoration: InputDecoration(
                              hintText:"Male/Female",
                              labelText: "Gender",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                      ),
                      Container(
                        child: RaisedButton(
                          child: Text("Display Body INFO.",),
                            onPressed:(){
                            String Gender = n4.text;
                            double weight=double.parse(n1.text.toString());
                            double height=double.parse(n2.text.toString());
                            double age=double.parse(n3.text.toString());
                            double muscleMass=0,Fatperc=0,BMI=0,Water=0,protein=1.5,IdealW=0;
                            //Date And Time (n5)
                            DateTime now = DateTime.now();
                            n5.text = now.toString();
                            //protin you need (n9)
                            n9.text = (weight*protein).toString();
                            if(Gender == "male" || Gender == "Male"){
                              BMI = weight/(height/100);
                              if(BMI < 18.5){
                                n10.text = "UnderWeight";
                              }
                              else if(BMI >= 18.5 && BMI <=24.9){
                                n10.text = "Healthy";
                              }
                              else if(BMI >=25 && BMI <=29.9){
                                n10.text = "OverWeight";
                              }
                              else{
                                n10.text = "Obesity";
                              }
                              muscleMass = (0.407 * weight) + (0.267 * height) - 19.2;
                              n6.text = muscleMass.toString();
                              Fatperc = (1.2*BMI)+(0.23*age)-16.2;
                              n7.text = Fatperc.toString();
                              Water = 2.447 - (0.09145*age) + (0.1074*height) + (0.3362*weight);
                              n8.text = Water.toString();
                              IdealW = 50 + (0.91*height) - 152.4;
                              n11.text = IdealW.toString();
                            }
                            else{
                              BMI = weight/(height/100);
                              if(BMI < 18.5){
                                n10.text = "UnderWeight";
                              }
                              else if(BMI >= 18.5 && BMI <=24.9){
                                n10.text = "Healthy";
                              }
                              else if(BMI >=25 && BMI <=29.9){
                                n10.text = "OverWeight";
                              }
                              else{
                                n10.text = "Obesity";
                              }
                              muscleMass = (0.252 * weight) + (0.473 * height) - 48.3;
                              n6.text = muscleMass.toString();
                              Fatperc = (1.2*BMI)+(0.23*age)-5.4;
                              n7.text = Fatperc.toString();
                              Water = -2.097 + (0.1069*height) + (0.2466*weight);
                              n8.text = Water.toString();
                              IdealW = 45.5 + (0.91*height) - 152.4;
                              n11.text = IdealW.toString();
                            }
                         }
                        )),],),),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),margin: EdgeInsets.all(10),decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(10)),
                      child:Column(
                        children: [
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),padding: EdgeInsets.all(5),margin: EdgeInsets.all(10),
                            child: TextField(
                              controller:n5,
                              decoration: InputDecoration(
                                  labelText: "Date And Time",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                            ),
                          ),
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),padding: EdgeInsets.all(5),margin: EdgeInsets.all(10),
                            child: TextField(
                              controller:n6 ,
                              decoration: InputDecoration(
                                  labelText: "Muscle Mass(Kg)",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                            ),
                          ),
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),padding: EdgeInsets.all(5),margin: EdgeInsets.all(10),
                            child: TextField(
                              controller:n7 ,
                              decoration: InputDecoration(
                                  labelText: "BodyFat(%)",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                            ),
                          ),
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),padding: EdgeInsets.all(5),margin: EdgeInsets.all(10),
                            child: TextField(
                              controller:n8 ,
                              decoration: InputDecoration(
                                  labelText: "Total Body water(Liter)",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                            ),
                          ),
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),padding: EdgeInsets.all(5),margin: EdgeInsets.all(10),
                            child: TextField(
                              controller:n9 ,
                              decoration: InputDecoration(
                                  labelText: "Protein(gm) you need",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                            ),
                          ),
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),padding: EdgeInsets.all(5),margin: EdgeInsets.all(10),
                            child: TextField(
                              controller:n10 ,
                              decoration: InputDecoration(
                                  hintText: "BMI",
                                  labelText: "Body Mass Index",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                            ),
                          ),
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),padding: EdgeInsets.all(5),margin: EdgeInsets.all(10),
                            child: TextField(
                              controller:n11 ,
                              decoration: InputDecoration(
                                  labelText: "IDEAL WEIGHT(KG)",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                            ),
                          ),
                        ],
                      ) ,
                    ),
                  ],
                ),
              ],
      )
    );
  }
}
