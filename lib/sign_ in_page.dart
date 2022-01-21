import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
static const String id = "SignInPage";
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isVisible = false;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(
          children: [

            Expanded(
              flex: 2,
              child:
              Container(
                margin: EdgeInsets.all(80),
                child: Text("Your Logo", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
              ),),
            Expanded(
              flex: 3,

              child:  Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50), ),
                  ),
                  child:
                  ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container (
                        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text("Create an account", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text("Sign up to countinue", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),),
                            SizedBox(height: 20,),
                            Text("Email", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Container(
                              child:     TextFormField(
                                controller: TextEditingController(),
                                autovalidateMode: AutovalidateMode.always,
                                validator: (value) => validateEmail(value),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                                  hintText: "email",
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text("Password", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            // 123
                            Container(
                              child:     TextFormField(

                                autovalidateMode: AutovalidateMode.always,
                                validator: (value) => validatePassword(value),
                                obscureText: _isVisible ? false : true,
                                decoration: InputDecoration(

                                  suffixIcon: IconButton(
                                    onPressed: () => updateStatus(),
                                    icon:
                                    Icon(_isVisible ? Icons.visibility : Icons.visibility_off),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                                  hintText: "password",
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: MaterialButton(
                                onPressed: (){
                                  // Navigator.pushNamed(context, SecondPage.id);
                                },
                                child: Text("Get Started", style: TextStyle(color: Colors.white),),
                              ),),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                            TextButton(onPressed: (){}, child: Text("Already have an accoun? Log in",)),],),
                          ],),),


                    ],
                  )

              ),

            ),
          ],
        ),
      ),

    );
  }
  String validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return 'Enter a valid email address';
    else
      return "succes";
  }
  String validatePassword(String? value) {
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    if(value == null || value.isEmpty || !regExp.hasMatch(value))
      return "invalid password";
    else
      return "success";
  }
}
