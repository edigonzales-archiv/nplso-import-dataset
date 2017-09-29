WITH beschriftung AS 
(
    ---- Beschriftung Erschliessung Flaeche
    SELECT 
        erschliessung_flaeche.t_id,
        erschliessung_flaeche.t_datasetname,
        erschliessung_flaeche.t_ili_tid,
        typ_erschliessung_flaeche.typ_kt,
        typ_erschliessung_flaeche.code_kommunal,
        typ_erschliessung_flaeche.bezeichnung,
        typ_erschliessung_flaeche.abkuerzung,
        typ_erschliessung_flaeche.verbindlichkeit,
        typ_erschliessung_flaeche.bemerkungen as typ_bemerkungen,
        pos.pos, 
        pos.ori,
        pos.hali,
        pos.vali,
        pos.groesse,
        'Erschliessung_Flaeche' AS beschriftung_fuer
    FROM 
        arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt_pos AS pos
        LEFT JOIN arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt AS erschliessung_flaeche
        ON pos.erschliessung_flaechenobjekt = erschliessung_flaeche.t_id
        LEFT JOIN arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt AS typ_erschliessung_flaeche
        ON typ_erschliessung_flaeche.t_id = erschliessung_flaeche.typ_erschliessung_flaechenobjekt

    UNION

    ---- Beschriftung Erschliessung Linie
    SELECT 
        erschliessung_linie.t_id,
        erschliessung_linie.t_datasetname,
        erschliessung_linie.t_ili_tid,
        typ_erschliessung_linie.typ_kt,
        typ_erschliessung_linie.code_kommunal,
        typ_erschliessung_linie.bezeichnung,
        typ_erschliessung_linie.abkuerzung,
        typ_erschliessung_linie.verbindlichkeit,
        typ_erschliessung_linie.bemerkungen as typ_bemerkungen,
        pos.pos, 
        pos.ori,
        pos.hali,
        pos.vali,
        pos.groesse,
        'Erschliessung_Linie' AS beschriftung_fuer
    FROM 
        arp_npl.erschlssngsplnung_erschliessung_linienobjekt_pos AS pos
        LEFT JOIN arp_npl.erschlssngsplnung_erschliessung_linienobjekt AS erschliessung_linie
        ON pos.erschliessung_linienobjekt = erschliessung_linie.t_id
        LEFT JOIN arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt AS typ_erschliessung_linie
        ON typ_erschliessung_linie.t_id = erschliessung_linie.typ_erschliessung_linienobjekt 
         
    ---- Beschriftung Erschliessung Punkt
 
    UNION
    
    SELECT 
        erschliessung_punkt.t_id,
        erschliessung_punkt.t_datasetname,
        erschliessung_punkt.t_ili_tid,
        typ_erschliessung_punkt.typ_kt,
        typ_erschliessung_punkt.code_kommunal,
        typ_erschliessung_punkt.bezeichnung,
        typ_erschliessung_punkt.abkuerzung,
        typ_erschliessung_punkt.verbindlichkeit,
        typ_erschliessung_punkt.bemerkungen as typ_bemerkungen,
        pos.pos, 
        pos.ori,
        pos.hali,
        pos.vali,
        pos.groesse,
        'Erschliessung_Punkt' AS beschriftung_fuer
    FROM 
        arp_npl.erschlssngsplnung_erschliessung_punktobjekt_pos AS pos
        LEFT JOIN arp_npl.erschlssngsplnung_erschliessung_punktobjekt AS erschliessung_punkt
        ON pos.erschliessung_punktobjekt = erschliessung_punkt.t_id
        LEFT JOIN arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt AS typ_erschliessung_punkt
        ON typ_erschliessung_punkt.t_id = erschliessung_punkt.typ_erschliessung_punktobjekt 
)
SELECT  
    g.t_datasetname::int4 AS bfs_nr,
    g.t_ili_tid,
    g.bezeichnung,
    g.abkuerzung,
    g.verbindlichkeit,
    g.typ_bemerkungen,
    g.typ_kt,
    g.code_kommunal,
    g.ori AS pos_ori,
    g.hali AS pos_hali,
    g.vali AS pos_vali,
    g.groesse AS pos_groesse,
    --g.beschriftung_fuer,
    g.pos
FROM 
    beschriftung AS g;