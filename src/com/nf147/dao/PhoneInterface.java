package com.nf147.dao;

import com.nf147.entity.Phone;

import java.util.List;

public interface PhoneInterface {
    Phone add(Phone phone);                 //添加手机的方法
    boolean delete (int id);                //删除手机的方法
    boolean update(Phone phone);            //修改手机信息
    List<Phone> listAll();                  //获取所有手机信息
    List<Phone> getPhoneByName(String name);//通过名字查询
    Phone getPhoneById(int id);             //通过id查询
}
