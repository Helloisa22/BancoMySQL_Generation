package estudos.udemy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import estudos.udemy.repository.UsuarioRepository;

@SpringBootApplication
public class UdemyApplication{

	//GERENCIAR A NOSSA INSTANCIA DO USUARIOREPOSITORY
	@Autowired
	private UsuarioRepository usuarioRepository;

	public static void main(String[] args) {
		SpringApplication.run(UdemyApplication.class, args);
	}

}
