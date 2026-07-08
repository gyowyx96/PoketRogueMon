String capitalize(String text){
  List<String> splittedTxt = text.split("");
  splittedTxt[0] = splittedTxt[0].toUpperCase();
  return splittedTxt.join();
}