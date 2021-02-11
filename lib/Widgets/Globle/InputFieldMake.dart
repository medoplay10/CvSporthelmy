import 'package:flutter/material.dart';

class InputFieldMake extends StatelessWidget {
  FocusNode touchFocus = new FocusNode();
  Function validatorInput;
  var iconInput;
  final inputController;
  bool isNumber;
  int maxNumber;
  double setWidth;

  double setHeight;

 bool hideText;
  String title;
  InputFieldMake({ @required this.touchFocus,  this.hideText =false   ,this.maxNumber  , this.setWidth = .85  ,this.setHeight = 0.075, this.isNumber = false  , @required this.inputController ,@required this.title  ,@required  this.iconInput ,@required   this.validatorInput });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin:EdgeInsets.only(top: 10) ,
        width: MediaQuery.of(context).size.width *  setWidth,
        height: MediaQuery.of(context).size.height * setHeight ,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(10),
        ),


        child: TextFormField(


          keyboardType: isNumber ?TextInputType.phone : TextInputType.text ,
          maxLength: isNumber? maxNumber : null,
          validator: validatorInput,
          controller: inputController,
          focusNode: touchFocus,
           obscureText: hideText ? true : false,
          style: TextStyle(fontSize: 16, color: Colors.grey),
          decoration: InputDecoration(
              prefixIcon: Icon(iconInput, color: Color(0xff68699C)),
              hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
              border: InputBorder.none,
              hintText: title,
              contentPadding: EdgeInsets.only(top: 5 ,left: 5),
              counterText: "",
              fillColor: Colors.white,
              filled: true),
        ),
      ),
    );
  }
}
