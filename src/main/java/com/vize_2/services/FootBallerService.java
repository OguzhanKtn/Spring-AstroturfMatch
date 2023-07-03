package com.vize_2.services;

import com.vize_2.configs.Rest;
import com.vize_2.entities.Footballer;
import com.vize_2.repositories.FootballerRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class FootBallerService {

    final FootballerRepository repository;
    final TinkEncDec tinkEncDec;

    public ResponseEntity save(Footballer footballer) {
        String chipherText = tinkEncDec.encrypt(footballer.getPassword());
        footballer.setPassword(chipherText);
        try {
            repository.save(footballer);
            Rest rest = new Rest(true, footballer);
            return new ResponseEntity(rest, HttpStatus.OK);
        } catch (Exception ex) {
            Rest rest = new Rest(false, ex.getMessage());
            return new ResponseEntity(rest, HttpStatus.BAD_REQUEST);
        }
    }

    public Footballer login(Footballer footballer) {
        List<Footballer> footballers = repository.findAll();
        for (Footballer player : footballers) {
            if (footballer.getEmail().equals(player.getEmail())) {
                String plainText = tinkEncDec.decrypt(player.getPassword());
                if(footballer.getPassword().equals(plainText)){
                    return player;
                }
            }
        }
        return null;
    }
}