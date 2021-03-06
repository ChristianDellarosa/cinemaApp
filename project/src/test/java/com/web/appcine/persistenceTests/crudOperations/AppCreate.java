package com.web.appcine.persistenceTests.crudOperations;

import com.web.appcine.model.Noticia;
import com.web.appcine.repository.NoticiaRepository;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AppCreate {

    public static void main(String[] args){
        Noticia noticia = new Noticia();
        noticia.setStatus("Activa");
        noticia.setDetalle("pepe");
        noticia.setTitulo("hola");
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("WEB-INF/spring/root-context.xml");
        NoticiaRepository repo = context.getBean("noticiaRepository", NoticiaRepository.class);
        repo.save(noticia);
        context.close();
    }
}
