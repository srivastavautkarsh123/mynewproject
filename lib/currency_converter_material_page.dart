import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
  final border = OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(80
                  ),
                );
    // TODO: implement build
    return Scaffold(
    
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
                '0',
              
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
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
                child: TextButton(
                  onPressed: () {
                  
                  },
                  child: Text(
                    'Convert to INR',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                style: TextButton.styleFrom(
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
