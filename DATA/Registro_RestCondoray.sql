use RestCondoray;
SET FOREIGN_KEY_CHECKS=0;
insert into ASIGNACION
(CODASI,FECASI,IDMEN)
values
(0001,"12-7-17",1),
(0002,"15-7-17",2),
(0003,"23-7-17",3),
(0004,"29-7-17",4),
(0005,"10-8-17",5),
(0006,"21-8-17",6),
(0007,"25-8-17",7),
(0008,"30-8-17",8),
(0009,"13-9-17",9),
(0010,"23-9-17",10);
select * from ASIGNACION;

insert into DETALLE_MENU
(IDDETMEN,IDPLA)
values
(1,10),
(2,9),
(3,8),
(4,7),
(5,6),
(6,5),
(7,4),
(8,3),
(9,2),
(10,1);
select * from DETALLE_MENU;

insert into MENU
(IDMEN,NOMMEN,IDDETMEN)
values
(10,"SOPA SECA",1),
(9,"CAU CAU",2),
(8,"CARAPULCRA",3),
(7,"LOMO SALTADO",4),
(6,"AJI DE GALLINA",5),
(5,"BISTE A LO POBRE",6),
(4,"POLLO FRITO",7),
(3,"ARROZ CHAUFA",8),
(2,"MILANESA",9),
(1,"ARROZ VERDE",10);
select * from MENU;

insert into PERSONA
(IDPER,NOMPER,APEPER,SEXPER,IDUBI,IDUSU)
values
(1,"lUCIO CARLOS","HUAMAN TIRADO","MASCULINO",10,10),
(2,"JOSE LUIS","RIVERA YARIHUAMAN","MASCULINO",9,9),
(3,"XIOMARA MAYLEE","VICUÑA TIRADO","FEMENINO",8,8),
(4,"CARLA","VICENTE LUYO","FEMENINO",7,7),
(5,"NOE","YALLE MEZA","MASCULINO",6,6),
(6,"ZECARLOS","CUYA VICENTE","MASCULINO",5,5),
(7,"MARIA","PEÑA TIRADO","FEMENINO",4,4),
(8,"JESUS","SANCHEZ GAMEZ","MASCULINO",3,3),
(9,"DIEGO","HUAPAYA","MASCULINO",2,2),
(10,"JEAN","SIMON ROJAS","MASCULINO",1,1);
select * from PERSONA;

insert into PLATO
(IDPLA,NOMPLA,TIPPLA,DESPLA,PREPLA)
values
(10,"SOPA SECA","plato hondo","contiene fideos",14),
(9,"CAU CAU","plato redondo","contiene papas y carne de vaca",15),
(8,"CARAPULCRA","plato redondo","contiene papa seca",15),
(7,"LOMO SALTADO","plato hondo","contiene papas, cebollas,pollo",13),
(6,"AJI DE GALLINA","plato redondo","contiene pollo",15),
(5,"BISTE A LO POBRE","plato hondo","contiene pollo, ensalada y papas",14),
(4,"POLLO FRITO","plato redondo","contiene pollo y papas",15),
(3,"ARROZ CHAUFA","plato redondo","contiene pollo y arroz",13),
(2,"MILANESA","plato redondo","contiene pollo, ensalada y papas",15),
(1,"ARROZ VERDE","plato hondo","contiene pollo y ensalada",10);
select * from PLATO;

insert into UBIGUEO
(IDUBI,REGUBI,PROUBI,DISUBI)
values
(1,"lIMA","CAÑETE","IMPERIAL"),
(2,"lIMA","CAÑETE","QUILAMANA"),
(3,"lIMA","CAÑETE","LUNAHUANA"),
(4,"lIMA","CAÑETE","SAN VICENTE"),
(5,"lIMA","CAÑETE","ZUÑIGA"),
(6,"lIMA","CAÑETE","IMPERIAL"),
(7,"lIMA","CAÑETE","SAN ANTONIO"),
(8,"lIMA","CAÑETE","SAN VICENTE"),
(9,"lIMA","CAÑETE","IMPERIAL"),
(10,"lIMA","CAÑETE","IMPERIAL");
select * from UBIGUEO;

insert into USUARIO
(IDUSU,DNIPER,NOMPER,PASPER)
values
(1,84719481,"XIOMARA","XIOMARA1234"),
(2,15787401,"CARLOS","CARLOS8971"),
(3,71987482,"JESUS","JESUSU8778"),
(4,79070184,"MIGUEL","MIGUEL1784"),
(5,15989813,"VICTOR","VICTOR67614"),
(6,98974871,"ANGELA","ANGELA1341"),
(7,79776145,"DIEGO","DIEGO9874"),
(8,15767879,"JOSE","JOSESITOMASNA"),
(9,79898796,"CLARA","CLARA8874"),
(10,1654715,"CLEYSI","CLEYSI89784");
select * from USUARIO;

insert into venta
(CODVEN,FECVEN,IDPER)
values
(0001,"17-7-17",1),
(0002,"20-7-17",2),
(0003,"26-7-17",3),
(0004,"29-7-17",4),
(0005,"10-8-17",5),
(0006,"14-8-17",6),
(0007,"17-8-17",7),
(0008,"21-8-17",8),
(0009,"24-8-17",9),
(0010,"15-9-17",10);
select * from VENTA;

insert into VENTA_DETALLE
(IDVENDET,CODVENDET,CODASI,IDPLA)
values
(10,"0001",1,10),
(9,"0002",2,9),
(8,"0003",3,8),
(7,"0004",4,7),
(6,"0005",5,6),
(5,"0006",6,5),
(4,"0007",7,4),
(3,"0008",8,3),
(2,"0009",9,2),
(1,"0010",10,1);
select * from VENTA_DETALLE;