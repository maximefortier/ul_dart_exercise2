  part of ul_dart_exercise2;

  
  //This function returns the longest word in a given sentence
  f_question2_2(var myText) {
    String textWoutSpaces = myText.replaceAll('\n', '');
    textWoutSpaces = textWoutSpaces.replaceAll(',', '');
    textWoutSpaces = textWoutSpaces.replaceAll('.', ''); 
    List wordList = textWoutSpaces.split(' ');
    //print(wordList);
    var i = 0;
    var maxLenght = 0;
    var maxLenghtId = 0;
    for(var myWord in wordList){
      
      if(myWord.length > maxLenght){
        maxLenght = myWord.length;
        maxLenghtId = i;
      }
      i++;
    }
    var longestSentence = wordList[maxLenghtId].toString();
  
  return(longestSentence);
}

  
  
  
  //This function returns a random sentence
  f_question2_3(var myElements, var numberOfItems) {
    var i = 0;
    int randomNum ;
    var randomSentence = '';
    var newWord = '';
    var arrayLenght = myElements.length;
    //print(arrayLenght);
    do{
      randomNum = new Random().nextInt(arrayLenght);
      newWord = myElements[randomNum];
      //print(randomNum);
      randomSentence = randomSentence + ' ' + newWord;
      i++;
    }while(i< numberOfItems);
  return(randomSentence);
}
  
  //This function manages the member contact list
  f_question2_4(var myElements, var numberOfItems) {
    var i = 0;
    int randomNum ;
    var randomSentence = '';
    var newWord = '';
    var arrayLenght = myElements.length;
    //print(arrayLenght);
    do{
      randomNum = new Random().nextInt(arrayLenght);
      newWord = myElements[randomNum];
      //print(randomNum);
      randomSentence = randomSentence + ' ' + newWord;
      i++;
    }while(i< numberOfItems);
  return(randomSentence);
}
