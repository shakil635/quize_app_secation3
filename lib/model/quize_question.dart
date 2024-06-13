class QuizeQuestion{
  const QuizeQuestion(this.text,this.answer);

  final String text;
  final List<String>answer;
  List<String> getSuffle(){
    List <String> suffleList =List.of(answer);
    //this line copy (list.of) main list
    suffleList.shuffle();
    //use shuffle randomly generate list record and getSuffle this method return it.
    return suffleList;

  }

}

/*
QuizeQuestion akta blue print app er jonno, 
ai khan e data gular fame banano hoy ki
vabe data gula prosses kora jay tar fame.

*/