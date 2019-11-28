use FOOTIFY;
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
(0010,"23-9-17",10),
(0011,"2-10-17",11),
(0012,"13-10-17",12),
(0013,"20-10-17",13),
(0014,"26-10-17",14),
(0015,"31-10-17",15),
(0016,"4-11-17",16),
(0017,"15-11-17",17),
(0018,"28-11-17",18),
(0019,"4-12-17",19),
(0020,"13-12-17",20);
select * from ASIGNACION;

insert into DETALLE_MENU
(IDDETMEN,IDPLA,IDMEN)
values
(1,20,1),
(2,19,1),
(3,18,1),
(4,17,2),
(5,16,2),
(6,15,2),
(7,14,2),
(8,13,3),
(9,12,3),
(10,11,3),
(11,10,3),
(12,9,4),
(13,8,4),
(14,7,4),
(15,6,4),
(16,5,5),
(17,4,5),
(18,3,5),
(19,2,6),
(20,1,6);
select * from DETALLE_MENU;

insert into MENU
(IDMEN,NOMMEN)
values
(20,"SOPA SECA"),
(19,"CAU CAU"),
(18,"CARAPULCRA"),
(17,"LOMO SALTADO"),
(16,"AJI DE GALLINA"),
(15,"BISTE A LO POBRE"),
(14,"POLLO FRITO"),
(13,"ARROZ CHAUFA"),
(12,"MILANESA"),
(11,"ARROZ VERDE"),
(10,"Causa Rellena"),
(9,"Combinado"),
(8,"Sopa Seca c/n CARAPULCRA"),
(7,"Chicharon de Pollo"),
(6,"AJI DE Pollo"),
(5,"Caldo de Gallina"),
(4,"POLLO FRITO c/n Ensalada"),
(3,"ARROZ CHAUFA c/n Wantan"),
(2,"Tallarines Verdes"),
(1,"Rocoto Relleno");
select * from MENU;

insert into PERSONA
(IDPER,NOMPER,APEPER,SEXPER,CELPER,IDUBI,IDUSU)
values
(1,"lUCIO CARLOS","HUAMAN TIRADO","MASCULINO",983654123,20,20),
(2,"JOSE LUIS","RIVERA YARIHUAMAN","MASCULINO",987309182,19,19),
(3,"XIOMARA MAYLEE","VICUÑA TIRADO","FEMENINO",982748192,18,18),
(4,"CARLA","VICENTE LUYO","FEMENINO",987126345,17,17),
(5,"NOE","YALLE MEZA","MASCULINO",908721341,16,16),
(6,"ZECARLOS","CUYA VICENTE","MASCULINO",981056182,15,15),
(7,"MARIA","PEÑA TIRADO","FEMENINO",981067182,14,14),
(8,"JESUS","SANCHEZ GAMEZ","MASCULINO",971065172,13,13),
(9,"DIEGO","HUAPAYA","MASCULINO",989182103,12,12),
(10,"lUCIO CARLOS","HUAMAN TIRADO","MASCULINO",983654123,11,11),
(11,"Luis Alberto","RIVERA YARIHUAMAN","MASCULINO",986097652,10,10),
(12,"Lia MAYLEE","VICUÑA TIRADO","FEMENINO",979674512,9,9),
(13,"Carolina","VICENTE LUYO","FEMENINO",987120921,8,8),
(14,"Luigui","Hurtado Rojas","MASCULINO",908724123,7,7),
(15,"Francisco","Einstein Lincon","MASCULINO",981058261,6,6),
(16,"MARIA Lia","Sanchez TIRADO","FEMENINO",981068271,5,5),
(17,"Andres","SANCHEZ Rojas","MASCULINO",971065721,4,4),
(18,"Jose ","HUAPAYA Rivera","MASCULINO",989182012,3,3),
(19,"JEAN Paul","SIMON ROJAS","MASCULINO",998132189,2,2),
(20,"Jefferson","HUAPAYA Rivera","MASCULINO",989181320,1,1);
select * from PERSONA;

