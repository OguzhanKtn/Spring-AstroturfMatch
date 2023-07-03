package com.vize_2.controllers;

import com.vize_2.configs.Rest;
import com.vize_2.repositories.TeamsRepository;
import com.vize_2.services.TeamsService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/teams")
public class TeamsController {

    final TeamsService teamsService;

    @PostMapping("/teamInsert/{tid}")
    public ResponseEntity add(@PathVariable Long tid){
        return teamsService.add(tid);
    }

    @GetMapping("/teamCreate")
    public ResponseEntity list(){
        if(teamsService.teams() != null){
            Rest rest = new Rest(true,teamsService.teams());
            return new ResponseEntity(rest, HttpStatus.OK);
        }else{
            Rest rest = new Rest(false,"There is no any team!");
            return new ResponseEntity(rest, HttpStatus.BAD_REQUEST);
        }
    }
}
