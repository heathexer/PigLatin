public void setup()
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++)
	{
	  System.out.println(pigLatin(lines[i]));
	}
}

public void draw(){}

public int findFirstVowel(String sWord) {
	char c;
	for(int i = 0; i < sWord.length(); i++) {
		c = sWord.charAt(i);
		if(c == 'a' || c == 'e' || c == 'i' || c == 'o' || (c == 'u' && i == 0)) return i;
		if(i > 0 && c == 'u' && sWord.charAt(i-1) != 'q') return i;
	}
	return -1;
}

public String pigLatin(String sWord) {
	int fv = findFirstVowel(sWord);
	if(findFirstVowel(sWord) == -1) {
		return sWord + "ay";
	} else {
		return sWord.substring(fv) + sWord.substring(0, fv) + "ay";
	}
}
