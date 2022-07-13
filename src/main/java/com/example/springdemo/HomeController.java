package com.example.springdemo;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@RequestMapping("/")
@Controller
public class HomeController {

    @RequestMapping("/")
    public String getHome(){
        return "home";
    }


}
