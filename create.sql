create table tb_belonging (position integer, list_id bigint not null, game_id bigint not null, primary key (game_id, list_id));
create table tb_game_list (id bigserial not null, name varchar(255), primary key (id));
create table tb_games (id bigserial not null, genre varchar(255), img_url varchar(255), long_description TEXT, platforms varchar(255), score float(53), short_description TEXT, title varchar(255), game_year integer, primary key (id));
alter table if exists tb_belonging add constraint FKrchwdikeu66uky1hf75ym1kh foreign key (list_id) references tb_game_list;
alter table if exists tb_belonging add constraint FKmk9hcf5rmkhesyaciosx3p6es foreign key (game_id) references tb_games;
insert into tb_games (title, score, genre, game_year, platforms, img_url, short_description, long_description) values ('Call fo Duty - Modern Warfare', 4.8, 'Ação', 2012, 'PC, XBOX, PS3', 'https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/63484591a205b2d6b8e6a074/ba747a2e-4a0c-4efa-86ee-c21c0924c3ab/128', 'ShortDescription for a whatever game', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt, eros at tempor tristique, nulla ligula elementum purus, quis ornare elit arcu eu velit. Vestibulum vitae dolor sed urna vestibulum vehicula. Pellentesque in est a nunc dignissim pellentesque. Nam pulvinar felis vitae quam tristique aliquam. Quisque a scelerisque nunc. Vestibulum mi nulla, ultrices id dolor quis, molestie congue ligula. Praesent fringilla euismod suscipit. Cras egestas arcu quis rutrum ornare. Aenean ex sapien, feugiat et magna et, tincidunt pharetra augue. Morbi non commodo augue. Nunc dapibus urna lacus, sed convallis mi pulvinar at. Ut ornare laoreet rhoncus. Suspendisse tristique tincidunt nisi, quis congue velit pharetra vel. Integer ex quam, fringilla ut ullamcorper at, hendrerit non eros. Vivamus vestibulum quis sapien vel sodales. Fusce lobortis neque risus.');
insert into tb_games (title, score, genre, game_year, platforms, img_url, short_description, long_description) values ('Battlefield', 4.8, 'Ação', 2012, 'PC, XBOX, PS3', 'https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/63484591a205b2d6b8e6a074/ba747a2e-4a0c-4efa-86ee-c21c0924c3ab/128', 'ShortDescription for a whatever game', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt, eros at tempor tristique, nulla ligula elementum purus, quis ornare elit arcu eu velit. Vestibulum vitae dolor sed urna vestibulum vehicula. Pellentesque in est a nunc dignissim pellentesque. Nam pulvinar felis vitae quam tristique aliquam. Quisque a scelerisque nunc. Vestibulum mi nulla, ultrices id dolor quis, molestie congue ligula. Praesent fringilla euismod suscipit. Cras egestas arcu quis rutrum ornare. Aenean ex sapien, feugiat et magna et, tincidunt pharetra augue. Morbi non commodo augue. Nunc dapibus urna lacus, sed convallis mi pulvinar at. Ut ornare laoreet rhoncus. Suspendisse tristique tincidunt nisi, quis congue velit pharetra vel. Integer ex quam, fringilla ut ullamcorper at, hendrerit non eros. Vivamus vestibulum quis sapien vel sodales. Fusce lobortis neque risus.');
insert into tb_games (title, score, genre, game_year, platforms, img_url, short_description, long_description) values ('Grand Theft Auto 5', 4.8, 'Aventura', 2012, 'PC, XBOX, PS3', 'https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/63484591a205b2d6b8e6a074/ba747a2e-4a0c-4efa-86ee-c21c0924c3ab/128', 'ShortDescription for a whatever game', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt, eros at tempor tristique, nulla ligula elementum purus, quis ornare elit arcu eu velit. Vestibulum vitae dolor sed urna vestibulum vehicula. Pellentesque in est a nunc dignissim pellentesque. Nam pulvinar felis vitae quam tristique aliquam. Quisque a scelerisque nunc. Vestibulum mi nulla, ultrices id dolor quis, molestie congue ligula. Praesent fringilla euismod suscipit. Cras egestas arcu quis rutrum ornare. Aenean ex sapien, feugiat et magna et, tincidunt pharetra augue. Morbi non commodo augue. Nunc dapibus urna lacus, sed convallis mi pulvinar at. Ut ornare laoreet rhoncus. Suspendisse tristique tincidunt nisi, quis congue velit pharetra vel. Integer ex quam, fringilla ut ullamcorper at, hendrerit non eros. Vivamus vestibulum quis sapien vel sodales. Fusce lobortis neque risus.');
insert into tb_games (title, score, genre, game_year, platforms, img_url, short_description, long_description) values ('League of Legends', 4.8, 'RPG', 2012, 'PC, XBOX, PS3', 'https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/63484591a205b2d6b8e6a074/ba747a2e-4a0c-4efa-86ee-c21c0924c3ab/128', 'ShortDescription for a whatever game', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt, eros at tempor tristique, nulla ligula elementum purus, quis ornare elit arcu eu velit. Vestibulum vitae dolor sed urna vestibulum vehicula. Pellentesque in est a nunc dignissim pellentesque. Nam pulvinar felis vitae quam tristique aliquam. Quisque a scelerisque nunc. Vestibulum mi nulla, ultrices id dolor quis, molestie congue ligula. Praesent fringilla euismod suscipit. Cras egestas arcu quis rutrum ornare. Aenean ex sapien, feugiat et magna et, tincidunt pharetra augue. Morbi non commodo augue. Nunc dapibus urna lacus, sed convallis mi pulvinar at. Ut ornare laoreet rhoncus. Suspendisse tristique tincidunt nisi, quis congue velit pharetra vel. Integer ex quam, fringilla ut ullamcorper at, hendrerit non eros. Vivamus vestibulum quis sapien vel sodales. Fusce lobortis neque risus.');
insert into tb_games (title, score, genre, game_year, platforms, img_url, short_description, long_description) values ('Mortal Kombat', 4.8, 'Luta', 2012, 'PC, XBOX, PS3', 'https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/63484591a205b2d6b8e6a074/ba747a2e-4a0c-4efa-86ee-c21c0924c3ab/128', 'ShortDescription for a whatever game', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt, eros at tempor tristique, nulla ligula elementum purus, quis ornare elit arcu eu velit. Vestibulum vitae dolor sed urna vestibulum vehicula. Pellentesque in est a nunc dignissim pellentesque. Nam pulvinar felis vitae quam tristique aliquam. Quisque a scelerisque nunc. Vestibulum mi nulla, ultrices id dolor quis, molestie congue ligula. Praesent fringilla euismod suscipit. Cras egestas arcu quis rutrum ornare. Aenean ex sapien, feugiat et magna et, tincidunt pharetra augue. Morbi non commodo augue. Nunc dapibus urna lacus, sed convallis mi pulvinar at. Ut ornare laoreet rhoncus. Suspendisse tristique tincidunt nisi, quis congue velit pharetra vel. Integer ex quam, fringilla ut ullamcorper at, hendrerit non eros. Vivamus vestibulum quis sapien vel sodales. Fusce lobortis neque risus.');
insert into tb_games (title, score, genre, game_year, platforms, img_url, short_description, long_description) values ('Street Figther', 4.8, 'Luta', 2012, 'PC, XBOX, PS3', 'https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/63484591a205b2d6b8e6a074/ba747a2e-4a0c-4efa-86ee-c21c0924c3ab/128', 'ShortDescription for a whatever game', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt, eros at tempor tristique, nulla ligula elementum purus, quis ornare elit arcu eu velit. Vestibulum vitae dolor sed urna vestibulum vehicula. Pellentesque in est a nunc dignissim pellentesque. Nam pulvinar felis vitae quam tristique aliquam. Quisque a scelerisque nunc. Vestibulum mi nulla, ultrices id dolor quis, molestie congue ligula. Praesent fringilla euismod suscipit. Cras egestas arcu quis rutrum ornare. Aenean ex sapien, feugiat et magna et, tincidunt pharetra augue. Morbi non commodo augue. Nunc dapibus urna lacus, sed convallis mi pulvinar at. Ut ornare laoreet rhoncus. Suspendisse tristique tincidunt nisi, quis congue velit pharetra vel. Integer ex quam, fringilla ut ullamcorper at, hendrerit non eros. Vivamus vestibulum quis sapien vel sodales. Fusce lobortis neque risus.');
insert into tb_games (title, score, genre, game_year, platforms, img_url, short_description, long_description) values ('Last of Us', 4.8, 'Ação', 2012, 'PC, XBOX, PS3', 'https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/63484591a205b2d6b8e6a074/ba747a2e-4a0c-4efa-86ee-c21c0924c3ab/128', 'ShortDescription for a whatever game', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt, eros at tempor tristique, nulla ligula elementum purus, quis ornare elit arcu eu velit. Vestibulum vitae dolor sed urna vestibulum vehicula. Pellentesque in est a nunc dignissim pellentesque. Nam pulvinar felis vitae quam tristique aliquam. Quisque a scelerisque nunc. Vestibulum mi nulla, ultrices id dolor quis, molestie congue ligula. Praesent fringilla euismod suscipit. Cras egestas arcu quis rutrum ornare. Aenean ex sapien, feugiat et magna et, tincidunt pharetra augue. Morbi non commodo augue. Nunc dapibus urna lacus, sed convallis mi pulvinar at. Ut ornare laoreet rhoncus. Suspendisse tristique tincidunt nisi, quis congue velit pharetra vel. Integer ex quam, fringilla ut ullamcorper at, hendrerit non eros. Vivamus vestibulum quis sapien vel sodales. Fusce lobortis neque risus.');
insert into tb_games (title, score, genre, game_year, platforms, img_url, short_description, long_description) values ('Harry Potter', 4.8, 'RPG', 2012, 'PC, XBOX, PS3', 'https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/63484591a205b2d6b8e6a074/ba747a2e-4a0c-4efa-86ee-c21c0924c3ab/128', 'ShortDescription for a whatever game', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt, eros at tempor tristique, nulla ligula elementum purus, quis ornare elit arcu eu velit. Vestibulum vitae dolor sed urna vestibulum vehicula. Pellentesque in est a nunc dignissim pellentesque. Nam pulvinar felis vitae quam tristique aliquam. Quisque a scelerisque nunc. Vestibulum mi nulla, ultrices id dolor quis, molestie congue ligula. Praesent fringilla euismod suscipit. Cras egestas arcu quis rutrum ornare. Aenean ex sapien, feugiat et magna et, tincidunt pharetra augue. Morbi non commodo augue. Nunc dapibus urna lacus, sed convallis mi pulvinar at. Ut ornare laoreet rhoncus. Suspendisse tristique tincidunt nisi, quis congue velit pharetra vel. Integer ex quam, fringilla ut ullamcorper at, hendrerit non eros. Vivamus vestibulum quis sapien vel sodales. Fusce lobortis neque risus.');
insert into tb_games (title, score, genre, game_year, platforms, img_url, short_description, long_description) values ('Crisis', 4.8, 'Plataforma', 2012, 'PC, XBOX, PS3', 'https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/63484591a205b2d6b8e6a074/ba747a2e-4a0c-4efa-86ee-c21c0924c3ab/128', 'ShortDescription for a whatever game', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt, eros at tempor tristique, nulla ligula elementum purus, quis ornare elit arcu eu velit. Vestibulum vitae dolor sed urna vestibulum vehicula. Pellentesque in est a nunc dignissim pellentesque. Nam pulvinar felis vitae quam tristique aliquam. Quisque a scelerisque nunc. Vestibulum mi nulla, ultrices id dolor quis, molestie congue ligula. Praesent fringilla euismod suscipit. Cras egestas arcu quis rutrum ornare. Aenean ex sapien, feugiat et magna et, tincidunt pharetra augue. Morbi non commodo augue. Nunc dapibus urna lacus, sed convallis mi pulvinar at. Ut ornare laoreet rhoncus. Suspendisse tristique tincidunt nisi, quis congue velit pharetra vel. Integer ex quam, fringilla ut ullamcorper at, hendrerit non eros. Vivamus vestibulum quis sapien vel sodales. Fusce lobortis neque risus.');
insert into tb_games (title, score, genre, game_year, platforms, img_url, short_description, long_description) values ('Sonic', 4.8, 'Plataforma', 2012, 'PC, XBOX, PS3', 'https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/63484591a205b2d6b8e6a074/ba747a2e-4a0c-4efa-86ee-c21c0924c3ab/128', 'ShortDescription for a whatever game', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt, eros at tempor tristique, nulla ligula elementum purus, quis ornare elit arcu eu velit. Vestibulum vitae dolor sed urna vestibulum vehicula. Pellentesque in est a nunc dignissim pellentesque. Nam pulvinar felis vitae quam tristique aliquam. Quisque a scelerisque nunc. Vestibulum mi nulla, ultrices id dolor quis, molestie congue ligula. Praesent fringilla euismod suscipit. Cras egestas arcu quis rutrum ornare. Aenean ex sapien, feugiat et magna et, tincidunt pharetra augue. Morbi non commodo augue. Nunc dapibus urna lacus, sed convallis mi pulvinar at. Ut ornare laoreet rhoncus. Suspendisse tristique tincidunt nisi, quis congue velit pharetra vel. Integer ex quam, fringilla ut ullamcorper at, hendrerit non eros. Vivamus vestibulum quis sapien vel sodales. Fusce lobortis neque risus.');
insert into tb_game_list (name) values ('Aventuras e RPG');
insert into tb_game_list (name) values ('Ação e Combate');
insert into tb_game_list (name) values ('Plataforma');
insert into tb_belonging (list_id, game_id, position) values (1, 3, 0);
insert into tb_belonging (list_id, game_id, position) values (1, 4, 1);
insert into tb_belonging (list_id, game_id, position) values (1, 8, 2);
insert into tb_belonging (list_id, game_id, position) values (2, 1, 0);
insert into tb_belonging (list_id, game_id, position) values (2, 2, 1);
insert into tb_belonging (list_id, game_id, position) values (2, 5, 2);
insert into tb_belonging (list_id, game_id, position) values (2, 6, 3);
insert into tb_belonging (list_id, game_id, position) values (2, 7, 4);
insert into tb_belonging (list_id, game_id, position) values (3, 9, 0);
insert into tb_belonging (list_id, game_id, position) values (3, 10, 1);
