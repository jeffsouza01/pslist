package com.porto.pslist.controllers;

import com.porto.pslist.DTO.GameDTO;
import com.porto.pslist.DTO.GameListDTO;
import com.porto.pslist.DTO.GameMinDTO;
import com.porto.pslist.services.GameListService;
import com.porto.pslist.services.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/list")
public class GameListController {

    @Autowired
    private GameListService gameListService;

    @Autowired
    private GameService gameService;

    @GetMapping
    public List<GameListDTO> showAllGames() {

        return gameListService.findAllGames();
    }

    @GetMapping(value = "/{listId}/games")
    public List<GameMinDTO> findByList(@PathVariable Long listId) {
        return gameService.findByList(listId);
    }



}
