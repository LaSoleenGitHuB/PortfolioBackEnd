package com.example.SpringBoot2.service;

import com.example.SpringBoot2.model.Persona;
import java.util.List;


public interface IPersonaService {
    public List<Persona> verPersonas();
    
    public void crearPersona (Persona per);
    
    public void borrarPersona (Long id);
    
    public Persona buscarPersona (Long id);

    public void autorizarEmail();

    public void autorizarPassword();

    public Persona findPersona(Long id);

    public void savePersona(Persona per);
}
