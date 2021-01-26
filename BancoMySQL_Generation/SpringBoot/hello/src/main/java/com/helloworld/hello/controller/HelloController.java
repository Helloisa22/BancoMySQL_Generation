package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController  // INFORMAR QUE ESSA CLASSE É UM  CONTROLLER
@RequestMapping("/hello") //CAMINHO QUE A GENTE VAI USAR NO POSTMAM PARA ACCESSAR ESSE PONTO DE ACESSO
public class HelloController {
	
	@GetMapping
	public String hello() {
		return "Hello Generation !!!";
	}
}
