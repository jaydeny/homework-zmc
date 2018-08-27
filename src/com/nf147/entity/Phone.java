package com.nf147.entity;

public class Phone {
    private int id;         //手机id
    private String name;    //手机名字
    private float price;    //价格
    private String brand;   //品牌
    private String firm;    //厂商

    public Phone() {
    }

    public Phone(int id, String name, float price, String brand, String firm) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.brand = brand;
        this.firm = firm;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getFirm() {
        return firm;
    }

    public void setFirm(String firm) {
        this.firm = firm;
    }
}
