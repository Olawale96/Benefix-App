

class AppConfig {
  static const minTextScaleFactor = 1.0;
  // there is no minimum scaling appliedto the text content of the mobile app and the user can scale down the font size to the smallest size as allowed by the user's device in the settings
  static const maxTextScaleFactor = 1.06;
  // text fonts size can be scaled up to 106% of the original size

  // static const String termsAndConditionText =
  //     "\nReturns and Cancellations\n\n2 Kids SA ‘Gradloup’ Money Back Guarantee\n\n1.INTRODUCTION\n\nThis User Agreement, the Mobile devices terms, and all policies and additional terms posted on and in our sites, applications, tools and services (collectively “Services”) set out the terms on which 2 Kids SA ‘Gradloup’ offers you access to and use of our Services. You can find an overview of our policies here. The Mobile devices terms, all policies and additional terms posted on and in our sites, applications, tools, and services are incorporated into this User Agreement. You agree to comply with all of the terms of this User Agreement when accessing or using our Services. The entity you are contracting with is: 2 Kids SA ‘Gradloup’, Chemin de Ballegue 55, 1066 Epalinges, Switzerland which has 100 % ownership of ‘Gradloup’ a registered trademark,. In this User Agreement, these entities are individually and collectively referred to as “2 Kids SA ,‘Gradloup’,” “we,” or “us.” Please be advised that this User Agreement contains provisions that govern how claims you and we have against each other are resolved (see Disclaimer of Warranties; Limitation of Liability and Legal Disputes provisions below). It also contains an Agreement to Arbitrate, which will, with limited exception, require you to submit claims you have against us or our agents to binding and final arbitration, unless you opt out of the Agreement to Arbitrate (see Legal Disputes, Section B (“Agreement to Arbitrate”)). Unless you opt out: (1) you will only be permitted to pursue claims against us or our agents on an individual basis, not as a plaintiff or class member in any class or representative action or proceeding and (2) you will only be permitted to seek relief (including monetary, injunctive, and declaratory relief) on an individual basis.";
  // static const String privacyPolicyText = "";

  // static const String aboutAppTxt =
  //     "Tika Social was created to be a gathering place for everyone. \n\nThe purpose of the app is to bridge the gap between people all over the world.\u2028\u2028This app is meant for the world but it is definitely INFLUENCED by Polynesians. Regardless of who you are, just know that this app is for you. \n\nHow to best utilize this platform:\n\n\$1.99 is the basic subscription that will allow you to access all the best features of the app such as: creating a profile, adding friends, creating a top friend list, purchase tickets, send money, leave reviews just to name a few.\n\n\$9.99 is the advanced subscription that allows you to make money on the app. Along with access to the basic features, you are now able to:\u2028-Create events\n-Create recommendations\n-Create a live streaming profile\n\n*For every event or recommendation you create, you will receive money for it. \n\n**Should people leave you a review, good or bad, you will still get money for it.\n\nIf you need further clarification, please use the Feedback to ask your question.\n\n\$4.99 is the dating subscription of the app. Be advised that should you add the dating portion to your subscription, it’s an additional cost. You’re always free to downgrade back to basic. \n\nMake sure you always check back here for more updates on future features of the app.\n\n#SeeYouInTheChats!";

  // static handleFirebaseErrorMessage(FirebaseException firebaseException) {
  //   String errorMessage = '';
  //   switch (firebaseException.code) {
  //     case 'session-expired':
  //       errorMessage = 'The SMS code has expired. resend new';
  //       break;
  //     case 'email-already-in-use':
  //       errorMessage = 'User with this phone number already exit';
  //       break;
  //     case 'invalid-verification-code':
  //       errorMessage = 'Invalid verification code';
  //       break;
  //     case 'user-not-found':
  //       errorMessage = 'No user found for that phone number.';
  //       break;
  //     case 'wrong-password':
  //       errorMessage = 'Wrong password provided for that user.';
  //       break;

  //     default:
  //       errorMessage = 'An error occored, Connection failed';
  //   }
  //   Fluttertoast.showToast(
  //       msg: errorMessage.toString(),
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.BOTTOM,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Colors.black54,
  //       textColor: Colors.white,
  //       fontSize: 16.0);
  // }

  // static showToast(String message) {
  //   Fluttertoast.showToast(
  //       msg: message,
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.BOTTOM,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Colors.black54,
  //       textColor: Colors.white,
  //       fontSize: 16.0);
  // }

  // static getImageFromGallery(
  //     BuildContext context, Function(String) onSuccess) async {
  //   try {
  //     XFile? pickedFile = await ImagePicker().pickImage(
  //       source: ImageSource.gallery,
  //       maxWidth: 1800,
  //       maxHeight: 1800,
  //     );
  //     if (pickedFile != null) {
  //       final croppedFile = await ImageCropper().cropImage(
          
  //         sourcePath: pickedFile.path,
  //         compressFormat: ImageCompressFormat.jpg,
  //         compressQuality: 100,
  //       );
  //       onSuccess(croppedFile!.path);
  //     }
  //   // ignore: empty_catches
  //   } catch (e) {}
  // }
}
