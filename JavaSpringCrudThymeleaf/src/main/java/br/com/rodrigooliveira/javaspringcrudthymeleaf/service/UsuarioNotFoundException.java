package br.com.rodrigooliveira.javaspringcrudthymeleaf.service;

public class UsuarioNotFoundException extends Throwable {
    public UsuarioNotFoundException(String message) {
        super(message);
    }
}
