package com.ciandt.hackathon.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Pessoa {
	private Long id;
	private String nome;
	private Mesa mesa;

	@Id
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Mesa getMesa() {
		return mesa;
	}

	public void setMesa(Mesa mesa) {
		this.mesa = mesa;
	}

}