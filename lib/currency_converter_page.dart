
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
const CurrencyConverterMaterialPage({Key? key}) : super(key: key);


  @override
  State<CurrencyConverterMaterialPage> createState() =>
  _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage>{

    double result = 0;
    TextEditingController textEditingController=TextEditingController();

   @override
  Widget build(BuildContext context){
     
    const border =  OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.all(Radius.circular(30)),
    );
    return  Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor:  Colors.amberAccent,
        elevation: 0,
        title: const Text("Currency Converter",style: TextStyle(
          color: Colors.black,
        ),),
        centerTitle: true,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(

             'INR ${result!=0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0) }',

              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle:  TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ElevatedButton(
                  onPressed: () {
                   try{
                    setState(() {
                     result = double.parse(textEditingController.text)*82;
                   });

                   }  catch (e) {
                    
                        // print('Error: $e');
                       }
                   

                  },      
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor:Colors.white,  
                    minimumSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    
                    ),
           
                   ),
                   child: const Text('Convert'),
             ),
           )

          ],
        ),
      ),
    );  
  }
}