package com.porto.pslist.services;

import com.porto.pslist.DTO.GameDTO;
import com.porto.pslist.DTO.GameMinDTO;
import com.porto.pslist.entities.Game;
import com.porto.pslist.projections.GameMinProjection;
import com.porto.pslist.repositories.GameRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class GameService {

    @Autowired
    private GameRepository gameRepository;


    @Transactional(readOnly = true)
    public List<GameMinDTO> findAllGames() {
        List<Game> allGames = gameRepository.findAll();
        return allGames.stream().map(GameMinDTO::new).toList();

    }

    @Transactional(readOnly = true)
    public GameDTO findGameById(Long id) {
        Game game = gameRepository.findById(id).get();
        return new GameDTO(game);
    }

    @Transactional(readOnly = true)
    public List<GameMinDTO> findByList(Long listId) {
        List<GameMinProjection> allGamesList = gameRepository.searchByList(listId);
        return allGamesList.stream().map(GameMinDTO::new).toList();

    }

}
