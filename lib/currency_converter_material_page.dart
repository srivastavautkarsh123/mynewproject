import 'package:flutter/material.dart';


class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() {
    print('constructor called');
    return _CurrencyConverterMaterialPageState();

  }
     
}
class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
      double result = 0;
    final TextEditingController textEditingController = TextEditingController();
   

 
  @override
  Widget build(BuildContext context) {
     //final textEditingController = TextEditingController();
  
  final border = OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(80
                  ),
                );
    // TODO: implement build
    return 
    Scaffold(
    
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          title: Center(child: Text('Currency Converter'))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              
              Text(
              'INR $result', 
              // result.toString(),
              
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  style: TextStyle(color: Colors.black),
                
                  decoration: InputDecoration(
                    hint: Text(
                      'Enter the Amount in USD',
                      style: TextStyle(color: Colors.black),
                    ),
                    prefixIcon: Icon(Icons.monetization_on),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                           
                            keyboardType: TextInputType.numberWithOptions(
                decimal: true,
                            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                   
                    setState(() {
                       result = double.parse(textEditingController.text)*89.91;

                    });
                  },
                  child: Text(
                    'Convert to INR',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity,50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80
                  ),
                  ),
                                ),  
              ),    
               
            
                 ),
            ],
          ),
    )
    );
  
  
  }
    }