public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String backwards = reverse(word);
  if (noSpaces(word).equalsIgnoreCase(noSpaces(reverse(backwards))))
  return true;
return false;
}
public String reverse(String str)
{
  String s = "";
  for(int i = str.length()-1; i>= 0; i--)
    s = s + str.substring(i, i+1);
return s;
}
public String noSpaces(String sWord){
  String spaceless = "";
  for (int i = 0; i <= sWord.length()-1; i++){
    if (!(sWord.substring(i, i+1).equals(" ")))
      spaceless = spaceless + sWord.substring(i, i+1);
  }
return spaceless;
}
