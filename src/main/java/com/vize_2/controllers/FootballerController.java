package com.vize_2.controllers;

import com.vize_2.configs.Rest;
import com.vize_2.entities.Footballer;
import com.vize_2.services.FootBallerService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@RestController
@RequiredArgsConstructor
@RequestMapping("/footballer")
public class FootballerController {

    final FootBallerService footBallerService;
    final HttpServletRequest request;

    @PostMapping("/footballerRegister")
    public ResponseEntity add(@Valid @RequestBody Footballer footballer){
        return footBallerService.save(footballer);
    }

    @PostMapping("/login")
        public ResponseEntity login(@RequestBody Footballer footballer){
        Footballer footballer1 = footBallerService.login(footballer);
        if(footballer1 != null){
            request.getSession().setAttribute("footballer",footballer1.getFid());
            Rest rest = new Rest(true,footballer1);
            return new ResponseEntity(rest,HttpStatus.OK);
        }else{
            Rest rest = new Rest(false,"Wrong Attempt!");
            return new ResponseEntity(rest,HttpStatus.BAD_REQUEST);
        }

    }

}
