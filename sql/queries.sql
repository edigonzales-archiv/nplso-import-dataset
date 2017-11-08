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
        ursprung,
        hinweis,
        NULL::text[] AS full_name
        --array_agg(ursprung) AS foo
        --ARRAY[ursprung, hinweis]::text[] AS full_name
        --ursprung::text AS ursprung_full_name
    FROM
        arp_npl.rechtsvorschrften_hinweisweiteredokumente
    --WHERE
      --  ursprung = 974

    UNION 
    
    SELECT
        e.t_id, 
        e.ursprung,
        e.hinweis,
        array_append(full_name, s.ursprung::text)
        --array_agg(e.ursprung)
        --array_append(array_append(full_name, s.hinweis::text), e.hinweis::text)
        --array_append(full_name, s.hinweis::text)
        --(s.ursprung_full_name || '->' || e.ursprung::text) AS ursprung_full_name
    FROM
        arp_npl.rechtsvorschrften_hinweisweiteredokumente AS e
    INNER JOIN
        subordinates s ON s.hinweis = e.ursprung

),
foo AS 
(
    SELECT 
        *,
        array_append(array_append(full_name, ursprung::text), hinweis::text) AS my_array
    FROM
        subordinates
    ORDER BY
        ursprung
)
SELECT
  --t_id,
    --array_length(my_array, 1),
    --my_array[1],
    unnest(my_array)
    
    
FROM
    foo
--GROUP BY
  --  my_array[1],
/*
    
SELECT 
    a.ursprung, a.hinweis
FROM
    arp_npl.rechtsvorschrften_hinweisweiteredokumente AS a
    JOIN arp_npl.rechtsvorschrften_hinweisweiteredokumente AS b 
    ON a.ursprung = b.hinweis

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
