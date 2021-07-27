package org.perschoals;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.java.Log;

import java.io.Serializable;
import java.util.Date;


@NoArgsConstructor
@AllArgsConstructor
@Data
@Log
public class Car implements Serializable {

    public static void main(String[] args) {
        System.out.println(new Date());
    }

    private static final long serialVersionUID = 1L;
    //fields

   private int id;
    private String name;

    public int getId() {
        return id;
    }


    public String getName() {
        log.warning(new Date().toString());
        return name;

    }

    public void setName(String name) {
        this.name = name;
    }





}
