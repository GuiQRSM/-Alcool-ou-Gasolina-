import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TokenFrame extends StatefulWidget {
  const TokenFrame({Key? key}) : super(key: key);

  @override
  _TokenFrameState createState() => _TokenFrameState();
}

class _TokenFrameState extends State<TokenFrame> {

  var primeColor = Color.fromARGB(255, 168, 26, 29);
  TextEditingController _controllerField = TextEditingController();
  var _activeSwi = false;
  var _checkActive = false;
  var _sliderValue = 0.0;
  var _labelEvo = "";
  var _showResult = "";

  void _cleanField() {
    _controllerField.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset(
            "logo/newlogocar.png",
        width: 150,
            height: 120,
        ),
        backgroundColor: primeColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.account_circle_sharp,
            color: Colors.white,
            ),
            onPressed: (){
              print("Ícone de conta acionado!");
            },
            iconSize: 35,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top:16, bottom: 5),
                child: Text(
                    "Faça aqui a emissão do Token!",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: primeColor,
                ),),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Insira o seu ID!",
                    labelStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: primeColor,
                    ),
                  ),
                  obscureText: true,
                  maxLength: 10,
                  maxLengthEnforced: true,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: primeColor,
                    wordSpacing: 4,
                  ),
                  controller: _controllerField,
                  cursorColor: primeColor,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 14),
                child: SwitchListTile(
                    value: _activeSwi,
                    title: Text(
                        "Receber o token por SMS",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: primeColor
                    ),),
                    secondary: Icon(Icons.sms,
                    color: primeColor,),
                    activeColor: primeColor,
                    onChanged: (bool? active){
                      setState(() {
                        _activeSwi = active!;
                      });
                    },
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 14),
                child: CheckboxListTile(
                    value: _checkActive,
                    title: Text(
                        "Salvar seu token automaticamente",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: primeColor
                      ),
                    ),
                    activeColor: primeColor,
                    secondary: Icon(Icons.save,
                    color: primeColor,),
                    onChanged: (bool? active2){
                      setState(() {
                        _checkActive = active2!;
                      });
                    }),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 14, bottom: 5),
                child: Text(
                  "Definição da quantidade de tokens",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: primeColor
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Slider(
                    value: _sliderValue,
                    min: 0,
                    max: 10,
                    label: _labelEvo,
                    divisions: 10,
                    activeColor: primeColor,
                    inactiveColor: Colors.redAccent,
                    onChanged: (double? evo){
                      setState(() {
                        _sliderValue = evo!;
                        _labelEvo = "Quantidade de tokens: $_sliderValue";
                      });
                    },
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 14),
              child: RaisedButton(
                onPressed: (){
                  setState(() {
                    _showResult = "Conteúdo do TextField: " + _controllerField.text + " \n"
                                  "Estado atual do Switch: $_activeSwi\n"
                                  "Estado atual do Checkbox: $_checkActive\n"
                                  "$_labelEvo";
                                   _cleanField();
                  });
                },
                color: primeColor,
                padding: EdgeInsets.all(16),
                child: Text(
                    "Confirmar",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 14),
                child: Text(
                  "$_showResult",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: primeColor,
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
