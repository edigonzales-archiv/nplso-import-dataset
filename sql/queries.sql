/*
SELECT
    *
FROM
    arp_npl.rechtsvorschrften_dokument


SELECT
    *
FROM
    arp_npl.rechtsvorschrften_hinweisweiteredokumente  
*/    
    
WITH RECURSIVE subordinates AS
(
    SELECT
        t_id,
        ursprung AS urursprung,
        ursprung,
        hinweis
    FROM
        arp_npl.rechtsvorschrften_hinweisweiteredokumente
    --WHERE
      --  ursprung = 974

    UNION ALL
    
    SELECT
        e.t_id, 
        s.hinweis AS urursprung,
        e.ursprung,
        e.hinweis
    FROM
        arp_npl.rechtsvorschrften_hinweisweiteredokumente AS e
    INNER JOIN
        subordinates s ON s.hinweis = e.ursprung
)
SELECT DISTINCT ON (t_id)
    *
FROM
    subordinates

/*
,
urursprung AS 
(
   SELECT 
        ursprung
    FROM
    arp_npl.rechtsvorschrften_hinweisweiteredokumente

    EXCEPT

    SELECT 
        hinweis
    FROM
        arp_npl.rechtsvorschrften_hinweisweiteredokumente 
)

SELECT
    *
FROM
    subordinates AS s
    LEFT JOIN urursprung AS u
    ON s.ursprung = u.ursprung
ORDER BY
    s.ursprung
    
    

*/
