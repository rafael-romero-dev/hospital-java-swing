/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Formularios;

import java.util.Random;
/**
 *
 * @author rafae
 */
public class Captcha {
    public static String createCaptchaValue() {
    int length = 7; // Longitud fija del CAPTCHA
    
    Random rand = new Random();
    StringBuilder strBuff = new StringBuilder();
    
    for (int i = 0; i < length; i++) {
        int baseCharNum = Math.abs(rand.nextInt()) % 62;
        int charNum = 0;
        
        if (baseCharNum < 26)
            charNum = 65 + baseCharNum;
        else if (baseCharNum < 52)
            charNum = 97 + baseCharNum - 26;
        else 
            charNum = 48 + baseCharNum - 52;
        
        strBuff.append((char) charNum);
    }
    
    return strBuff.toString();
}

}
