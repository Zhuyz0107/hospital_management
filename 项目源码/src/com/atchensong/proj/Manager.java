package com.atchensong.proj;

public class Manager {
    private String account;
    private String password;

    public Manager(String username, String password) {
        this.account = username;
        this.password = password;
    }

    public Manager() {
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String username) {
        this.account = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
