package com.example.SpringBoot2.controller;

import com.example.SpringBoot2.model.Persona;
import com.example.SpringBoot2.service.IPersonaService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
  
    @Autowired
    private IPersonaService persoServ;
    @PostMapping ("/new/persona") 
    public void agregarPersona (@RequestBody Persona pers){
        persoServ.crearPersona(pers);
    }
    @PostMapping ("/api/auth/login")
    public void authLogin (@RequestBody Persona pers){
        persoServ.autorizarEmail();
        persoServ.autorizarPassword();
    }
    
    
    @GetMapping ("/ver/personas")
    @ResponseBody
    public List<Persona> verPersonas (){
        return persoServ.verPersonas();
    }
    
    @DeleteMapping ("/delete/{id}")
    public void borrarPersonas (@PathVariable Long id){
        persoServ.borrarPersona(id);
    }    
    
    @PutMapping ("personas/editar/{id}")
    public Persona editPersona (@PathVariable Long id,
                                @RequestParam ("nombre")String nuevoNombre,
                                @RequestParam ("apellido") String nuevoApellido,
                                @RequestParam ("edad") int nuevaEdad){
        Persona per= persoServ.findPersona (id);
        per.setApellido(nuevoApellido);
        per.setNombre(nuevoNombre);
        per.setEdad(nuevaEdad);
        
        persoServ.savePersona(per);
        return per;
}
    
        
    
}                            
                                 
    
   
