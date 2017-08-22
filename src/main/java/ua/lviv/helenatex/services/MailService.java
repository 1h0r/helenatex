package ua.lviv.helenatex.services;


import ua.lviv.helenatex.entity.User;

public interface MailService {
    void send(User user);
}
