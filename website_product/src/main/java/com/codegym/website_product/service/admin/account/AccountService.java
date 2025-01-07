package com.codegym.website_product.service.admin.account;

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
    public void save(Account account) {
        accountRepository.save(account);
    }

    @Override
    public void update(long id, Account s) {

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
