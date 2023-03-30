import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage= 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        
        appBar:AppBar(title: Text("El Mas Grande :  " ),backgroundColor: Color.fromARGB(255, 94, 11, 11),elevation: 0,) ,
        body: PageView(
          children: [
            CustonScreen(color:Colors.orange.shade50),
            CustonScreen(color:Color.fromARGB(255, 94, 11, 11)),
            CustonScreen(color:Colors.white)
          ],
        ),
        
        bottomNavigationBar: BottomNavigationBar (
          currentIndex: currentPage,

          onTap:  (index) { currentPage=index; setState(() {});},
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor:Colors.white.withOpacity(0.5), 
          items: [
            
          BottomNavigationBarItem(icon: Icon(Icons.verified_user_outlined, ),label:"User" ),
          BottomNavigationBarItem(icon: Icon(Icons.settings,),label: "Settings",),

        ]
        ),
    );
  }
}
class CustonScreen extends StatelessWidget {
  
    final Color color ;

  CustonScreen({required this.color});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

          color:color,
          child: Center(
            
            child: Text("Universitario de Deportes ",style: TextStyle(color: Colors.black45,fontSize: 20,fontWeight: FontWeight.w900),),
            
          ),
        );
        
  }

}