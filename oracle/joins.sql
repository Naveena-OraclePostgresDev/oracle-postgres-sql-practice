-- INNER JOIN
SELECT vndname, vndbnsid, vnaadrcode, vnaadrname
FROM vndgen 
JOIN vndadr 
ON vndid = vnavndid;
