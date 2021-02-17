package estudos.udemy.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import estudos.udemy.domain.Usuario;

//JpaRepository NOS AJUDA NA CRIAÇÃO E COMUNICAÇÃO COM A NOSSA BASE DE DADOS
public interface UsuarioRepository extends JpaRepository<Usuario, Integer>{

}
