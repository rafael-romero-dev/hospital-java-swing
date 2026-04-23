/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Formularios;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;

public class textoGraphics {

    public static String generateImage() {
        String text = Captcha.createCaptchaValue();

        Font font = new Font("Times New Roman", Font.ITALIC | Font.BOLD, 48);

        BufferedImage dummyImg = new BufferedImage(1, 1, BufferedImage.TYPE_INT_ARGB);
        Graphics2D g2d = dummyImg.createGraphics();
        g2d.setFont(font);
        FontMetrics fm = g2d.getFontMetrics();

        int width = fm.stringWidth(text);
        int height = fm.getHeight();

        BufferedImage img = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);
        g2d = img.createGraphics();
        g2d.setFont(font);
        g2d.setColor(Color.WHITE);
        g2d.drawString(text, 0, fm.getAscent());
        g2d.dispose();

        try {
            // Crear la carpeta si no existe
            File carpeta = new File(System.getProperty("user.dir") + "/captcha");
            if (!carpeta.exists()) {
                carpeta.mkdirs();
            }

            File archivo = new File(carpeta, "Text.png");
            ImageIO.write(img, "png", archivo);

        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }

        System.out.println("Texto generado: " + text);
        return text;
    }
}