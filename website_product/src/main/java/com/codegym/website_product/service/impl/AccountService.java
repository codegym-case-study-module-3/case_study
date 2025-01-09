package com.codegym.website_product.service.impl;

import com.codegym.website_product.entity.Account;
import com.codegym.website_product.repository.AccountRepository;
import com.codegym.website_product.service.IAccount;

import java.util.List;

public class AccountService implements IAccount {
    private final AccountRepository accountRepository = new AccountRepository();

    @Override
    public List<Account> getAll() {
        return accountRepository.getAll();
    }

    @Override
    public Account save(Account account) {
        accountRepository.save(account);
        return account;
    }

    @Override
    public void update(long id, Account account) {
        accountRepository.updateAccount(account);
    }

    @Override
    public void remove(long id) {
        accountRepository.deleteById(id);
    }

    @Override
    public Account findById(long id) {
        return null;
    }

    @Override
    public Account findByEmail(String email) {
        return accountRepository.findAccountByemail(email);
    }

    @Override
    public Account findAccByEmailAndPassword(String email, String password) {
        return accountRepository.findLoginAccount(email, password);
    }
}
