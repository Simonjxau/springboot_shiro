package com.jxau.service;

import com.jxau.domain.User;
import com.jxau.util.PageBean;

import java.math.BigDecimal;
import java.util.List;

public interface UserService {
    void userRegister(User user);

    User userLogin(User user);

    void deposit(BigDecimal money, int id);

    boolean withdraw(int id, BigDecimal money);

    User findUserByUsername(String getMoneyUser);

    boolean transfer(int id, String getMoneyUser, BigDecimal transferMoney);

    void updatePwdById(String id, String newPwd);

    User findUserByUid(String id);

    PageBean findRecordByPage(String id, int currentPage, int currentCount);

    List<User> findAll();
}
