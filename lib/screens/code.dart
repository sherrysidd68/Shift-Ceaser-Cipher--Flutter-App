class CeaserCipher {
  int key;
  CeaserCipher(this.key);
  String ceaserEnc(String input) {
    key = this.key;
    input = input.replaceAll(' ', '');
    input = input.toUpperCase();
    String output = "";
    for (int i = 0; i < input.length; i++) {
      output +=
          String.fromCharCode(((input.codeUnitAt(i) + key) - 65) % 26 + 65);
    }
    return output.toUpperCase();
  }

  String ceaserDec(String input) {
    key = this.key;
    input = input.replaceAll(' ', '');
    input = input.toUpperCase();
    String output = "";
    for (int i = 0; i < input.length; i++) {
      output +=
          String.fromCharCode(((input.codeUnitAt(i) - key) - 65) % 26 + 65);
    }
    return output.toUpperCase();
  }
}
