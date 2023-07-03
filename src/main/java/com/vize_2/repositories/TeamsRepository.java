package com.vize_2.repositories;

import com.vize_2.entities.Teams;
import com.vize_2.entities.projections.ITeams;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface TeamsRepository extends JpaRepository<Teams, Long> {

@Query(value = "select f.name,f.surname,f.age,t2.tname from footballer as f inner join teams t on f.fid = t.fid\n" +
        "inner join team t2 on t.tid = t2.tid order by age asc ",nativeQuery = true)
    List<ITeams> teams();

    List<Teams> findByTid(Long tid);

    boolean existsByFid(Long fid);




}