package br.com.rodirgooliveira.layout.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Task {

    public Task(Long id, String name, Date date) {
        this.name = name;
        this.id = id;
        this.date = date;
    }

    public Task() {

    }

    private Long id;
    private String name;
    @DateTimeFormat(pattern = "dd/MM/yyyy HH:mm:ss")
    private Date date;

    
    public Long getId() {
        return id;
    }

    
    public void setId(Long id) {
        this.id = id;
    }

    
    public String getName() {
        return name;
    }

    
    public void setName(String name) {
        this.name = name;
    }

   
    public Date getDate() {
        return date;
    }

   
    public void setDate(Date date) {
        this.date = date;
    }

}
