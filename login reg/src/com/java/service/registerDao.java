package com.java.service;

import com.java.model.register;

public interface registerDao {
	public int insertLecturer(register c);
	public register getUser(String email,String password);
    public void updateUser(register c);
    public void deleteUser(register c);
    //public int updateAddress(customer c);
}
