package com.vize_2.services;

import com.vize_2.configs.Rest;
import com.vize_2.entities.Backup;
import com.vize_2.entities.Teams;
import com.vize_2.entities.projections.ITeams;
import com.vize_2.repositories.BackupRepository;
import com.vize_2.repositories.TeamsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

@Service
@RequiredArgsConstructor
public class TeamsService {

    final TeamsRepository teamsRepository;
    final BackupRepository backupRepository;
    final HttpServletRequest request;

    public ResponseEntity add(Long tid) {
        Teams teams = new Teams();
        List<Teams> teamNumber = teamsRepository.findByTid(tid);
        try {
            teams.setTid(tid);
            Long fid = (Long) request.getSession().getAttribute("footballer");
            if(teamsRepository.existsByFid(fid)){
                Rest rest = new Rest(false,"Sorry.You've already joined a team.");
                return new ResponseEntity(rest,HttpStatus.BAD_REQUEST);
            }else{
                teams.setFid(fid);
            }
            if (teamNumber.size() < 6 ) {
                teamsRepository.save(teams);
                Rest rest = new Rest(true, teams);
                return new ResponseEntity(rest, HttpStatus.OK);
            } else {
                Backup backup = new Backup();
                backup.setTid(tid);
                backup.setFid(fid);
                if (backupRepository.findByTid(tid).size() < 3) {
                    backupRepository.save(backup);
                }else{
                    Rest rest = new Rest(false,"Sorry. All teams are fully reserved.");
                    return new ResponseEntity(rest, HttpStatus.BAD_REQUEST);
                }
                Rest rest = new Rest(true, "You're registered in backup team.");
                return new ResponseEntity(rest, HttpStatus.OK);
            }
        } catch (Exception ex) {
            Rest rest = new Rest(false, teams);
            return new ResponseEntity(rest, HttpStatus.BAD_REQUEST);
        }

    }


    public HashMap<String,Object> teams() {
        List<ITeams> list = new ArrayList<>();
        List<ITeams> list2 = new ArrayList<>();
        HashMap<String, Object> hm = new LinkedHashMap<>();
        for (ITeams iTeams : teamsRepository.teams()) {
            if (iTeams.getTNAME().equals("B")) {
                list.add(iTeams);
            }else{
                list2.add(iTeams);
            }
        }
        hm.put("A",list2);
        hm.put("B",list);

        return hm;
    }
}
