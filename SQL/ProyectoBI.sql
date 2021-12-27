
-- tipo de contrato contra Churn, muestra segun el tipo de contrato la decisión que tomo el usuario
select contract, churn, count(CUSTOMERID) as Users
from prueba
group by rollup(CONTRACT, churn);

-- Servicios con los que cuenta contra Churn, muestra segun los servicios la decisión que tomo el usuario
select PHONESERVICE,MULTIPLELINES,INTERNETSERVICE,ONLINESECURITY,ONLINEBACKUP,DEVICEPROTECTION,TECHSUPPORT,STREAMINGTV,STREAMINGMOVIES,churn, count(CUSTOMERID) as Users
from prueba
group by rollup(PHONESERVICE,MULTIPLELINES,INTERNETSERVICE,ONLINESECURITY,ONLINEBACKUP,DEVICEPROTECTION,TECHSUPPORT,STREAMINGTV,STREAMINGMOVIES,churn);

-- partner contra Churn, muestra si el usuario es partner la decisión que tomo el usuario
select PARTNER, CHURN, count(CUSTOMERID) as Users
from prueba
group by rollup(PARTNER, CHURN);

-- tenure x churn, muestra la cantidad de personas que siguieron con el servicio según los meses que ha permanecido con la empresa
select TENURE, Churn, count(CUSTOMERID) as Users
from prueba
group by rollup(TENURE, Churn);

-- gender x churn, muestra según el genero cuantos siguieron con el servicio y cuantos no
select GENDER, churn, count(CUSTOMERID) as Users
from prueba
group by rollup(GENDER, churn);

-- SENIORCITIZEN x churn, muestra la cantidad de usuarios mayores de edad o no que decidieron continuar con el servicio
select SENIORCITIZEN, CHURN, count(CUSTOMERID) as Users
from prueba
group by rollup(SENIORCITIZEN, CHURN);

-- DEPENDENTS x churn, muestra la cantidad de usuarios con dependencias y los que no que decidieron continuar con el servicio o no
select DEPENDENTS, CHURN, count(CUSTOMERID) as Users
from prueba
group by rollup(DEPENDENTS, CHURN);
