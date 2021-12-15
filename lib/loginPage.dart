import 'package:flutter/material.dart';
import 'package:login_page/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget topPage() {
      return Container(
          margin: EdgeInsets.only(top: 43.6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back, color: Colors.black),
              SizedBox(
                height: 16.6,
              ),
              Text(
                "Create New Account",
                style: primTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Join us and transfer from your phone just \none click!",
                style: secTextStyle.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ));
    }

    Widget inputSec() {
      Widget nameInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
                style: primTextStyle.copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
              ),
            ],
          ),
        );
      }

      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email",
                style: primTextStyle.copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
              ),
            ],
          ),
        );
      }

      Widget phoneNumberInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Phone Number",
                style: primTextStyle.copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                    hintText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
              ),
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            phoneNumberInput(),
          ],
        ),
      );
    }

    Widget submitButton() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        width: 328,
        height: 40,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: kBlueColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)
            )
          ),
          child: Text("Continue",
          style: whiteTextStyle.copyWith(
            fontWeight: FontWeight.w500
          ),
          )
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        children: [topPage(), inputSec(), submitButton()],
      ),
    );
  }
}
