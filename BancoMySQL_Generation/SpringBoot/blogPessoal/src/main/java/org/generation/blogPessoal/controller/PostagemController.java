package org.generation.blogPessoal.controller;

import java.util.List;

import org.generation.blogPessoal.model.Postagem;
import org.generation.blogPessoal.repository.PostagemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/Postagem")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class PostagemController {
	
	@Autowired //INJETAR A INTERFACE DE REPOSITORY
	private PostagemRepository repository;
	
	@GetMapping //SEMPRE QUE VIR UMA REQUISIÇÃO DE FORA ELE VAI CHAMAR ESSE METODO GET
	public ResponseEntity<List<Postagem>> GetAll(){
		//METODO FINDALL RETORNA UMA LISTA DE POSTAGEM PARA O BODY
		return ResponseEntity.ok(repository.findAll());
	}
	
	@GetMapping("/{id}") //INFORMAR QUE QUANDO UM GET FOR SOLICITADO EM POSTAGEM SOLICITANDO PELO ID
	public ResponseEntity<Postagem> GetById(@PathVariable long id){
		return repository.findById(id)
				.map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping("/titulo/{titulo}") //SUBI ROTA PARA NÃO FAZER DUPLICIDADE DE INFORMAÇÃO
	public ResponseEntity<List <Postagem>> GetByTitulo(@PathVariable String titulo){
		return ResponseEntity.ok(repository.findAllByTituloContainingIgnoreCase(titulo));
	}
	
	@PostMapping
	public ResponseEntity<Postagem> post (@RequestBody Postagem postagem){
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(postagem));
	}
}
