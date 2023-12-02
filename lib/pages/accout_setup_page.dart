import 'package:flutter/material.dart';
import 'package:travel_journal/components/app_colors.dart';
import 'package:travel_journal/components/app_images.dart';

class AppSetUpPage extends StatelessWidget {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  bool _isNotValidate = false;

  void registerUser() async {
    if (userNameController.text.isNotEmpty && emailController.text.isNotEmpty) {
    } else {
      setState(() {
        _isNotValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppImages.setupback,
              ),
              fit: BoxFit.cover),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Spacer(),
          Container(
            margin: const EdgeInsets.only(
              left: 35,
              right: 35,
            ),
            height: MediaQuery.of(context).size.height - 100,
            width: MediaQuery.of(context).size.width - 70,
            decoration: BoxDecoration(
                color: AppColors.mainColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  const Text(
                    'Account SetUp',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      ClipOval(
                        child: Container(
                          width: 180,
                          height: 180,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(AppImages.onetimefirst),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            // Action when edit icon is tapped
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.buttonColor,
                            ),
                            padding: const EdgeInsets.all(6),
                            child: const Icon(
                              Icons.edit,
                              color: AppColors.mainColor,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      controller: userNameController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.buttonColor,
                          errorStyle: TextStyle(color: Colors.red),
                          errorText:
                              _isNotValidate ? 'Enter your User Name' : null,
                          hintText: "User Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.buttonColor,
                          errorStyle: TextStyle(color: Colors.red),
                          errorText: _isNotValidate ? "Enter your Email" : null,
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      registerUser();
                    },
                    child: Container(
                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 49, 75, 59),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Create",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                          ]),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Or sign up with",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 45,
                    width: 300,
                    decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.google,
                            height: 30,
                            width: 30,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            " Continue with Google",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ]),
                  ),
                  const Spacer(),
                ]),
          ),
          Spacer(),
        ]),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
