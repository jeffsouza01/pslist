package com.porto.pslist.controllers;

import com.porto.pslist.DTO.GameDTO;
import com.porto.pslist.DTO.GameMinDTO;
import com.porto.pslist.services.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/games")
public class GameController {

    @Autowired
    private GameService gameService;

    @GetMapping
    public List<GameMinDTO> showAllGames() {
        return gameService.findAllGames();
    }


    @GetMapping(value = "/{id}")
    public GameDTO getGameById(@PathVariable Long id){

        return gameService.findGameById(id);
    }


}
