package ua.lviv.liet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import ua.lviv.liet.entity.Internship;

public interface InternshipRepository extends JpaRepository<Internship, Integer>, JpaSpecificationExecutor<Internship> {

}
