package br.com.rodrigooliveira.javaspringcrudthymeleaf.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PrinciapalController {

    @GetMapping("")
    public String showHomePage(){
        return "index";
    }
}
