CREATE SEQUENCE arp_npl_pub.t_ili2db_seq;;
-- SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Grundnutzung
CREATE TABLE arp_npl_pub.nutzungsplanung_grundnutzung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_bezeichnung varchar(80) NULL
  ,typ_abkuerzung varchar(12) NULL
  ,typ_verbindlichkeit varchar(30) NULL
  ,typ_bemerkungen varchar(240) NULL
  ,typ_kt varchar(60) NULL
  ,typ_code_kommunal varchar(12) NULL
  ,typ_nutzungsziffer decimal(3,2) NULL
  ,typ_nutzungsziffer_art varchar(20) NULL
  ,typ_geschosszahl integer NULL
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(20) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,dok_id text NULL
  ,dok_titel text NULL
  ,dok_offiziellertitel text NULL
  ,dok_abkuerzung text NULL
  ,dok_offiziellenr text NULL
  ,dok_kanton text NULL
  ,dok_gemeinde text NULL
  ,dok_publiziertab text NULL
  ,dok_rechtsstatus text NULL
  ,dok_textimweb text NULL
  ,dok_bemerkungen text NULL
  ,dok_rechtsvorschrift text NULL
  ,bfs_nr integer NULL
)
;
SELECT AddGeometryColumn('arp_npl_pub','nutzungsplanung_grundnutzung','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
CREATE INDEX nutzungsplanung_grndntzung_geometrie_idx ON arp_npl_pub.nutzungsplanung_grundnutzung USING GIST ( geometrie );
COMMENT ON TABLE arp_npl_pub.nutzungsplanung_grundnutzung IS '@iliname SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Grundnutzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.typ_bezeichnung IS '@iliname Typ_Bezeichnung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.typ_abkuerzung IS '@iliname Typ_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.typ_verbindlichkeit IS '@iliname Typ_Verbindlichkeit';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.typ_bemerkungen IS '@iliname Typ_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.typ_code_kommunal IS '@iliname Typ_Code_kommunal';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.typ_nutzungsziffer IS '@iliname Typ_Nutzungsziffer';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.typ_nutzungsziffer_art IS '@iliname Typ_Nutzungsziffer_Art';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.typ_geschosszahl IS '@iliname Typ_Geschosszahl';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.geometrie IS '@iliname Geometrie';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.name_nummer IS '@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.publiziertab IS '@iliname publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.bemerkungen IS '@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.erfasser IS '@iliname Erfasser';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.datum IS '@iliname Datum';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.dok_id IS '@iliname Dok_ID';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.dok_titel IS '@iliname Dok_Titel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.dok_offiziellertitel IS '@iliname Dok_OffiziellerTitel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.dok_abkuerzung IS '@iliname Dok_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.dok_offiziellenr IS '@iliname Dok_OffizielleNr';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.dok_kanton IS '@iliname Dok_Kanton';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.dok_gemeinde IS '@iliname Dok_Gemeinde';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.dok_publiziertab IS '@iliname Dok_publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.dok_rechtsstatus IS '@iliname Dok_Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.dok_textimweb IS '@iliname Dok_TextImWeb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.dok_bemerkungen IS '@iliname Dok_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.dok_rechtsvorschrift IS '@iliname Dok_Rechtsvorschrift';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_grundnutzung.bfs_nr IS '@iliname BFS_Nr';
-- SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Ueberlagernd_Flaeche
CREATE TABLE arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_bezeichnung varchar(80) NULL
  ,typ_abkuerzung varchar(12) NULL
  ,typ_verbindlichkeit varchar(30) NULL
  ,typ_bemerkungen varchar(240) NULL
  ,typ_kt varchar(60) NULL
  ,typ_code_kommunal varchar(12) NULL
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(20) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,dok_id text NULL
  ,dok_titel text NULL
  ,dok_offiziellertitel text NULL
  ,dok_abkuerzung text NULL
  ,dok_offiziellenr text NULL
  ,dok_kanton text NULL
  ,dok_gemeinde text NULL
  ,dok_publiziertab text NULL
  ,dok_rechtsstatus text NULL
  ,dok_textimweb text NULL
  ,dok_bemerkungen text NULL
  ,dok_rechtsvorschrift text NULL
  ,plan_plandokumentid varchar(16) NULL
  ,plan_titel varchar(80) NULL
  ,plan_offiziellertitel varchar(240) NULL
  ,plan_offiziellenr varchar(20) NULL
  ,plan_kanton varchar(255) NULL
  ,plan_gemeinde integer NULL
  ,plan_publiziertab date NULL
  ,plan_rechtsstatus varchar(20) NULL
  ,plan_planimweb varchar(1023) NULL
  ,plan_bemerkungen varchar(240) NULL
  ,bfs_nr integer NULL
)
;
SELECT AddGeometryColumn('arp_npl_pub','nutzungsplanung_ueberlagernd_flaeche','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
CREATE INDEX nutzngsplnng_brlgrnd_flche_geometrie_idx ON arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche USING GIST ( geometrie );
COMMENT ON TABLE arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche IS '@iliname SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Ueberlagernd_Flaeche';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.typ_bezeichnung IS '@iliname Typ_Bezeichnung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.typ_abkuerzung IS '@iliname Typ_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.typ_verbindlichkeit IS '@iliname Typ_Verbindlichkeit';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.typ_bemerkungen IS '@iliname Typ_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.typ_code_kommunal IS '@iliname Typ_Code_kommunal';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.geometrie IS '@iliname Geometrie';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.name_nummer IS '@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.publiziertab IS '@iliname publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.bemerkungen IS '@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.erfasser IS '@iliname Erfasser';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.datum IS '@iliname Datum';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.dok_id IS '@iliname Dok_ID';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.dok_titel IS '@iliname Dok_Titel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.dok_offiziellertitel IS '@iliname Dok_OffiziellerTitel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.dok_abkuerzung IS '@iliname Dok_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.dok_offiziellenr IS '@iliname Dok_OffizielleNr';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.dok_kanton IS '@iliname Dok_Kanton';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.dok_gemeinde IS '@iliname Dok_Gemeinde';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.dok_publiziertab IS '@iliname Dok_publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.dok_rechtsstatus IS '@iliname Dok_Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.dok_textimweb IS '@iliname Dok_TextImWeb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.dok_bemerkungen IS '@iliname Dok_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.dok_rechtsvorschrift IS '@iliname Dok_Rechtsvorschrift';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.plan_plandokumentid IS '@iliname Plan_PlandokumentID';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.plan_titel IS '@iliname Plan_Titel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.plan_offiziellertitel IS '@iliname Plan_OffiziellerTitel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.plan_offiziellenr IS '@iliname Plan_OffizielleNr';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.plan_kanton IS '@iliname Plan_Kanton';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.plan_gemeinde IS '@iliname Plan_Gemeinde';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.plan_publiziertab IS '@iliname Plan_publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.plan_rechtsstatus IS '@iliname Plan_Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.plan_planimweb IS '@iliname Plan_PlanImWeb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.plan_bemerkungen IS '@iliname Plan_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_flaeche.bfs_nr IS '@iliname BFS_Nr';
-- SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Ueberlagernd_Linie
CREATE TABLE arp_npl_pub.nutzungsplanung_ueberlagernd_linie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_bezeichnung varchar(80) NULL
  ,typ_abkuerzung varchar(12) NULL
  ,typ_verbindlichkeit varchar(30) NULL
  ,typ_bemerkungen varchar(240) NULL
  ,typ_kt varchar(60) NULL
  ,typ_code_kommunal varchar(12) NULL
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(20) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,dok_id text NULL
  ,dok_titel text NULL
  ,dok_offiziellertitel text NULL
  ,dok_abkuerzung text NULL
  ,dok_offiziellenr text NULL
  ,dok_kanton text NULL
  ,dok_gemeinde text NULL
  ,dok_publiziertab text NULL
  ,dok_rechtsstatus text NULL
  ,dok_textimweb text NULL
  ,dok_bemerkungen text NULL
  ,dok_rechtsvorschrift text NULL
  ,bfs_nr integer NULL
)
;
SELECT AddGeometryColumn('arp_npl_pub','nutzungsplanung_ueberlagernd_linie','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'LINESTRING',2);
CREATE INDEX nutzungsplnng_brlgrnd_lnie_geometrie_idx ON arp_npl_pub.nutzungsplanung_ueberlagernd_linie USING GIST ( geometrie );
COMMENT ON TABLE arp_npl_pub.nutzungsplanung_ueberlagernd_linie IS '@iliname SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Ueberlagernd_Linie';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.typ_bezeichnung IS '@iliname Typ_Bezeichnung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.typ_abkuerzung IS '@iliname Typ_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.typ_verbindlichkeit IS '@iliname Typ_Verbindlichkeit';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.typ_bemerkungen IS '@iliname Typ_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.typ_code_kommunal IS '@iliname Typ_Code_kommunal';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.geometrie IS '@iliname Geometrie';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.name_nummer IS '@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.publiziertab IS '@iliname publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.bemerkungen IS '@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.erfasser IS '@iliname Erfasser';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.datum IS '@iliname Datum';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.dok_id IS '@iliname Dok_ID';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.dok_titel IS '@iliname Dok_Titel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.dok_offiziellertitel IS '@iliname Dok_OffiziellerTitel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.dok_abkuerzung IS '@iliname Dok_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.dok_offiziellenr IS '@iliname Dok_OffizielleNr';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.dok_kanton IS '@iliname Dok_Kanton';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.dok_gemeinde IS '@iliname Dok_Gemeinde';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.dok_publiziertab IS '@iliname Dok_publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.dok_rechtsstatus IS '@iliname Dok_Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.dok_textimweb IS '@iliname Dok_TextImWeb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.dok_bemerkungen IS '@iliname Dok_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.dok_rechtsvorschrift IS '@iliname Dok_Rechtsvorschrift';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_linie.bfs_nr IS '@iliname BFS_Nr';
-- SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Ueberlagernd_Punkt
CREATE TABLE arp_npl_pub.nutzungsplanung_ueberlagernd_punkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_bezeichnung varchar(80) NULL
  ,typ_abkuerzung varchar(12) NULL
  ,typ_verbindlichkeit varchar(30) NULL
  ,typ_bemerkungen varchar(240) NULL
  ,typ_kt varchar(60) NULL
  ,typ_code_kommunal varchar(12) NULL
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(20) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,dok_id text NULL
  ,dok_titel text NULL
  ,dok_offiziellertitel text NULL
  ,dok_abkuerzung text NULL
  ,dok_offiziellenr text NULL
  ,dok_kanton text NULL
  ,dok_gemeinde text NULL
  ,dok_publiziertab text NULL
  ,dok_rechtsstatus text NULL
  ,dok_textimweb text NULL
  ,dok_bemerkungen text NULL
  ,dok_rechtsvorschrift text NULL
  ,bfs_nr integer NULL
)
;
SELECT AddGeometryColumn('arp_npl_pub','nutzungsplanung_ueberlagernd_punkt','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX nutzungsplnng_brlgrnd_pnkt_geometrie_idx ON arp_npl_pub.nutzungsplanung_ueberlagernd_punkt USING GIST ( geometrie );
COMMENT ON TABLE arp_npl_pub.nutzungsplanung_ueberlagernd_punkt IS '@iliname SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Ueberlagernd_Punkt';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.typ_bezeichnung IS '@iliname Typ_Bezeichnung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.typ_abkuerzung IS '@iliname Typ_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.typ_verbindlichkeit IS '@iliname Typ_Verbindlichkeit';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.typ_bemerkungen IS '@iliname Typ_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.typ_code_kommunal IS '@iliname Typ_Code_kommunal';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.geometrie IS '@iliname Geometrie';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.name_nummer IS '@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.publiziertab IS '@iliname publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.bemerkungen IS '@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.erfasser IS '@iliname Erfasser';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.datum IS '@iliname Datum';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.dok_id IS '@iliname Dok_ID';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.dok_titel IS '@iliname Dok_Titel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.dok_offiziellertitel IS '@iliname Dok_OffiziellerTitel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.dok_abkuerzung IS '@iliname Dok_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.dok_offiziellenr IS '@iliname Dok_OffizielleNr';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.dok_kanton IS '@iliname Dok_Kanton';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.dok_gemeinde IS '@iliname Dok_Gemeinde';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.dok_publiziertab IS '@iliname Dok_publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.dok_rechtsstatus IS '@iliname Dok_Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.dok_textimweb IS '@iliname Dok_TextImWeb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.dok_bemerkungen IS '@iliname Dok_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.dok_rechtsvorschrift IS '@iliname Dok_Rechtsvorschrift';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_ueberlagernd_punkt.bfs_nr IS '@iliname BFS_Nr';
-- SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Nutzungsplanung_Beschriftung
CREATE TABLE arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_bezeichnung varchar(80) NULL
  ,typ_abkuerzung varchar(12) NULL
  ,typ_verbindlichkeit varchar(30) NULL
  ,typ_bemerkungen varchar(240) NULL
  ,typ_kt varchar(60) NULL
  ,typ_code_kommunal varchar(12) NULL
  ,pos_ori integer NULL
  ,pos_hali varchar(255) NULL
  ,pos_vali varchar(255) NULL
  ,pos_groesse varchar(255) NULL
  ,bfs_nr integer NULL
)
;
SELECT AddGeometryColumn('arp_npl_pub','nutzungsplanung_nutzungsplanung_beschriftung','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX nutzngsplnng_ng_bschrftung_pos_idx ON arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung USING GIST ( pos );
COMMENT ON TABLE arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung IS '@iliname SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Nutzungsplanung_Beschriftung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung.typ_bezeichnung IS '@iliname Typ_Bezeichnung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung.typ_abkuerzung IS '@iliname Typ_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung.typ_verbindlichkeit IS '@iliname Typ_Verbindlichkeit';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung.typ_bemerkungen IS '@iliname Typ_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung.typ_code_kommunal IS '@iliname Typ_Code_kommunal';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung.pos IS '@iliname Pos';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung.pos_ori IS '@iliname Pos_Ori';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung.pos_hali IS '@iliname Pos_HAli';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung.pos_vali IS '@iliname Pos_VAli';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung.pos_groesse IS '@iliname Pos_Groesse';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_nutzungsplanung_beschriftung.bfs_nr IS '@iliname BFS_Nr';
-- SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Erschliessung_Flaechenobjekt
CREATE TABLE arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_bezeichnung varchar(80) NULL
  ,typ_abkuerzung varchar(12) NULL
  ,typ_verbindlichkeit varchar(30) NULL
  ,typ_bemerkungen varchar(240) NULL
  ,typ_kt varchar(60) NULL
  ,typ_code_kommunal varchar(12) NULL
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(20) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,dok_id text NULL
  ,dok_titel text NULL
  ,dok_offiziellertitel text NULL
  ,dok_abkuerzung text NULL
  ,dok_offiziellenr text NULL
  ,dok_kanton text NULL
  ,dok_gemeinde text NULL
  ,dok_publiziertab text NULL
  ,dok_rechtsstatus text NULL
  ,dok_textimweb text NULL
  ,dok_bemerkungen text NULL
  ,dok_rechtsvorschrift text NULL
  ,bfs_nr integer NULL
)
;
SELECT AddGeometryColumn('arp_npl_pub','nutzungsplanung_erschliessung_flaechenobjekt','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
CREATE INDEX nutzngsplnng_ng_flchnbjekt_geometrie_idx ON arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt USING GIST ( geometrie );
COMMENT ON TABLE arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt IS '@iliname SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Erschliessung_Flaechenobjekt';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.typ_bezeichnung IS '@iliname Typ_Bezeichnung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.typ_abkuerzung IS '@iliname Typ_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.typ_verbindlichkeit IS '@iliname Typ_Verbindlichkeit';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.typ_bemerkungen IS '@iliname Typ_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.typ_code_kommunal IS '@iliname Typ_Code_kommunal';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.geometrie IS '@iliname Geometrie';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.name_nummer IS '@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.publiziertab IS '@iliname publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.bemerkungen IS '@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.erfasser IS '@iliname Erfasser';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.datum IS '@iliname Datum';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.dok_id IS '@iliname Dok_ID';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.dok_titel IS '@iliname Dok_Titel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.dok_offiziellertitel IS '@iliname Dok_OffiziellerTitel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.dok_abkuerzung IS '@iliname Dok_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.dok_offiziellenr IS '@iliname Dok_OffizielleNr';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.dok_kanton IS '@iliname Dok_Kanton';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.dok_gemeinde IS '@iliname Dok_Gemeinde';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.dok_publiziertab IS '@iliname Dok_publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.dok_rechtsstatus IS '@iliname Dok_Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.dok_textimweb IS '@iliname Dok_TextImWeb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.dok_bemerkungen IS '@iliname Dok_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.dok_rechtsvorschrift IS '@iliname Dok_Rechtsvorschrift';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_flaechenobjekt.bfs_nr IS '@iliname BFS_Nr';
-- SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Erschliessung_Linienobjekt
CREATE TABLE arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_bezeichnung varchar(80) NULL
  ,typ_abkuerzung varchar(12) NULL
  ,typ_verbindlichkeit varchar(30) NULL
  ,typ_bemerkungen varchar(240) NULL
  ,typ_kt varchar(60) NULL
  ,typ_code_kommunal varchar(12) NULL
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(20) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,dok_id text NULL
  ,dok_titel text NULL
  ,dok_offiziellertitel text NULL
  ,dok_abkuerzung text NULL
  ,dok_offiziellenr text NULL
  ,dok_kanton text NULL
  ,dok_gemeinde text NULL
  ,dok_publiziertab text NULL
  ,dok_rechtsstatus text NULL
  ,dok_textimweb text NULL
  ,dok_bemerkungen text NULL
  ,dok_rechtsvorschrift text NULL
  ,bfs_nr integer NULL
)
;
SELECT AddGeometryColumn('arp_npl_pub','nutzungsplanung_erschliessung_linienobjekt','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'LINESTRING',2);
CREATE INDEX nutzngsplnng_ssng_lnnbjekt_geometrie_idx ON arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt USING GIST ( geometrie );
COMMENT ON TABLE arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt IS '@iliname SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Erschliessung_Linienobjekt';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.typ_bezeichnung IS '@iliname Typ_Bezeichnung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.typ_abkuerzung IS '@iliname Typ_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.typ_verbindlichkeit IS '@iliname Typ_Verbindlichkeit';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.typ_bemerkungen IS '@iliname Typ_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.typ_code_kommunal IS '@iliname Typ_Code_kommunal';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.geometrie IS '@iliname Geometrie';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.name_nummer IS '@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.publiziertab IS '@iliname publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.bemerkungen IS '@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.erfasser IS '@iliname Erfasser';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.datum IS '@iliname Datum';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.dok_id IS '@iliname Dok_ID';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.dok_titel IS '@iliname Dok_Titel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.dok_offiziellertitel IS '@iliname Dok_OffiziellerTitel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.dok_abkuerzung IS '@iliname Dok_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.dok_offiziellenr IS '@iliname Dok_OffizielleNr';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.dok_kanton IS '@iliname Dok_Kanton';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.dok_gemeinde IS '@iliname Dok_Gemeinde';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.dok_publiziertab IS '@iliname Dok_publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.dok_rechtsstatus IS '@iliname Dok_Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.dok_textimweb IS '@iliname Dok_TextImWeb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.dok_bemerkungen IS '@iliname Dok_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.dok_rechtsvorschrift IS '@iliname Dok_Rechtsvorschrift';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_linienobjekt.bfs_nr IS '@iliname BFS_Nr';
-- SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Erschliessung_Punktobjekt
CREATE TABLE arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_bezeichnung varchar(80) NULL
  ,typ_abkuerzung varchar(12) NULL
  ,typ_verbindlichkeit varchar(30) NULL
  ,typ_bemerkungen varchar(240) NULL
  ,typ_kt varchar(60) NULL
  ,typ_code_kommunal varchar(12) NULL
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(20) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,dok_id text NULL
  ,dok_titel text NULL
  ,dok_offiziellertitel text NULL
  ,dok_abkuerzung text NULL
  ,dok_offiziellenr text NULL
  ,dok_kanton text NULL
  ,dok_gemeinde text NULL
  ,dok_publiziertab text NULL
  ,dok_rechtsstatus text NULL
  ,dok_textimweb text NULL
  ,dok_bemerkungen text NULL
  ,dok_rechtsvorschrift text NULL
  ,bfs_nr integer NULL
)
;
SELECT AddGeometryColumn('arp_npl_pub','nutzungsplanung_erschliessung_punktobjekt','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX nutzngsplnng_sng_pnktbjekt_geometrie_idx ON arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt USING GIST ( geometrie );
COMMENT ON TABLE arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt IS '@iliname SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Erschliessung_Punktobjekt';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.typ_bezeichnung IS '@iliname Typ_Bezeichnung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.typ_abkuerzung IS '@iliname Typ_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.typ_verbindlichkeit IS '@iliname Typ_Verbindlichkeit';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.typ_bemerkungen IS '@iliname Typ_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.typ_code_kommunal IS '@iliname Typ_Code_kommunal';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.geometrie IS '@iliname Geometrie';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.name_nummer IS '@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.publiziertab IS '@iliname publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.bemerkungen IS '@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.erfasser IS '@iliname Erfasser';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.datum IS '@iliname Datum';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.dok_id IS '@iliname Dok_ID';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.dok_titel IS '@iliname Dok_Titel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.dok_offiziellertitel IS '@iliname Dok_OffiziellerTitel';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.dok_abkuerzung IS '@iliname Dok_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.dok_offiziellenr IS '@iliname Dok_OffizielleNr';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.dok_kanton IS '@iliname Dok_Kanton';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.dok_gemeinde IS '@iliname Dok_Gemeinde';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.dok_publiziertab IS '@iliname Dok_publiziertAb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.dok_rechtsstatus IS '@iliname Dok_Rechtsstatus';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.dok_textimweb IS '@iliname Dok_TextImWeb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.dok_bemerkungen IS '@iliname Dok_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.dok_rechtsvorschrift IS '@iliname Dok_Rechtsvorschrift';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_punktobjekt.bfs_nr IS '@iliname BFS_Nr';
-- SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Erschliessung_Beschriftung
CREATE TABLE arp_npl_pub.nutzungsplanung_erschliessung_beschriftung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_bezeichnung varchar(80) NULL
  ,typ_abkuerzung varchar(12) NULL
  ,typ_verbindlichkeit varchar(30) NULL
  ,typ_bemerkungen varchar(240) NULL
  ,typ_kt varchar(60) NULL
  ,typ_code_kommunal varchar(12) NULL
  ,pos_ori integer NULL
  ,pos_hali varchar(255) NULL
  ,pos_vali varchar(255) NULL
  ,pos_groesse varchar(255) NULL
  ,bfs_nr integer NULL
)
;
SELECT AddGeometryColumn('arp_npl_pub','nutzungsplanung_erschliessung_beschriftung','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX nutzngsplnng_ng_bschrftung_pos_idx1 ON arp_npl_pub.nutzungsplanung_erschliessung_beschriftung USING GIST ( pos );
COMMENT ON TABLE arp_npl_pub.nutzungsplanung_erschliessung_beschriftung IS '@iliname SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.Erschliessung_Beschriftung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_beschriftung.typ_bezeichnung IS '@iliname Typ_Bezeichnung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_beschriftung.typ_abkuerzung IS '@iliname Typ_Abkuerzung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_beschriftung.typ_verbindlichkeit IS '@iliname Typ_Verbindlichkeit';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_beschriftung.typ_bemerkungen IS '@iliname Typ_Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_beschriftung.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_beschriftung.typ_code_kommunal IS '@iliname Typ_Code_kommunal';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_beschriftung.pos IS '@iliname Pos';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_beschriftung.pos_ori IS '@iliname Pos_Ori';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_beschriftung.pos_hali IS '@iliname Pos_HAli';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_beschriftung.pos_vali IS '@iliname Pos_VAli';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_beschriftung.pos_groesse IS '@iliname Pos_Groesse';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_erschliessung_beschriftung.bfs_nr IS '@iliname BFS_Nr';
-- SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.VS_Perimeter_Verfahrensstand
CREATE TABLE arp_npl_pub.nutzungsplanung_vs_perimeter_verfahrensstand (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,planungsart varchar(30) NULL
  ,verfahrensstufe varchar(30) NULL
  ,name_nummer varchar(20) NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,bfs_nr integer NULL
)
;
SELECT AddGeometryColumn('arp_npl_pub','nutzungsplanung_vs_perimeter_verfahrensstand','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
CREATE INDEX nutzngsplnng__vrfhrnsstand_geometrie_idx ON arp_npl_pub.nutzungsplanung_vs_perimeter_verfahrensstand USING GIST ( geometrie );
COMMENT ON TABLE arp_npl_pub.nutzungsplanung_vs_perimeter_verfahrensstand IS '@iliname SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.VS_Perimeter_Verfahrensstand';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_verfahrensstand.geometrie IS '@iliname Geometrie';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_verfahrensstand.planungsart IS '@iliname Planungsart';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_verfahrensstand.verfahrensstufe IS '@iliname Verfahrensstufe';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_verfahrensstand.name_nummer IS '@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_verfahrensstand.bemerkungen IS '@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_verfahrensstand.erfasser IS '@iliname Erfasser';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_verfahrensstand.datum IS '@iliname Datum';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_verfahrensstand.bfs_nr IS '@iliname BFS_Nr';
-- SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.VS_Perimeter_Beschriftung
CREATE TABLE arp_npl_pub.nutzungsplanung_vs_perimeter_beschriftung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,verfahrensstufe varchar(30) NULL
  ,name_nummer varchar(20) NULL
  ,pos_ori integer NULL
  ,pos_hali varchar(255) NULL
  ,pos_vali varchar(255) NULL
  ,pos_groesse varchar(255) NULL
  ,bfs_nr integer NULL
)
;
SELECT AddGeometryColumn('arp_npl_pub','nutzungsplanung_vs_perimeter_beschriftung','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX nutzngsplnng_tr_bschrftung_pos_idx ON arp_npl_pub.nutzungsplanung_vs_perimeter_beschriftung USING GIST ( pos );
COMMENT ON TABLE arp_npl_pub.nutzungsplanung_vs_perimeter_beschriftung IS '@iliname SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.VS_Perimeter_Beschriftung';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_beschriftung.verfahrensstufe IS '@iliname Verfahrensstufe';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_beschriftung.name_nummer IS '@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_beschriftung.pos IS '@iliname Pos';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_beschriftung.pos_ori IS '@iliname Pos_Ori';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_beschriftung.pos_hali IS '@iliname Pos_HAli';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_beschriftung.pos_vali IS '@iliname Pos_VAli';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_beschriftung.pos_groesse IS '@iliname Pos_Groesse';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_vs_perimeter_beschriftung.bfs_nr IS '@iliname BFS_Nr';
-- SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.TransferMetadaten
CREATE TABLE arp_npl_pub.nutzungsplanung_transfermetadaten (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,amt_name varchar(80) NULL
  ,amtimweb varchar(1023) NULL
  ,stand date NULL
  ,lieferdatum date NULL
  ,bemerkungen varchar(240) NULL
  ,bfs_nr integer NULL
)
;
COMMENT ON TABLE arp_npl_pub.nutzungsplanung_transfermetadaten IS '@iliname SO_Nutzungsplanung_Publikation_20170821.Nutzungsplanung.TransferMetadaten';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_transfermetadaten.amt_name IS '@iliname Amt_Name';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_transfermetadaten.amtimweb IS '@iliname AmtImWeb';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_transfermetadaten.stand IS '@iliname Stand';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_transfermetadaten.lieferdatum IS '@iliname Lieferdatum';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_transfermetadaten.bemerkungen IS '@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl_pub.nutzungsplanung_transfermetadaten.bfs_nr IS '@iliname BFS_Nr';
CREATE TABLE arp_npl_pub.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
)
;
CREATE INDEX T_ILI2DB_BASKET_dataset_idx ON arp_npl_pub.t_ili2db_basket ( dataset );
CREATE TABLE arp_npl_pub.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE arp_npl_pub.T_ILI2DB_IMPORT (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NOT NULL
  ,importDate timestamp NOT NULL
  ,importUser varchar(40) NOT NULL
  ,importFile varchar(200) NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_dataset_idx ON arp_npl_pub.t_ili2db_import ( dataset );
COMMENT ON TABLE arp_npl_pub.T_ILI2DB_IMPORT IS 'DEPRECATED, do not use';
CREATE TABLE arp_npl_pub.T_ILI2DB_IMPORT_BASKET (
  T_Id bigint PRIMARY KEY
  ,import bigint NOT NULL
  ,basket bigint NOT NULL
  ,objectCount integer NULL
  ,start_t_id bigint NULL
  ,end_t_id bigint NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_BASKET_import_idx ON arp_npl_pub.t_ili2db_import_basket ( import );
CREATE INDEX T_ILI2DB_IMPORT_BASKET_basket_idx ON arp_npl_pub.t_ili2db_import_basket ( basket );
COMMENT ON TABLE arp_npl_pub.T_ILI2DB_IMPORT_BASKET IS 'DEPRECATED, do not use';
CREATE TABLE arp_npl_pub.T_ILI2DB_IMPORT_OBJECT (
  T_Id bigint PRIMARY KEY
  ,import_basket bigint NOT NULL
  ,class varchar(200) NOT NULL
  ,objectCount integer NULL
  ,start_t_id bigint NULL
  ,end_t_id bigint NULL
)
;
COMMENT ON TABLE arp_npl_pub.T_ILI2DB_IMPORT_OBJECT IS 'DEPRECATED, do not use';
CREATE TABLE arp_npl_pub.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE arp_npl_pub.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(255) NULL
)
;
CREATE TABLE arp_npl_pub.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE arp_npl_pub.T_ILI2DB_MODEL (
  file varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (modelName,iliversion)
)
;
CREATE TABLE arp_npl_pub.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE arp_npl_pub.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,Owner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (SqlName,Owner)
)
;
CREATE TABLE arp_npl_pub.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE arp_npl_pub.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE UNIQUE INDEX T_ILI2DB_DATASET_datasetName_key ON arp_npl_pub.T_ILI2DB_DATASET (datasetName)
;
CREATE UNIQUE INDEX T_ILI2DB_MODEL_modelName_iliversion_key ON arp_npl_pub.T_ILI2DB_MODEL (modelName,iliversion)
;
CREATE UNIQUE INDEX T_ILI2DB_ATTRNAME_SqlName_Owner_key ON arp_npl_pub.T_ILI2DB_ATTRNAME (SqlName,Owner)
;
