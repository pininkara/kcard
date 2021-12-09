// 2021/12/7 9:14

package com.pininkara.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Student {
    private int id;
    private String name;
    private int balance;
    private int consume;
    private int charge;
    private int bankid;
    private int bankpwd;
}
