public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	char[]vowels= {'a','e','i','o','u'}; 
	for (int i=0;i<sWord.length();i++){
    for (int b=0;b<vowels.length;b++){
      if (sWord.charAt(i)==vowels[b]){
        return i;
      }
    }
  }
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	
	if (findFirstVowel(sWord)==0){
		return sWord+ "way";
	}
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	if ((findFirstVowel(sWord)!=0)&&(sWord.charAt(0)!='q')){
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord))+"ay";
	}
	if ((findFirstVowel(sWord)==1)&&(sWord.charAt(0)=='q')){
		return sWord.substring(2)+sWord.substring(0,2)+"ay";
	}
	else
	{
		return "ERROR!";
	}
}
