package br.com.rodrigooliveira.javaspringcrudthymeleaf.service;


import br.com.rodrigooliveira.javaspringcrudthymeleaf.model.UsuariosModel;
import br.com.rodrigooliveira.javaspringcrudthymeleaf.repository.UsuariosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UsuariosService {

    @Autowired
    private UsuariosRepository repo;

    public List<UsuariosModel> listAll() {
        return (List<UsuariosModel>) repo.findAll();
    }

    public void salva(UsuariosModel usuariosModel) {
        repo.save(usuariosModel);
    }

    public UsuariosModel getId(Integer id) throws UsuarioNotFoundException {
        Optional<UsuariosModel> usuario = repo.findById(id);

        if (usuario.isPresent()) {
            return usuario.get();
        }
        throw new UsuarioNotFoundException("Não foi possível encontrar nenhum usuário com ID: " + id);
    }

    public void deleta(Integer id) throws UsuarioNotFoundException {
        Long quantidade = repo.countById(id);
        if (quantidade == null || quantidade == 0){
            throw new UsuarioNotFoundException("Não foi possível encontrar nenhum usuário com ID: " + id);
        }
        repo.deleteById(id);
    }

}
