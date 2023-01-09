package com.example.SpringBoot2.repositorio;

import com.example.SpringBoot2.model.Persona;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonaRepository extends JpaRepository <Persona, Long>{ 
    
}
