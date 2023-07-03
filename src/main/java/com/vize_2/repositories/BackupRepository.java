package com.vize_2.repositories;

import com.vize_2.entities.Backup;
import com.vize_2.entities.projections.IBackUp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface BackupRepository extends JpaRepository<Backup, Long> {
    List<Backup> findByTid(Long tid);

    @Query(value = "select f.name,f.surname,f.age,t.tname from footballer as f inner join backup b on f.fid = b.fid\n" +
            "inner join team t on b.tid = t.tid order by age asc",nativeQuery = true)
    List<IBackUp> list();

}