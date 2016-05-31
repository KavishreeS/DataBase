1. select cl.CountryCode,count(cl.Language)
from Country c,CountryLanguage cl WHERE cl.CountryCode=c.Code GROUP by cl.CountryCode HAVING COUNT(cl.Language)=
(
SELECT MAX(cnt.count)from
(
SELECT   
 cl.CountryCode AS contr,
 count(cl.Language) As count
FROM
  `CountryLanguage` cl,
  Country c
WHERE
  cl.CountryCode = c.Code
group by cl.CountryCode)cnt)



2. SELECT Country.Name,City.Name,MAX(City.population) from City,Country where Country.Code=City.CountryCode GROUP BY Country.Code;

3.a. SELECT count(Name) FROM `City` where State="Tamil Nadu";

3.b. SELECT SUM(population) FROM `City` WHERE State="Tamil Nadu";

3.c. SELECT SUM(population) FROM `City` WHERE State="Tamil Nadu" and Name IN("Coimbatore","Tiruchirapalli","Salem");


4. SELECT Name,population FROM `City` where Name in("Madurai","Coimbatore","Tirunelveli","Salem","Erode") ORDER by Field (Name ,"Madurai","Coimbatore","Tirunelveli","Salem","Erode")


