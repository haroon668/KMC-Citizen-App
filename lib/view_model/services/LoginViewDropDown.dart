import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kmcapp/res/color/appcolors.dart';
import 'package:kmcapp/view_model/loginViewDialogueButton.dart';

LoginViewGendarDropDown() {
  return Container(
    height: 70,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: AppColors.blueColor,
      ),
      color: AppColors.greenColor,
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Row(
            children: [
              Icon(
                Icons.male_rounded,
                color: AppColors.whiteColor,
              ),
              SizedBox(width: 15),
              Text(
                "Gender",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontFamily: "FontMain",
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: GestureDetector(
            onTap: () {
              showCustomDialog();
            },
            child: Container(
              height: 25,
              decoration: BoxDecoration(
                color: AppColors.greyColor,
                border: Border.all(color: AppColors.blackColor),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select Gender",
                      style: TextStyle(
                        fontFamily: "FontMain",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down_sharp),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
