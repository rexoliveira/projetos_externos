package br.com.rodrigooliveira.javaspringcrudthymeleaf.controller;


import br.com.rodrigooliveira.javaspringcrudthymeleaf.model.UsuariosModel;
import br.com.rodrigooliveira.javaspringcrudthymeleaf.service.UsuarioNotFoundException;
import br.com.rodrigooliveira.javaspringcrudthymeleaf.service.UsuariosService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class UsuariosController {
    private final UsuariosService service;

    public UsuariosController(UsuariosService service) {
        this.service = service;
    }

    @GetMapping("/pages/usuarios")
    public String showUserList(Model model) {
        List<UsuariosModel> listUsers = service.listAll();
        model.addAttribute("listUsers", listUsers);
        return "pages/usuarios";
    }

    @GetMapping("/pages/novo")
    public String showHomeForm(Model model) {
        model.addAttribute("usuario", new UsuariosModel());
        model.addAttribute("paginaTitulo", "Adicionar Novo Usuário");
        return "pages/novo";
    }

    @PostMapping("/salva")
    public String salvaUsuario(UsuariosModel usuariosModel, RedirectAttributes ra) {
        service.salva(usuariosModel);
        ra.addFlashAttribute("mensagem", "Usuário " + usuariosModel.getNome() + ", foi salvo com sucesso!");
        return "redirect:/pages/usuarios";
    }

    @GetMapping("/edita/{id}")
    public String edita(@PathVariable("id") Integer id, Model model, RedirectAttributes ra) {
        try {
            UsuariosModel usuario = service.getId(id);

            model.addAttribute("usuario", usuario);
            model.addAttribute("paginaTitulo", "Edita Usuário (ID: " + id + ")");

            ra.addFlashAttribute("mensagem", "Usuário  foi alterado e salvo com sucesso!");
            return "/pages/novo";
        } catch (UsuarioNotFoundException e) {
            ra.addFlashAttribute("mensagem", "Erro("+e.getMessage()+") ao alterar o usuário!");
            return "redirect:/pages/usuarios";
        }

    }

    @GetMapping("/deleta/{id}")
    public String deleta(@PathVariable("id") Integer id,RedirectAttributes ra) {
        try {
            service.deleta(id);
            ra.addFlashAttribute("mensagem", "Usuário ID:"+id+"  excluído com sucesso!");
        } catch (UsuarioNotFoundException e) {
            ra.addFlashAttribute("mensagem", e.getMessage());
        }
        return "redirect:/pages/usuarios";
    }


}
