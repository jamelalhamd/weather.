import 'package:flutter/material.dart';
import 'package:weather1/constant.dart';
import 'package:weather1/failur.dart';

import 'package:weather1/mywidget/mytextfiled_normal.dart';
import 'package:weather1/service.dart';

import 'package:weather1/weatherscreen.dart';

class Search extends StatefulWidget {
  const Search({super.key,});



  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  @override


  @override
  Widget build(BuildContext context) {
    weathemodel1=null;

    return  Scaffold(

      appBar: AppBar(
          elevation: 50,
          backgroundColor: Colors.blue,
          centerTitle: true,

          title: Text(" Weather",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
      body: Center(child: myTextfiled(label: 'Search',
        suffixIcon: Icons.search,
        onChange: (value){


          City_name=value;





        },

        onPressedicon: () async {

          try {
              weathemodel1= await getweather(City_name!);


             for(int i=0;i<10;++i){
            print("sucess : $weathemodel1");}
          Navigator.push(context, MaterialPageRoute(builder: (context) => weatherscreen()));

          } catch (e) {

            for(int i=0;i<10;++i){
              print("failure : $weathemodel1");}

            Navigator.push(context, MaterialPageRoute(builder: (context) => failur()));
          }
        },




      )),
    );
  }
}
