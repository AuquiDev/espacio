import 'package:espacio/domingo/init2_page.dart';
import 'package:flutter/material.dart';



class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
        body: Column(
          children: [          
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                color:Colors.transparent,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network('https://media.istockphoto.com/vectors/hand-drawn-glass-of-beer-vector-id1038586226?k=20&m=1038586226&s=612x612&w=0&h=1GrTdY-samaQRovrcbwuFPJQUwsjI7UyWWSXpZL9bFA=',
                       height:300,
                       width: 300,
                      ),
                    
                  ],
                ),
                )
            ),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffffb901),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40)
                )
              ),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                   const SizedBox(height: 40,), 
                   const Text('Welcome',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 40,),
                   const Text('sadasjkdjkashdk a djkn asdasdabk sdk askdn ask  das daksjdasdkjahskdh adkjhas kjd ajksd kjashdkj ahsdkj haksdh aksjdhk asd',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13
                    ),
                  ),

                  const SizedBox(height: 30,),

                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 52,
                          child: ElevatedButton(
                            onPressed: (){

                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)
                              )
                            ),
                            child: const Text('Sign In')),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: SizedBox(
                          height: 52,
                          child: ElevatedButton(
                            onPressed: (){
                                  Navigator.push(
                                    context,MaterialPageRoute(
                                       builder: (context){
                                        return Init2Page();

                                      }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)
                              )
                            ),
                            child: const Text('Sign In',style: TextStyle(color: Colors.black),)),
                        ),
                      )
                    ],
                ),
                 const SizedBox(height: 40,),
                ],
              ),
            )
           
          ],
        ),
      
    );
  }
}