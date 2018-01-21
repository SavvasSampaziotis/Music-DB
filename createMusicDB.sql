
drop table if exists Is_Available;
drop table if exists Included_In;
drop table if exists Has_Created;
drop table if exists role;
drop table if exists genre; 
drop table if exists Store;
drop table if exists Album;
drop table if exists Song;
drop table if exists Takes_Part_In;
drop table if exists Musician;
drop table if exists Band;
drop table if exists Artist;


#drop table Artist;
create Table Artist(
artist_name varchar(50) not null,
debut date,
primary key (artist_name)

);


#drop table Musician;
create Table Musician (
artist_name varchar(50) not null,
birthday date,
nationality varchar(50),
foreign key (artist_name) references Artist(artist_name) on delete cascade
);


#drop table Band;
create table Band(
artist_name varchar(50) not null,
logo blob,
founding_date date,
split_date date,
foreign key (artist_name) references Artist(artist_name) on delete cascade
);


#drop table Song;
create table Song(
#artist_name varchar(50) not null,
song_title varchar(50) not null,
duration time check (duration>0),
lyrics text,
primary key (song_title)
);

#drop table Album;
create table Album(
album_title varchar(50) not null,
publisher varchar(50) not null,
release_date date,
primary key (album_title, publisher)
);


#drop table Store;
create table Store(
store_name varchar(50) not null,
phone bigint unsigned check(phone>1000000000),
#location
street varchar(50) not null,
number int not null check (number>0),

primary key (store_name,street, number)


) ;


#drop table Takes_Part_In;
create table Takes_Part_In(
band_name varchar(50) not null,
musician_name varchar(50),
join_date date,
breakaway_date date,

foreign key (musician_name) references Musician(artist_name) on delete set null,
foreign key (band_name) references Band(artist_name) on delete cascade
);

#drop table Has_Created;
create table Has_Created(
artist_name varchar(50) not null,
song_title varchar(50) not null,
foreign key (artist_name) references Artist(artist_name) on delete cascade,
foreign key (song_title) references Song(song_title) on delete cascade
);


#drop table Included_In;
create table Included_In (
album_title varchar(50) not null,
publisher varchar(50) not null,
song_title varchar(50),
song_order int check (song_order >0),

foreign key (album_title,publisher) references Album(album_title,publisher) on delete cascade,
foreign key (song_title) references Song(song_title) on delete set null
);


#drop table Is_Available;
create table Is_Available(
store_name varchar(50) not null,
quantity int unsigned not null check(quantity>=0),
price float not null check(price >=0),
album_title varchar(50) not null,
publisher varchar(50) not null,
#location
street varchar(50) not null,
number int not null check (number>0),

foreign key (store_name, street, number) references Store (store_name, street,number) on delete cascade,
foreign key (album_title,publisher) references Album(album_title,publisher) on delete cascade
 
);


#drop table genre;
create table genre(
artist_name varchar(50) not null,
genre varchar(50) not null,

foreign key (artist_name) references Artist(artist_name) on delete cascade

);

#drop table role;
create table role(
musician_name varchar(50),
band_name varchar(50) not null,
role varchar(50) not null,

foreign key (musician_name) references Musician(artist_name) on delete set null,
foreign key (band_name) references Band(artist_name) on delete cascade

);
