package com.vize_2.controllers;

import com.vize_2.configs.Rest;
import com.vize_2.services.BackupService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/backup")
public class BackupController {

    final BackupService backupService;

    @GetMapping("/backUpCreate")
    public ResponseEntity list(){
        if(backupService.backup() != null){
            Rest rest = new Rest(true,backupService.backup());
            return new ResponseEntity(rest, HttpStatus.OK);
        }else{
            Rest rest = new Rest(false,"There is no any backup!");
            return new ResponseEntity(rest,HttpStatus.BAD_REQUEST);
        }
    }
}
