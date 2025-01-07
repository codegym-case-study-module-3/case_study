package com.codegym.website_product.bean;

import com.codegym.website_product.entity.Product;
import com.codegym.website_product.service.impl.ProductService;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class HomeBean {
    private static ProductService productService = new ProductService();
    private static int laptopID = 1;
    private static int KeyboardID = 3;
    private static int MouseID = 5;
    private static int SceenID = 6;

    public static List<Product> getProducts(int category) {
        List<Product> products = productService.getFourByCategory(category);
        List<Product> subList = new ArrayList<>();
        if (products.size() > 4) {
            subList = products.subList(0, 4);
        } else {
            subList = products;
        }

        return subList;
    }

    public List<Product> getLaptops() {
        List<Product> products = HomeBean.getProducts(laptopID);
        return products;
    }

    public List<Product> getKeyboards() {
        List<Product> products = HomeBean.getProducts(KeyboardID);
        return products;
    }

    public List<Product> getMouses() {
        List<Product> products = HomeBean.getProducts(MouseID);
        return products;
    }

    public List<Product> getScreens() {
        List<Product> products = HomeBean.getProducts(SceenID);
        return products;
    }
}
