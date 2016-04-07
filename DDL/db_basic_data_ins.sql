insert into classes values (0, 'handgun');
insert into classes values (1, 'rifle');
insert into classes values (2, 'as_rifle');
insert into classes values (3, 'smg');
insert into classes values (4, 'carbine');
insert into classes values (5, 'shotgun');
insert into classes values (6, 'lmg');

insert into countries values (0, 'Russia');
insert into countries values (1, 'USA');
insert into countries values (2, 'UK');
insert into countries values (3, 'Germany');
insert into countries values (4, 'Israel');
insert into countries values (5, 'France');
insert into countries values (6, 'Belgia');

insert into definition values (0, 'Military');
insert into definition values (1, 'Stort');
insert into definition values (2, 'Traumatic');
insert into definition values (3, 'Airsoft');

insert into caliber values (0, 19);
insert into caliber values (1, 22);
insert into caliber values (2, 24);
insert into caliber values (3, 27);
insert into caliber values (4, 29);
insert into caliber values (5, 30);
insert into caliber values (6, 34);
insert into caliber values (7, 35);
insert into caliber values (8, 37);
insert into caliber values (9, 39);

insert into clients values (0, 'Alex', 'Good');
insert into clients values (1, 'Alan', 'Bad');
insert into clients values (2, 'Andrew', 'Good');
insert into clients values (3, 'Leo', 'Middle');
insert into clients values (4, 'Max', 'Bad');
insert into clients values (5, 'Piter', 'Good');
insert into clients values (6, 'Jerry', 'Middle');
insert into clients values (7, 'Rick', 'Good');
insert into clients values (8, 'Patrick', 'Bad');
insert into clients values (9, 'Ivan', 'Good');
insert into clients values (10, 'Vasiliy', 'Middle');

insert into catalog values (0, 'AK-74', 2, 0, 0, 7, 500);
insert into catalog values (1, 'M4A1', 1, 1, 0, 7, 1250);
insert into catalog values (2, 'AS Vall', 4, 0, 0, 8, 970);
insert into catalog values (3, 'G-36', 2, 3, 3, 7, 3560);
insert into catalog values (4, 'M1911 Kolt', 0, 1, 2, 4, 700);
insert into catalog values (5, 'M240', 6, 6, 0, 8, 8600);
insert into catalog values (6, 'M82 Barret', 1, 1, 3, 9, 9200);
insert into catalog values (7, 'Sten', 3, 2, 0, 6, 1500);
insert into catalog values (8, 'Desert Eagle', 0, 4, 1, 6, 2000);
insert into catalog values (9, 'Saiga', 4, 0, 0, 8, 5300);
insert into catalog values (10, 'Famas F1', 2, 5, 0, 6, 3470);
insert into catalog values (11, 'RPK', 6, 0, 0, 8, 1800);

insert into items values (0, 0, 546546, 0);
insert into items values (1, 0, 543453, 0);
insert into items values (2, 10, 12323, 0);
insert into items values (3, 0, 542313, 0);
insert into items values (4, 4, 21345, 0);
insert into items values (5, 2, 12351, 0);
insert into items values (6, 9, 23451, 0);
insert into items values (7, 1, 65461, 0);
insert into items values (8, 0, 52345, 0);
insert into items values (9, 7, 35446, 0);
insert into items values (10, 5, 23456, 1);


insert into orders values (0, 2, 9, '2015-01-11');
insert into orders values (1, 4, 3, '2015-01-11');
insert into orders values (2, 6, 2, '2012-12-21');
insert into orders values (3, 8, 1, '2011-06-01');
insert into orders values (4, 5, 0, '2012-03-22');
insert into orders values (5, 0, 5, '2015-09-13');
insert into orders values (6, 7, 10, '2011-08-17');
insert into orders values (7, 9, 4, '2009-03-02');
insert into orders values (8, 10, 6, '2015-04-07');
insert into orders values (9, 1, 8, '2013-11-25');
insert into orders values (10, 3, 7, '2014-01-30');

insert into stock values (0, 8, 12);
insert into stock values (1, 11, 110);
insert into stock values (2, 1, 561);
insert into stock values (3, 4, 34);
insert into stock values (4, 7, 0);
insert into stock values (5, 0, 1020);
insert into stock values (6, 9, 10);
insert into stock values (7, 3, 230);
insert into stock values (8, 10, 25);
insert into stock values (9, 6, 37);
insert into stock values (10, 5, 102);

insert into ttc values (0, 0, 3.5, 45, 2, 0, 910, 1000, 940, 70, 30); --ak
insert into ttc values (1, 1, 3, 30, 1, 1, 0, 1100, 1090, 80, 30); --m4a1
insert into ttc values (2, 2, 2.5, 30, 0, 1, 0, 800, 580, 50, 10); --val
insert into ttc values (3, 3, 3.2, 35, 2, 2, 0, 900, 600, 77, 30); --g36
insert into ttc values (4, 4, 1.4, 23, 1, 1, 0, 300, 80, 20, 12); --kolt
insert into ttc values (5, 5, 3.7, 44, 2, 1, 0, 860, 920, 100, 30); --m240
insert into ttc values (6, 6, 9.5, 120, 0, 3, 0, 2500, 1490, 100, 10); --barret
insert into ttc values (7, 7, 2.4, 24, 1, 0, 0, 600, 140, 14, 20); --sten
insert into ttc values (8, 8, 1.8, 30, 2, 3, 0, 350, 30, 9, 8); --degle
insert into ttc values (9, 9, 3.4, 55, 3, 0, 0, 150, 800, 70, 11); --saiga
insert into ttc values (10, 10, 3.1, 30, 1, 0, 0, 750, 745, 100, 30); --f1
insert into ttc values (11, 11, 7.4, 45, 2, 1, 0, 1000, 1100, 110, 50); --rpk

insert into orders_lists values (0, 0);
insert into orders_lists values (1, 1);
insert into orders_lists values (2, 2);
insert into orders_lists values (3, 3);
insert into orders_lists values (4, 4);
insert into orders_lists values (5, 5);
insert into orders_lists values (6, 6);
insert into orders_lists values (7, 7);
insert into orders_lists values (8, 8);
insert into orders_lists values (9, 9);
insert into orders_lists values (10, 10);
commit;