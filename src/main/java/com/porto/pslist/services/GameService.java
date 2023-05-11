package com.porto.pslist.services;

import com.porto.pslist.DTO.GameMinDTO;
import com.porto.pslist.entities.Game;
import com.porto.pslist.repositories.GameRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GameService {

    @Autowired
    private GameRepository gameRepository;


    public List<GameMinDTO> findAllGames() {
        List<Game> allGames = gameRepository.findAll();
        return allGames.stream().map(GameMinDTO::new).toList();

    }

}
