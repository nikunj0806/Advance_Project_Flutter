import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        
        children: [
          const SizedBox(width: 26,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text("Verification",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                  ],
                  ),
              ),
                
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Text("""We've send you the verification
code on +916353737293""",)
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
         
          const Row(
            children: [

            ],
          ),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 56, 55, 55),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                        child: const TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize:22 ),
                          cursorColor: Colors.black,

                        ),
              ),
              const SizedBox(width: 20,),
              Container(
                height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 56, 55, 55),
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(10)),
                        child: const TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize:22 ),
                          cursorColor: Colors.black,
                          
                        ),
              ),
              const SizedBox(width: 20,),
              Container(
                height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 56, 55, 55),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                        child: const TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize:22 ),
                          cursorColor: Colors.black,
                          
                        ),
              ),
              const SizedBox(width: 20,),
              Container(
                height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 56, 55, 55),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                        child: const TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize:22 ),
                          cursorColor: Colors.black,

                        ),
              ),

            ],
          ),
          const SizedBox(height:40 ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pink[400],
                ),
                child: IconButton(onPressed: (){}, icon: const Text("CONTINUN",style: TextStyle(color: Colors.white,)),
              )),
            ],
          ),
          const SizedBox(height: 25,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text("Re - send code in",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 63, 62, 62)),),
              ),
              const SizedBox(width: 4,),
               Container(
                child: const Text("02:00",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 187, 39, 88)),),
              ),

            ],
          )
        ],
        
      ),
        ]
      )
    );
    }
}
