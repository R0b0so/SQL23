--Use the SQL commands you just learned and find the best dinner spots in the city and answer the following questions: 
--1)What are the distinct neighborhood 
--2)What are the distinct cuisine types? 
--3)Suppose we would like some Chinese takeout. What are our options? 
--4)Return all the restaurants with reviews of 4 and above. 
--5)Suppose Abbi and Ilana want to have dinner. Return all the restaurants that are Italian and $$$. 
--6)If you want to find Italian restaurants with exactly three dollar signs: 
--7)Your coworker Trey can’t remember the exact name of a restaurant he went to but he knows it contains the word ‘Candy’ in it. Can you find it for him using a query? 
--8)Let’s order delivery to the house! Find all the close-by spots in Midtown, Downtown or Chinatown 
--9)Find all the health grade pending restaurants (empty values). 
--10)Create a Top 4 Restaurants Ranking based on reviews
CREATE TABLE IF NOT EXISTS RESTAURANT(
    NAME TEXT, 
    NEIGHBORHOOD TEXT,
    CUISINE TEXT,
    REVIEW TEXT,
    PRICE TEXT,
    HEALTH TEXT);
DELETE FROM RESTAURANT;
INSERT INTO RESTAURANT(NAME,NEIGHBORHOOD,CUISINE,REVIEW,PRICE,HEALTH) VALUES

("JOHNS", "DOWNTOWN", "STEAK", "3", "$$$", "B"),
("PIZZA SHOP", "DOWNTOWN", "PIZZA", "4", "$", "A"),
("TIGERMEAL", "CHINATOWN", "CHINESE", "5", "$$", "B"),
("ITALYS HOME", "UPTOWN", "ITALIAN", "4", "$$$", "A"),
("PETER", "MIDTOWN", "CHINESE", "4", "$$$", "A"),
("STEAKHOUSE", "MIDTOWN", "STEAK", "2", "$$$$", ""),
("CANDY SHOP", "UPTOWN", "AMERICAN", "3", "$", "C");

SELECT DISTINCT NEIGHBORHOOD FROM RESTAURANT;
SELECT DISTINCT CUISINE FROM RESTAURANT;
SELECT * FROM RESTAURANT WHERE CUISINE = "CHINESE";
SELECT * FROM RESTAURANT WHERE REVIEW >= 3.9;
SELECT * FROM RESTAURANT WHERE CUISINE = "ITALIAN" AND PRICE IN ("$$", "$$$");
SELECT * FROM RESTAURANT WHERE CUISINE = "ITALIAN" AND PRICE = "$$$";
SELECT * FROM RESTAURANT WHERE NAME LIKE "%CANDY%";
SELECT * FROM RESTAURANT WHERE NEIGHBORHOOD IN ("MIDTOWN", "DOWNTOWN", "CHINATOWN");
SELECT * FROM RESTAURANT WHERE HEALTH = "" OR HEALTH IS NULL;
SELECT * FROM RESTAURANT ORDER BY REVIEW DESC LIMIT 4;