package com.porto.pslist.DTO;


import com.porto.pslist.entities.GameList;

public class GameListDTO {

    private String name;

    public GameListDTO() {

    }

    public GameListDTO(GameList entity) {
        name = entity.getName();

    }

    public String getName(){
        return name;
    }
}
