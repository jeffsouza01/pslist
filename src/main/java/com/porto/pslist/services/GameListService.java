package com.porto.pslist.services;

import com.porto.pslist.DTO.GameDTO;
import com.porto.pslist.DTO.GameListDTO;
import com.porto.pslist.DTO.GameMinDTO;
import com.porto.pslist.entities.Game;
import com.porto.pslist.entities.GameList;
import com.porto.pslist.repositories.GameListRepository;
import com.porto.pslist.repositories.GameRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class GameListService {

    @Autowired
    private GameListRepository gameListRepository;


    @Transactional(readOnly = true)
    public List<GameListDTO> findAllGames() {
        List<GameList> allGames = gameListRepository.findAll();
        return allGames.stream().map(GameListDTO::new).toList();

    }

}
