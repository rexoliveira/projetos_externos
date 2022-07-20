package br.com.rodrigooliveira.javaspringcrudthymeleaf.repository;

import br.com.rodrigooliveira.javaspringcrudthymeleaf.model.UsuariosModel;
import org.springframework.data.repository.CrudRepository;

public interface UsuariosRepository extends CrudRepository<UsuariosModel, Integer> {
    public Long countById(Integer id);
}
