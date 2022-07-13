package com.example.springdemo;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SillyController {

    @RequestMapping("/showForm")
    public String dispelaForm(){

        return "silly";
    }
}
