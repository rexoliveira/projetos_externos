package br.com.rodrigooliveira.javaspringcrudthymeleaf.model;

import lombok.*;

import javax.persistence.*;

@Entity
/*@ Data
Essa anotação é a combinação das anotações:
 @ ToString, @EqualsAndHashCode, @ Getter e @ Setter.
 Também fornece a geração de construtores,
 adicionando um construtor público que
 leva qualquer campo @NonNull ou final como parâmetros.*/
@Data
//@NoArgsConstructor -Fornece a criação de um construtor vazio, exemplo de uso:
@NoArgsConstructor
/*@ AllArgsConstructor - Fornece a criação de um construtor com todos os atributos,
 exemplo de uso:*/
@AllArgsConstructor
@Table(name = "usuarios")
public class UsuariosModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(nullable = false)
    private String nome;

    @Column(nullable = false)
    private String sobrenome;

    @Column(nullable = false)
    private String telefone;

    @Column(nullable = false, unique = true)
    private String email;

    @Column(nullable = false, length = 15)
    private String password;

    @Column()
    private boolean ativo;

}
