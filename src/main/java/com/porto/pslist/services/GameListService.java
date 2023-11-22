package com.porto.pslist.services;

import com.porto.pslist.DTO.GameDTO;
import com.porto.pslist.DTO.GameListDTO;
import com.porto.pslist.DTO.GameMinDTO;
import com.porto.pslist.entities.Game;
import com.porto.pslist.entities.GameList;
import com.porto.pslist.projections.GameMinProjection;
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

    @Autowired
    private GameRepository gameRepository;


    @Transactional(readOnly = true)
    public List<GameListDTO> findAllGames() {
        List<GameList> allGames = gameListRepository.findAll();
        return allGames.stream().map(GameListDTO::new).toList();

    }

    @Transactional
    public void move(Long listId, int sourceIndex, int destinationIndex ){

        List<GameMinProjection> list = gameRepository.searchByList(listId);

        GameMinProjection obj = list.remove(sourceIndex);
        list.add(destinationIndex, obj);

        int min = sourceIndex < destinationIndex ? sourceIndex : destinationIndex;
        int max = sourceIndex < destinationIndex ? destinationIndex : sourceIndex;

        for (int i = min; i < max; i++) {
            gameListRepository.updateBelongingPosition(listId, list.get(i).getId(), i);
        }

    }

}
