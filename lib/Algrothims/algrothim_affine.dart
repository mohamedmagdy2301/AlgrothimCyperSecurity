import 'package:cyber/Algrothims/const.dart';

class AlgorithmAffine {
  String cipherText = "";

  encyrptionForAffine(
      int keyAlpha, int keyBeta, String plainText, int lengthLanguage) {
    for (int i = 0; i < plainText.length; i++) {
      for (int j = 0; j < lengthLanguage; j++) {
        if (plainText[i] != " ") {
          if (lengthLanguage == 26 && plainText[i] == charactersEn[j]) {
            cipherText +=
                charactersEn[((j * keyAlpha) + keyBeta) % lengthLanguage];
          } else if (lengthLanguage == 28 && plainText[i] == charactersAr[j]) {
            cipherText +=
                charactersAr[((j * keyAlpha) + keyBeta) % lengthLanguage];
          }
        } else {
          cipherText += " ";
          break;
        }
      }
    }
    return cipherText;
  }

  decyrptionAffine(
      int keyAlpha, int keyBeta, String plainText, int lengthLanguage) {
    for (int i = 0; i < plainText.length; i++) {
      for (int j = 0; j < lengthLanguage; j++) {
        if (plainText[i] != " ") {
          if (lengthLanguage == 28 && plainText[i] == charactersAr[j]) {
            cipherText +=
                charactersAr[inverseNumbetAlpha(keyAlpha, lengthLanguage) * (j - keyBeta) % lengthLanguage];
          } else if (lengthLanguage == 26 && plainText[i] == charactersEn[j]) {
            cipherText +=
                charactersEn[inverseNumbetAlpha(keyAlpha, lengthLanguage) * (j - keyBeta) % lengthLanguage];
          }
        } else {
          cipherText += " ";
          break;
        }
      }
    }
    return cipherText;
  }

  inverseNumbetAlpha(int numberAlpha,int lengthLanguage) {
    for (int i = 0; i < lengthLanguage; i++) {
      if ((i * numberAlpha) % lengthLanguage == 1) {
        return i;
      }
    }
  }
}
