package ua.lviv.helenatex.util;

import java.util.HashMap;
import java.util.Map;


public class Translit {

    private static final Map<Character, String> charMap = new HashMap<Character, String>();

    static {
        charMap.put('А', "a");
        charMap.put('Б', "b");
        charMap.put('В', "v");
        charMap.put('Г', "h");
        charMap.put('Ґ', "g");
        charMap.put('Д', "d");
        charMap.put('Е', "e");
        charMap.put('Є', "ye");
        charMap.put('Є', "ie");
        charMap.put('Ж', "zh");
        charMap.put('З', "z");
        charMap.put('И', "y");
        charMap.put('Ї', "yi");
        charMap.put('Ї', "i");
        charMap.put('Й', "y");
        charMap.put('К', "k");
        charMap.put('Л', "l");
        charMap.put('М', "m");
        charMap.put('Н', "n");
        charMap.put('О', "o");
        charMap.put('П', "p");
        charMap.put('Р', "r");
        charMap.put('С', "s");
        charMap.put('Т', "t");
        charMap.put('У', "u");
        charMap.put('Ф', "f");
        charMap.put('Х', "kh");
        charMap.put('Ц', "ts");
        charMap.put('Ч', "ch");
        charMap.put('Ш', "sh");
        charMap.put('Щ', "shch");
        charMap.put('Ю', "yu");
        charMap.put('Ю', "iu");
        charMap.put('Я', "ya");
        charMap.put('Я', "ia");

        charMap.put('а', "a");
        charMap.put('б', "b");
        charMap.put('в', "v");
        charMap.put('г', "h");
        charMap.put('ґ', "g");
        charMap.put('д', "d");
        charMap.put('е', "e");
        charMap.put('є', "ye");
        charMap.put('є', "ie");
        charMap.put('ж', "zh");
        charMap.put('з', "z");
        charMap.put('и', "y");
        charMap.put('i', "i");
        charMap.put('ї', "yi");
        charMap.put('ї', "i");
        charMap.put('й', "i");
        charMap.put('к', "k");
        charMap.put('л', "l");
        charMap.put('м', "m");
        charMap.put('н', "n");
        charMap.put('о', "o");
        charMap.put('п', "p");
        charMap.put('р', "r");
        charMap.put('с', "s");
        charMap.put('т', "t");
        charMap.put('у', "u");
        charMap.put('ф', "f");
        charMap.put('х', "h");
        charMap.put('ц', "c");
        charMap.put('ч', "ch");
        charMap.put('ш', "sh");
        charMap.put('щ', "sh");
        charMap.put('ю', "yu");
        charMap.put('ю', "iu");
        charMap.put('я', "ya");
        charMap.put('я', "ia");
    }



    public String translit(String string){


//        StringBuilder transliteratedString  = new StringBuilder();
//        for (int i=0;i<string.length();i++){
//            Character ch = string.charAt(i);
//            String charFromMap = charMap.get(ch);

//
//
//            if (charFromMap==null){
//                transliteratedString .append(ch);
//            }else {
//                transliteratedString .append(charFromMap);
//            }
//
//        return transliteratedString.toString();
        return "";
    }
}
