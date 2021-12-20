import 'package:flutter/material.dart';
import 'package:softpal_techno/constant/colors.dart';
import 'package:softpal_techno/constant/radii.dart';
import 'package:softpal_techno/constant/string.dart';
import 'package:softpal_techno/constant/styles.dart';
import 'package:softpal_techno/screen/home_page.dart';
import 'package:softpal_techno/services/authentication.dart/api/api_service.dart';
import 'package:softpal_techno/services/authentication.dart/model/login_model.dart';
import 'package:softpal_techno/shared/base_widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalKeyForm = new GlobalKey<FormState>();
  bool hidePassword = true;
  late LoginRequestModel requestModel;
  final email = TextEditingController();
  final pass = TextEditingController();
  late SharedPreferences logindata;
  late bool newuser;

  @override
  void initState() {
    super.initState();
    requestModel = LoginRequestModel(email: 'email', password: 'password');
    check_if_already_login();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }

  @override
  void dispose() {
    email.dispose();
    pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.VIDEO_CALL,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  margin: EdgeInsets.symmetric(vertical: 85, horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: Radii.textFiledBorderRadius,
                      color: AppColors.appBarColor,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.actionChipColor,
                          offset: Offset(0, 7),
                        )
                      ]),
                  child: Form(
                    key: globalKeyForm,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.1,
                              child: getImage(CustomImage.loginLogo),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Login",
                                style: BaseStyles.loginButtonStyle.copyWith(
                                    color: Colors.blue, fontSize: 24)),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: email,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (input) => requestModel.email = input!,
                          validator: (input) => !input!.contains("@")
                              ? "Email should valid"
                              : null,
                          decoration: InputDecoration(
                              hintText: "Email",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: Radii.textFiledBorderRadius,
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              prefixIcon:
                                  getIconButton(Icons.email, Colors.green),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: Radii.textFiledBorderRadius,
                                  borderSide:
                                      const BorderSide(color: Colors.green))),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          controller: pass,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: hidePassword,
                          keyboardType: TextInputType.text,
                          onSaved: (input) => requestModel.password,
                          validator: (input) =>
                              input!.length < 3 || input.isEmpty
                                  ? "Password should be more than 3"
                                  : null,
                          decoration: InputDecoration(
                              hintText: "Password",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: Radii.textFiledBorderRadius,
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              suffixIcon: GestureDetector(
                                child: getIconButton(
                                    hidePassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    AppColors.cool_green.withOpacity(0.6)),
                                onTap: () {
                                  setState(() {
                                    hidePassword = !hidePassword;
                                  });
                                },
                              ),
                              prefixIcon:
                                  getIconButton(Icons.lock, Colors.green),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: Radii.textFiledBorderRadius,
                                  borderSide:
                                      const BorderSide(color: Colors.green))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FlatButton(
                            shape: StadiumBorder(),
                            color: AppColors.cool_green,
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 80),
                            onPressed: () async {
                              String emailId = email.text;
                              String passWord = pass.text;
                              if (emailId != '' && passWord != '') {
                                print("Sucessfull");
                                logindata.setBool('login', false);
                                logindata.setString('emailId', emailId);

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              }

                              if (validateAndSave()) {
                                print(requestModel.toJson());
                              }

                              APIService apiService = new APIService();
                              apiService.login(requestModel).then((value) {
                                if (value.token.isNotEmpty) {
                                  final snackBar = SnackBar(
                                      content: Text("Login Sucessfull"));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);

                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => HomePage()));
                                } else {
                                  final snackBar = SnackBar(
                                      backgroundColor: AppColors.emergencyColor,
                                      content: Text(
                                        "Incorrect email or password",
                                        style: BaseStyles.loginButtonStyle,
                                      ));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              });
                            },
                            child: Text(
                              "Login",
                              style: BaseStyles.loginButtonStyle,
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = globalKeyForm.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
