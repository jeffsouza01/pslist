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
@RequestMapping("/gamelist")
public class GameListController {

    @Autowired
    private GameListService gameListService;

    @GetMapping
    public List<GameListDTO> showAllGames() {

        return gameListService.findAllGames();
    }



}
