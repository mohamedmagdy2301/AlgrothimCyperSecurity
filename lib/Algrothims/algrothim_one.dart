class Algorithm {
  List characters = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z",
  ];
  String newWord = "";

  encyrption(int number, String word) {
    for (int i = 0; i < word.length; i++) {
      for (int j = 0; j < 26; j++) {
        if (word[i] != " ") {
          if (word[i] == characters[j] ||
              word[i] == characters[j].toUpperCase()) {
            newWord = newWord + characters[(j + number) % 26];
          }
        } else {
          newWord += " ";
          break;
        }
      }
    }
    return newWord;
  }

  decyrption(int number, String word) {
    for (int i = 0; i < word.length; i++) {
      for (int j = 0; j < 26; j++) {
        if (word[i] != " ") {
          if (word[i] == characters[j] ||
              word[i] == characters[j].toUpperCase()) {
            newWord = newWord + characters[(j - number) % 26];
          }
        } else {
          newWord += " ";
          break;
        }
      }
    }
    return newWord;
  }
}
