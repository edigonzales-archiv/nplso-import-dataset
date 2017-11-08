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
   

WITH RECURSIVE x(id, parent_fk, parents, last_id, depth) AS 
(
  SELECT 
    ursprung, 
    hinweis, 
    ARRAY[ursprung] AS parents, 
    ursprung AS last_id, 
    0 AS depth 
  FROM 
    arp_npl.rechtsvorschrften_hinweisweiteredokumente
  
  UNION ALL
  
  SELECT 
    x.id, 
    x.parent_fk, 
    parents||t1.hinweis, 
    t1.hinweis AS last_id, 
    x.depth + 1
  FROM 
    x 
    INNER JOIN arp_npl.rechtsvorschrften_hinweisweiteredokumente t1 
    ON (last_id = t1.ursprung)
  WHERE 
    t1.hinweis IS NOT NULL
), 
res AS 
(
  SELECT 
    id, 
    parent_fk, 
    --array_to_string(parents,';'),
    parents,
    depth
  FROM x 
  WHERE 
    depth = (SELECT max(sq.depth) FROM x sq WHERE sq.id = x.id)
)
SELECT 
  *,
  array_to_json(a_parents)
FROM
(
  SELECT DISTINCT ON (a_parents)
    a.id,
    a.parents AS a_parents,
    b.parents AS b_parents
  FROM
    res AS a
    LEFT JOIN res AS b
    ON a.parents <@ b.parents AND a.parents != b.parents
) AS foo
WHERE b_parents IS NULL


SELECT
row_to_json(row(t_id, ))
FROM
arp_npl.rechtsvorschrften_dokument


select row_to_json(t)
from (
  select * from arp_npl.rechtsvorschrften_dokument
) t

/*
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
my_array    
    
FROM
    foo
--GROUP BY
  --  my_array[1],
*/

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
