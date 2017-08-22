package ua.lviv.helenatex.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import ua.lviv.helenatex.entity.User;
import ua.lviv.helenatex.services.MailService;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@Service
public class MailServiceImpl implements MailService {
    @Autowired
    private JavaMailSender javaMailSender;

    @Override
    public void send(User user) {
        MimeMessage message = javaMailSender.createMimeMessage();//допоміжний обєкт для відправлення повідомлень
        MimeMessageHelper helper = new MimeMessageHelper(message);//класдекоратор
        try {
            message.setFrom(new InternetAddress("ihordidyk95@gmail.com"));//тільки для Windows
            helper.setTo(user.getEmail());
            helper.setText("Hello " + user.getUsername()+"visit our site", true);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        javaMailSender.send(message);
    }
}
