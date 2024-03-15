import 'package:cyber/Algrothims/const.dart';

class AlgorithmCaesar {
  String cipherText = "";

  encyrptionForCaesar(int key, String plainText, int lengthLanguage) {
    for (int i = 0; i < plainText.length; i++) {
      for (int j = 0; j < lengthLanguage; j++) {
        if (plainText[i] != " ") {
          if (lengthLanguage == 26 && plainText[i] == charactersEn[j]) {
            cipherText = cipherText + charactersEn[(j + key) % lengthLanguage];
          } else if (lengthLanguage == 28 && plainText[i] == charactersAr[j]) {
            cipherText = cipherText + charactersAr[(j + key) % lengthLanguage];
          }
        } else {
          cipherText += " ";
          break;
        }
      }
    }
    return cipherText;
  }

  decyrptionCaesar(int key, String plainText, int lengthLanguage) {
    for (int i = 0; i < plainText.length; i++) {
      for (int j = 0; j < lengthLanguage; j++) {
        if (plainText[i] != " ") {
          if (lengthLanguage == 28 && plainText[i] == charactersAr[j]) {
            cipherText = cipherText + charactersAr[(j - key) % lengthLanguage];
          } else if (lengthLanguage == 26 && plainText[i] == charactersEn[j]) {
            cipherText += charactersEn[(j - key) % lengthLanguage];
          }
        } else {
          cipherText += " ";
          break;
        }
      }
    }
    return cipherText;
  }
}
