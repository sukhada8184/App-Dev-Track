import 'dart:io';
void main(){
  var sentence;
  stdout.writeln('Enter the sentence:');
  sentence = stdin.readLineSync();

  int len = sentence.length;
  print('Characters: $len');

  int count=0;
  for(int i=0;i<len;i++){
    if(sentence[i]==' ' || sentence[i]=='.') count++;
  }
  print('Words: $count');

  int nsentence=0;
  for(int i=0;i<len;i++){
    if(sentence[i]=='.') nsentence++;
  }
  print('Sentences: $nsentence');

  int articlecount=0;
  for(int i=0;i<len;i++){
    if(sentence[i]=='a'&& sentence[i+1]==' '||sentence[i]=='A' && sentence[i+1]==' '|| (sentence[i]=='a'||sentence[i]=='A')&& sentence[i+1]=='n'|| (sentence[i]=='t'||sentence[i]=='T')&& sentence[i+1]=='h' && sentence[i+2]=='e') articlecount++;
  }
  print('Articles: $articlecount');


}
