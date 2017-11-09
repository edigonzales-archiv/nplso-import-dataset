WITH grundnutzung_geometrie_typ AS
(
  SELECT 
    g.t_datasetname::int4 AS bfs_nr,
    g.t_ili_tid,
    g.name_nummer,
    g.rechtsstatus,
    g.publiziertab,
    g.bemerkungen,
    g.erfasser,
    g.datum,
    g.geometrie,
    t.t_id AS typ_t_id,
    t.typ_kt AS typ_typ_kt,
    t.code_kommunal AS typ_code_kommunal,
    t.nutzungsziffer AS typ_nutzungsziffer,
    t.nutzungsziffer_art AS typ_nutzungsziffer_art,
    t.geschosszahl AS typ_geschosszahl,
    t.bezeichnung AS typ_bezeichnung,
    t.abkuerzung AS typ_abkuerzung,
    t.verbindlichkeit AS typ_verbindlichkeit,
    t.bemerkungen AS typ_bemerkungen 
  FROM
    arp_npl.nutzungsplanung_grundnutzung AS g
    LEFT JOIN arp_npl.nutzungsplanung_typ_grundnutzung AS t
    ON g.typ_grundnutzung = t.t_id
)
SELECT
  *
FROM
  grundnutzung_geometrie_typ
