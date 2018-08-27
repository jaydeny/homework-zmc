package com.nf147.dao;

import com.nf147.entity.Phone;

import java.util.ArrayList;
import java.util.List;

public class PhoneDAO implements PhoneInterface {
    private static List<Phone> phoneDB = new ArrayList<>();
    static {
        phoneDB.add(new Phone(1,"iphone-8",6000,"苹果","富士康"));
        phoneDB.add(new Phone(2,"华为P20",3788,"HUAWEI","华为海思"));
        phoneDB.add(new Phone(3,"三星GALAXY Note 9",8999,"SAMSUNG","三星电子"));
        phoneDB.add(new Phone(4,"OPPO Find X",4999,"OPPO","OPPO公司"));
        phoneDB.add(new Phone(5,"小米8",3299,"小米","小米电子公司"));
    }
    @Override
    public Phone add(Phone phone) {
        if (phoneDB.add(phone)){
            return phone;
        }
        return null;
    }

    @Override
    public boolean delete(int id) {
        for (Phone phone : phoneDB) {
            if(phone.getId()==id){
                return phoneDB.remove(phone);
            }
        }
        return false;
    }

    @Override
    public boolean update(Phone phone) {
        for (Phone newPhone : phoneDB) {
            if(newPhone.getId() == phone.getId()){
                newPhone.setName(phone.getName());
                newPhone.setPrice(phone.getPrice());
                newPhone.setBrand(phone.getBrand());
                newPhone.setFirm(phone.getFirm());
                return true;
            }
        }
        return false;
    }

    @Override
    public List<Phone> listAll() {
        return phoneDB;
    }

    @Override
    public List<Phone> getPhoneByName(String name) {
        ArrayList<Phone> phones = new ArrayList<>();
        for (Phone phone : phoneDB) {
            String rName = phone.getName().toLowerCase();
            if(rName.contains(name.toLowerCase())){
                phones.add(phone);
            }
        }
        return phones;
    }

    @Override
    public Phone getPhoneById(int id) {
        for (Phone phone : phoneDB) {
            if(phone.getId()==id){
                return phone;
            }
        }
        return null;
    }
}
