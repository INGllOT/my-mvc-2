package com.example.springdemo;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.naming.Binding;
import javax.validation.Valid;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }




    @RequestMapping("/showForm")
    public String showCustomerForm(Model model){

        model.addAttribute("customer", new Customer());


        return "costumer-form";
    }

    @RequestMapping("/processForm")
    public String showCustomerProcessForm(@Valid @ModelAttribute("customer") Customer customer, BindingResult bindingResult){


        System.out.println("Binding Result: " + bindingResult);
        if (bindingResult.hasErrors()) {
            return "costumer-form";
        } else {
            return "costumer-confirmation";
        }

    }



}