insert into PLATO
(IDPLA,NOMPLA,TIPPLA,DESPLA,PREPLA)
values
(20,"SOPA SECA","plato hondo","contiene fideos",14),
(19,"CAU CAU","plato redondo","contiene papas y carne de vaca",15),
(18,"CARAPULCRA","plato redondo","contiene papa seca",15),
(17,"LOMO SALTADO","plato hondo","contiene papas, cebollas,pollo",13),
(16,"AJI DE GALLINA","plato redondo","contiene pollo",15),
(15,"BISTE A LO POBRE","plato hondo","contiene pollo, ensalada y papas",14),
(14,"POLLO FRITO","plato redondo","contiene pollo y papas",15),
(13,"ARROZ CHAUFA","plato redondo","contiene pollo y arroz",13),
(12,"MILANESA","plato redondo","contiene pollo, ensalada y papas",15),
(11,"ARROZ VERDE","plato hondo","contiene pollo y ensalada",10),
(10,"Causa Rellena","Plato hondo","Contiene pollo,verduras y vegetales",11),
(9,"Combinado","Plato Redondo","Contiene Pollo y verduras",13),
(8,"Sopa Seca c/n CARAPULCRA","Plato hondo","Contiene fideos y Pollo",13),
(7,"Chicharon de Pollo","Plato Llano","Contiene Carne de Pollo",14),
(6,"AJI DE Pollo","Plato hondo","Contiene pollo",15),
(5,"Caldo de Gallina","Plato hondo","Contiene verduras y carne de gallina",12),
(4,"POLLO FRITO c/n Ensalada","Plato Llano","Contiene papas,pollo y ensalada",15),
(3,"ARROZ CHAUFA c/n Wantan","Plato Llano","Contiene huevos partidos y carne",14),
(2,"Tallarines Verdes","Plato hondo","Contiene fideos, y queso rallado",15),
(1,"Rocoto Relleno","Plato Llano","Contiene rocoto, lomo saltado",20);

insert into UBIGEO
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
(10,"lIMA","CAÑETE","IMPERIAL"),
(11,"lIMA","CAÑETE","QUILAMANA"),
(12,"lIMA","CAÑETE","LUNAHUANA"),
(13,"lIMA","CAÑETE","SAN VICENTE"),
(14,"lIMA","CAÑETE","ZUÑIGA"),
(15,"lIMA","CAÑETE","IMPERIAL"),
(16,"lIMA","CAÑETE","SAN ANTONIO"),
(17,"lIMA","CAÑETE","SAN VICENTE"),
(18,"lIMA","CAÑETE","IMPERIAL"),
(19,"lIMA","CAÑETE","IMPERIAL"),
(20,"lIMA","CAÑETE","IMPERIAL");
select * from UBIGEO;

insert into USUARIO
(IDUSU,NOMPER,PASPER,TIPUSU)
values
(1,"XIOMARA","XIOMARA1234","C"),
(2,"CARLOS","CARLOS8971","A"),
(3,"JESUS","JESUSU8778","M"),
(4,"MIGUEL","MIGUEL1784","M"),
(5,"VICTOR","VICTOR67614","A"),
(6,"ANGELA","ANGELA1341","C"),
(7,"DIEGO","DIEGO9874","M"),
(8,"JOSE","JOSESITOMASNA","M"),
(9,"CLARA","CLARA8874","C"),
(10,"CLEYSI","CLEYSI89784","C");
select * from USUARIO;

insert into VENTA
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
(00010,"31-8-17",10),
(00011,"2-9-17",11),
(00012,"4-9-17",12),
(00013,"8-9-17",13),
(00014,"14-9-17",14),
(00015,"18-9-17",15),
(00016,"23-9-17",16),
(00017,"27-9-17",17),
(00018,"3-10-17",18),
(00019,"4-10-17",19),
(0020,"15-10-17",20);
select * from VENTA;

insert into VENTA_DETALLE
(IDVENDET,CODVENDET,CODASI,IDPLA)
values
(20,"0001",001,20),
(19,"0002",002,19),
(18,"0003",003,18),
(17,"0004",004,17),
(16,"0005",005,16),
(15,"0006",006,15),
(14,"0007",007,14),
(13,"0008",008,13),
(12,"0009",009,12),
(11,"00010",0010,11),
(10,"00011",0011,10),
(9,"00012",0012,9),
(8,"00013",0013,8),
(7,"00014",0014,7),
(6,"00015",0015,6),
(5,"00016",0016,5),
(4,"00017",0017,4),
(3,"00018",0018,3),
(2,"00019",0019,2),
(1,"00020",0020,1);
select * from VENTA_DETALLE;
