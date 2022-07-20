package br.com.rodrigooliveira.javaspringcrudthymeleaf;


import br.com.rodrigooliveira.javaspringcrudthymeleaf.model.UsuariosModel;
import br.com.rodrigooliveira.javaspringcrudthymeleaf.repository.UsuariosRepository;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import java.util.Optional;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
/*@Rollback - é uma anotação de teste usada para indicar se uma transação
gerenciada por teste deve ser revertida após a conclusão do
 método de teste.*/
@Rollback(false)
public class UsuariosRepositoryTest {

    @Autowired
    private UsuariosRepository repo;

    @Test
    public void testeAdicionar() {
        UsuariosModel user = new UsuariosModel();
        user.setNome("Fernando");
        user.setSobrenome("Ferreira");
        user.setTelefone("51999249401");
        user.setEmail("fernando@yahoo.com.br");
        user.setPassword("Fernox123456$");

        UsuariosModel salvosUsuarios = repo.save(user);

        Assertions.assertThat(salvosUsuarios).isNotNull();
        Assertions.assertThat(salvosUsuarios.getId()).isGreaterThan(0);
    }

    @Test
    public void testeListar() {
        Iterable<UsuariosModel> users = repo.findAll();
        Assertions.assertThat(users).hasSizeGreaterThan(0);

        for (UsuariosModel user : users) {
            System.out.println(user);
        }
    }

    @Test
    public void testeAtualiza(){
        Integer userId=3;
        Optional<UsuariosModel> optionalUser = repo.findById(userId);

        UsuariosModel user = optionalUser.get();
        user.setPassword("Hello2020");
        repo.save(user);

        UsuariosModel updatedUser = repo.findById(userId).get();
        Assertions.assertThat(updatedUser.getPassword()).isEqualTo("Hello2020");
    }

    @Test
    public void testeListaUm(){
        Integer userId=3;
        Optional<UsuariosModel> optionalUser = repo.findById(userId);

        Assertions.assertThat(optionalUser.isPresent());
        System.out.println(optionalUser.get());
    }

    @Test
    public void testeDeleta(){
        Integer userId = 5;
        repo.deleteById(userId);

        Optional<UsuariosModel> optionalUser = repo.findById(userId);
        Assertions.assertThat(optionalUser).isNotPresent();
    }
}
