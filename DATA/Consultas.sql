/* 1.Lista el nombre de todos los platos que hay en la tabla plato. */
SELECT IDPLA,NOMPLA,PREPLA,TIPPLA FROM plato;

/* 2.Lista el nombre de todos las personas que hay en la tabla personas. */
SELECT NOMPER,APEPER,SEXPER,IDUBI FROM persona;

/* 3.Lista de los usuarios. */
SELECT NOMPER,PASPER,TIPUSU FROM usuario;

/* 4.Lista de las Cocinera :V las chikititas de lucio. */
 SELECT nomper,tipusu  FROM usuario WHERE tipusu LIKE "%C%";

/* 5.Lista de los Administradores :V las chikititos de lucio. */
 SELECT nomper,tipusu  FROM usuario WHERE tipusu LIKE "%A%";
 
 /* 6.Lista de los Mosos*/
 SELECT nomper,tipusu  FROM usuario WHERE tipusu LIKE "%M%";
 

