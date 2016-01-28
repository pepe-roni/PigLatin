import java.util.*;

public void setup() {
  String lines[] = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
}
public int findFirstVowel(String sWord)
  //precondition: sWord is a valid String of length greater than 0.
  //postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for (int i=0; i<sWord.length(); i++)
  {
    String s = sWord.substring(i, i+1);
    if (s.equals("a") ||s.equals("e") || s.equals("i") || s.equals("o") || s.equals("u"))
    {
      return i;
    } 
  }
  return -1;
}
public String pigLatin(String sWord)
  //precondition: sWord is a valid String of length greater than 0
  //postcondition: returns the pig latin equivalent of sWord
{
  if (findFirstVowel(sWord)==0)
  {
    return sWord+"way";
  } 
  else if (sWord.charAt(1)=='u' && sWord.charAt(0)=='q')
  {
    String s = sWord.substring(2, sWord.length());
    return s+"quay";
  }
  else if (findFirstVowel(sWord)>0)
  {
    int i=findFirstVowel(sWord); 
    String s=sWord.substring(i, sWord.length());
    return s+sWord.substring(0,i)+"ay";
  } 
  else if (findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else 
  {
    return "Error";
  }
}