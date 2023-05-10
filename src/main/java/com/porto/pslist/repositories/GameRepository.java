package com.porto.pslist.repositories;

import com.porto.pslist.entity.Game;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GameRepository extends JpaRepository<Game, Long> {
}
