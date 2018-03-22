package ua.lviv.liet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import ua.lviv.liet.entity.Tourism;

public interface TourismRepository extends JpaRepository<Tourism, Integer>, JpaSpecificationExecutor<Tourism> {

}
