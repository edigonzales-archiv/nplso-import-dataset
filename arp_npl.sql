CREATE SEQUENCE arp_npl.t_ili2db_seq;;
-- SO_Nutzungsplanung_20170915.Rechtsvorschriften.Dokument
CREATE TABLE arp_npl.rechtsvorschrften_dokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,dokumentid varchar(16) NULL
  ,titel varchar(80) NULL
  ,offiziellertitel varchar(240) NULL
  ,abkuerzung varchar(10) NULL
  ,offiziellenr varchar(20) NULL
  ,kanton varchar(255) NULL
  ,gemeinde integer NULL
  ,publiziertab date NULL
  ,rechtsstatus varchar(255) NULL
  ,textimweb varchar(1023) NULL
  ,bemerkungen varchar(240) NULL
  ,rechtsvorschrift boolean NULL
)
;
CREATE INDEX rechtsvorschrften_dokument_t_basket_idx ON arp_npl.rechtsvorschrften_dokument ( t_basket );
CREATE INDEX rechtsvorschrften_dokument_t_datasetname_idx ON arp_npl.rechtsvorschrften_dokument ( t_datasetname );
COMMENT ON TABLE arp_npl.rechtsvorschrften_dokument IS '@iliname SO_Nutzungsplanung_20170915.Rechtsvorschriften.Dokument';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_dokument.dokumentid IS 'leer lassen
@iliname DokumentID';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_dokument.titel IS 'Dokumentart z.B. Regierungsratsbeschluss, Zonenreglement, Sonderbauvorschriften usw.
@iliname Titel';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_dokument.offiziellertitel IS 'Vollständiger Titel des Dokuments
@iliname OffiziellerTitel';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_dokument.abkuerzung IS 'Abkürzung der Dokumentart z.B. RRB, ZR, SBV
@iliname Abkuerzung';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_dokument.offiziellenr IS 'OffizielleNr für Entscheid, Plan und Sonderbauvorschriften ist identisch zur Nummerierung im Planregister. OffizielleNr. für Reglemente bestehen aus Gemeindenummer und Kürzel der Reglementart.
@iliname OffizielleNr';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_dokument.kanton IS 'Abkürzung Kanton
@iliname Kanton';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_dokument.gemeinde IS 'Gemeindenummer vom schweizerischen Bundesamt für Statistik (BFS-Nr.)
@iliname Gemeinde';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_dokument.publiziertab IS 'Datum des Regierungsratsbeschlusses
@iliname publiziertAb';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_dokument.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_dokument.textimweb IS 'Relative Internetadresse des Dokuments auf Planregister. D.h. ohne "https://geoweb.so.ch/zonenplaene/Zonenplaene_pdf/"
@iliname TextImWeb';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_dokument.bemerkungen IS 'Erläuternder Text oder Bemerkungen zum Dokument.
@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_dokument.rechtsvorschrift IS '@iliname Rechtsvorschrift';
-- SO_Nutzungsplanung_20170915.Rechtsvorschriften.HinweisWeitereDokumente
CREATE TABLE arp_npl.rechtsvorschrften_hinweisweiteredokumente (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,ursprung bigint NULL
  ,hinweis bigint NULL
)
;
CREATE INDEX rechtsvrschrfhnwswtrdkmnte_t_basket_idx ON arp_npl.rechtsvorschrften_hinweisweiteredokumente ( t_basket );
CREATE INDEX rechtsvrschrfhnwswtrdkmnte_t_datasetname_idx ON arp_npl.rechtsvorschrften_hinweisweiteredokumente ( t_datasetname );
CREATE INDEX rechtsvrschrfhnwswtrdkmnte_ursprung_idx ON arp_npl.rechtsvorschrften_hinweisweiteredokumente ( ursprung );
CREATE INDEX rechtsvrschrfhnwswtrdkmnte_hinweis_idx ON arp_npl.rechtsvorschrften_hinweisweiteredokumente ( hinweis );
COMMENT ON TABLE arp_npl.rechtsvorschrften_hinweisweiteredokumente IS 'Eine Hierarchie der Dokumente kann erfasst werden. Als primäres Dokument gilt in der Regel der RRB. Die anderen Dokumente (z.B. Zonenreglemente) werden dem RRB zugewiesen.
@iliname SO_Nutzungsplanung_20170915.Rechtsvorschriften.HinweisWeitereDokumente';
-- SO_Nutzungsplanung_20170915.Rechtsvorschriften.Plandokument
CREATE TABLE arp_npl.rechtsvorschrften_plandokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,plandokumentid varchar(16) NULL
  ,titel varchar(80) NULL
  ,offiziellertitel varchar(240) NULL
  ,offiziellenr varchar(20) NULL
  ,kanton varchar(255) NULL
  ,gemeinde integer NULL
  ,publiziertab date NULL
  ,rechtsstatus varchar(255) NULL
  ,planimweb varchar(1023) NULL
  ,bemerkungen varchar(240) NULL
)
;
CREATE INDEX rechtsvorschrftn_plndkment_t_basket_idx ON arp_npl.rechtsvorschrften_plandokument ( t_basket );
CREATE INDEX rechtsvorschrftn_plndkment_t_datasetname_idx ON arp_npl.rechtsvorschrften_plandokument ( t_datasetname );
COMMENT ON TABLE arp_npl.rechtsvorschrften_plandokument IS '@iliname SO_Nutzungsplanung_20170915.Rechtsvorschriften.Plandokument';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_plandokument.plandokumentid IS 'leer lassen
@iliname PlandokumentID';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_plandokument.titel IS 'Dokumentart z.B. Erschliessungsplan oder Gestaltungsplan
@iliname Titel';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_plandokument.offiziellertitel IS 'Vollständiger Titel des Dokuments
@iliname OffiziellerTitel';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_plandokument.offiziellenr IS 'OffizielleNr gemäss Planregister
@iliname OffizielleNr';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_plandokument.kanton IS 'Abkürzung Kanton
@iliname Kanton';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_plandokument.gemeinde IS 'Gemeindenummer vom schweizerischen Bundesamt für Statistik (BFS-Nr.)
@iliname Gemeinde';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_plandokument.publiziertab IS 'Datum des Regierungsratsbeschlusses
@iliname publiziertAb';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_plandokument.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_plandokument.planimweb IS 'Relative Internetadresse des Dokuments auf Planregister. D.h. ohne "https://geoweb.so.ch/zonenplaene/Zonenplaene_pdf/"
@iliname PlanImWeb';
COMMENT ON COLUMN arp_npl.rechtsvorschrften_plandokument.bemerkungen IS 'Erläuternder Text oder Bemerkungen zum Plandokument
@iliname Bemerkungen';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Grundnutzung
CREATE TABLE arp_npl.nutzungsplanung_typ_grundnutzung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_kt varchar(255) NULL
  ,code_kommunal varchar(12) NULL
  ,nutzungsziffer decimal(3,2) NULL
  ,nutzungsziffer_art varchar(255) NULL
  ,geschosszahl integer NULL
  ,bezeichnung varchar(80) NULL
  ,abkuerzung varchar(12) NULL
  ,verbindlichkeit varchar(255) NULL
  ,bemerkungen varchar(240) NULL
)
;
CREATE INDEX nutzngsplnng_yp_grndntzung_t_basket_idx ON arp_npl.nutzungsplanung_typ_grundnutzung ( t_basket );
CREATE INDEX nutzngsplnng_yp_grndntzung_t_datasetname_idx ON arp_npl.nutzungsplanung_typ_grundnutzung ( t_datasetname );
COMMENT ON TABLE arp_npl.nutzungsplanung_typ_grundnutzung IS '@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Grundnutzung';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_grundnutzung.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_grundnutzung.code_kommunal IS '4-stelliger kommunaler Code. Wird durch die Gemeinde vergeben. Im Objektkatalog ist definiert, welche Werte des kommunalen Codes erlaubt sind.
@iliname Code_kommunal';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_grundnutzung.nutzungsziffer IS 'Zahlenwert nach Zonenreglement der Gemeinde (0.05 = 5%).
@iliname Nutzungsziffer';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_grundnutzung.nutzungsziffer_art IS '@iliname Nutzungsziffer_Art';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_grundnutzung.geschosszahl IS 'Maximal zulässige Anzahl Geschosse
@iliname Geschosszahl';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_grundnutzung.bezeichnung IS 'Name der Grundnutzung, überlagernden Objekts oder Erschliessung. Wird von der Gemeinde definiert.
@iliname Bezeichnung';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_grundnutzung.abkuerzung IS 'Abkürzung der Bezeichung. Kann von der Gemeinde vergeben werden. Falls keine Abkürzung vorhanden ist bleit das Feld leer.
@iliname Abkuerzung';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_grundnutzung.verbindlichkeit IS '@iliname Verbindlichkeit';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_grundnutzung.bemerkungen IS 'Erläuternder Text zum Typ
@iliname Bemerkungen';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Grundnutzung_Dokument
CREATE TABLE arp_npl.nutzungsplanung_typ_grundnutzung_dokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,typ_grundnutzung bigint NULL
  ,dokument bigint NULL
)
;
CREATE INDEX nutzngsplnng_dntzng_dkment_t_basket_idx ON arp_npl.nutzungsplanung_typ_grundnutzung_dokument ( t_basket );
CREATE INDEX nutzngsplnng_dntzng_dkment_t_datasetname_idx ON arp_npl.nutzungsplanung_typ_grundnutzung_dokument ( t_datasetname );
CREATE INDEX nutzngsplnng_dntzng_dkment_typ_grundnutzung_idx ON arp_npl.nutzungsplanung_typ_grundnutzung_dokument ( typ_grundnutzung );
CREATE INDEX nutzngsplnng_dntzng_dkment_dokument_idx ON arp_npl.nutzungsplanung_typ_grundnutzung_dokument ( dokument );
COMMENT ON TABLE arp_npl.nutzungsplanung_typ_grundnutzung_dokument IS 'Siehe in der Arbeitshilfe
@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Grundnutzung_Dokument';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Grundnutzung
CREATE TABLE arp_npl.nutzungsplanung_grundnutzung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(255) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,dokument bigint NULL
  ,typ_grundnutzung bigint NULL
)
;
SELECT AddGeometryColumn('arp_npl','nutzungsplanung_grundnutzung','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
CREATE INDEX nutzungsplanung_grndntzung_t_basket_idx ON arp_npl.nutzungsplanung_grundnutzung ( t_basket );
CREATE INDEX nutzungsplanung_grndntzung_t_datasetname_idx ON arp_npl.nutzungsplanung_grundnutzung ( t_datasetname );
CREATE INDEX nutzungsplanung_grndntzung_geometrie_idx ON arp_npl.nutzungsplanung_grundnutzung USING GIST ( geometrie );
CREATE INDEX nutzungsplanung_grndntzung_dokument_idx ON arp_npl.nutzungsplanung_grundnutzung ( dokument );
CREATE INDEX nutzungsplanung_grndntzung_typ_grundnutzung_idx ON arp_npl.nutzungsplanung_grundnutzung ( typ_grundnutzung );
COMMENT ON TABLE arp_npl.nutzungsplanung_grundnutzung IS '@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Grundnutzung';
COMMENT ON COLUMN arp_npl.nutzungsplanung_grundnutzung.geometrie IS 'Geometrie als Gebietseinteilung. Überlappungen bei Radien mit einer
Pfeilhöhe <1 mm werden toleriert.
@iliname Geometrie';
COMMENT ON COLUMN arp_npl.nutzungsplanung_grundnutzung.name_nummer IS 'Leer lassen
@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl.nutzungsplanung_grundnutzung.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl.nutzungsplanung_grundnutzung.publiziertab IS 'Datum des Regierungsratsbeschlusses
@iliname publiziertAb';
COMMENT ON COLUMN arp_npl.nutzungsplanung_grundnutzung.bemerkungen IS 'Bemerkung zu der einzelnen Grundnutzungsgeometrie.
@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl.nutzungsplanung_grundnutzung.erfasser IS 'Name der Firma die die Daten erfasst hat.
@iliname Erfasser';
COMMENT ON COLUMN arp_npl.nutzungsplanung_grundnutzung.datum IS 'Datum der Erfassung
@iliname Datum';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Grundnutzung_Pos
CREATE TABLE arp_npl.nutzungsplanung_grundnutzung_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,grundnutzung bigint NULL
  ,ori integer NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
)
;
SELECT AddGeometryColumn('arp_npl','nutzungsplanung_grundnutzung_pos','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX nutzngsplnng_grndntzng_pos_t_basket_idx ON arp_npl.nutzungsplanung_grundnutzung_pos ( t_basket );
CREATE INDEX nutzngsplnng_grndntzng_pos_t_datasetname_idx ON arp_npl.nutzungsplanung_grundnutzung_pos ( t_datasetname );
CREATE INDEX nutzngsplnng_grndntzng_pos_grundnutzung_idx ON arp_npl.nutzungsplanung_grundnutzung_pos ( grundnutzung );
CREATE INDEX nutzngsplnng_grndntzng_pos_pos_idx ON arp_npl.nutzungsplanung_grundnutzung_pos USING GIST ( pos );
COMMENT ON TABLE arp_npl.nutzungsplanung_grundnutzung_pos IS '@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Grundnutzung_Pos';
COMMENT ON COLUMN arp_npl.nutzungsplanung_grundnutzung_pos.pos IS 'Position für die Beschriftung
@iliname Pos';
COMMENT ON COLUMN arp_npl.nutzungsplanung_grundnutzung_pos.ori IS 'Orientierung der Beschriftung in Gon. 0 gon = Horizontal
@iliname Ori';
COMMENT ON COLUMN arp_npl.nutzungsplanung_grundnutzung_pos.hali IS 'Mit dem horizontalen Alignment wird festgelegt, ob die Position auf dem linken oder rechten Rand des Textes oder in der
Textmitte liegt.
@iliname HAli';
COMMENT ON COLUMN arp_npl.nutzungsplanung_grundnutzung_pos.vali IS 'Das vertikale Alignment legt die Position in Richtung der Texthöhe fest.
@iliname VAli';
COMMENT ON COLUMN arp_npl.nutzungsplanung_grundnutzung_pos.groesse IS 'Grösse der Beschriftung
@iliname Groesse';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Ueberlagernd_Flaeche
CREATE TABLE arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_kt varchar(255) NULL
  ,code_kommunal varchar(12) NULL
  ,bezeichnung varchar(80) NULL
  ,abkuerzung varchar(12) NULL
  ,verbindlichkeit varchar(255) NULL
  ,bemerkungen varchar(240) NULL
)
;
CREATE INDEX nutzngsplnng_brlgrnd_flche_t_basket_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche ( t_basket );
CREATE INDEX nutzngsplnng_brlgrnd_flche_t_datasetname_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche ( t_datasetname );
COMMENT ON TABLE arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche IS '@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Ueberlagernd_Flaeche';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche.code_kommunal IS '4-stelliger kommunaler Code. Wird durch die Gemeinde vergeben. Im Objektkatalog ist definiert, welche Werte des kommunalen Codes erlaubt sind.
@iliname Code_kommunal';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche.bezeichnung IS 'Name der Grundnutzung, überlagernden Objekts oder Erschliessung. Wird von der Gemeinde definiert.
@iliname Bezeichnung';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche.abkuerzung IS 'Abkürzung der Bezeichung. Kann von der Gemeinde vergeben werden. Falls keine Abkürzung vorhanden ist bleit das Feld leer.
@iliname Abkuerzung';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche.verbindlichkeit IS '@iliname Verbindlichkeit';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche.bemerkungen IS 'Erläuternder Text zum Typ
@iliname Bemerkungen';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Ueberlagernd_Flaeche_Dokument
CREATE TABLE arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche_dokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,typ_ueberlagernd_flaeche bigint NULL
  ,dokument bigint NULL
)
;
CREATE INDEX nutzngsplnng_d_flch_dkment_t_basket_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche_dokument ( t_basket );
CREATE INDEX nutzngsplnng_d_flch_dkment_t_datasetname_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche_dokument ( t_datasetname );
CREATE INDEX nutzngsplnng_d_flch_dkment_typ_ueberlagernd_flaeche_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche_dokument ( typ_ueberlagernd_flaeche );
CREATE INDEX nutzngsplnng_d_flch_dkment_dokument_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche_dokument ( dokument );
COMMENT ON TABLE arp_npl.nutzungsplanung_typ_ueberlagernd_flaeche_dokument IS 'Siehe in der Arbeitshilfe
@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Ueberlagernd_Flaeche_Dokument';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Ueberlagernd_Flaeche
CREATE TABLE arp_npl.nutzungsplanung_ueberlagernd_flaeche (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(255) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,dokument bigint NULL
  ,plandokument bigint NULL
  ,typ_ueberlagernd_flaeche bigint NULL
)
;
SELECT AddGeometryColumn('arp_npl','nutzungsplanung_ueberlagernd_flaeche','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
CREATE INDEX nutzngsplnng_brlgrnd_flche_t_basket_idx1 ON arp_npl.nutzungsplanung_ueberlagernd_flaeche ( t_basket );
CREATE INDEX nutzngsplnng_brlgrnd_flche_t_datasetname_idx1 ON arp_npl.nutzungsplanung_ueberlagernd_flaeche ( t_datasetname );
CREATE INDEX nutzngsplnng_brlgrnd_flche_geometrie_idx ON arp_npl.nutzungsplanung_ueberlagernd_flaeche USING GIST ( geometrie );
CREATE INDEX nutzngsplnng_brlgrnd_flche_dokument_idx ON arp_npl.nutzungsplanung_ueberlagernd_flaeche ( dokument );
CREATE INDEX nutzngsplnng_brlgrnd_flche_plandokument_idx ON arp_npl.nutzungsplanung_ueberlagernd_flaeche ( plandokument );
CREATE INDEX nutzngsplnng_brlgrnd_flche_typ_ueberlagernd_flaeche_idx ON arp_npl.nutzungsplanung_ueberlagernd_flaeche ( typ_ueberlagernd_flaeche );
COMMENT ON TABLE arp_npl.nutzungsplanung_ueberlagernd_flaeche IS '@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Ueberlagernd_Flaeche';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_flaeche.geometrie IS 'Fläche, welche die Grundnutzung überlagert.
@iliname Geometrie';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_flaeche.name_nummer IS 'leer lassen
@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_flaeche.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_flaeche.publiziertab IS 'Datum des Regierungsratsbeschlusses
@iliname publiziertAb';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_flaeche.bemerkungen IS 'Bemerkung zu der einzelnen überlagernden Objekte.
@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_flaeche.erfasser IS 'Name der Firma die die Daten erfasst hat.
@iliname Erfasser';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_flaeche.datum IS 'Datum der Erfassung
@iliname Datum';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Ueberlagernd_Flaeche_Pos
CREATE TABLE arp_npl.nutzungsplanung_ueberlagernd_flaeche_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,ueberlagernd_flaeche bigint NULL
  ,ori integer NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
)
;
SELECT AddGeometryColumn('arp_npl','nutzungsplanung_ueberlagernd_flaeche_pos','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX nutzngsplnng_grnd_flch_pos_t_basket_idx ON arp_npl.nutzungsplanung_ueberlagernd_flaeche_pos ( t_basket );
CREATE INDEX nutzngsplnng_grnd_flch_pos_t_datasetname_idx ON arp_npl.nutzungsplanung_ueberlagernd_flaeche_pos ( t_datasetname );
CREATE INDEX nutzngsplnng_grnd_flch_pos_ueberlagernd_flaeche_idx ON arp_npl.nutzungsplanung_ueberlagernd_flaeche_pos ( ueberlagernd_flaeche );
CREATE INDEX nutzngsplnng_grnd_flch_pos_pos_idx ON arp_npl.nutzungsplanung_ueberlagernd_flaeche_pos USING GIST ( pos );
COMMENT ON TABLE arp_npl.nutzungsplanung_ueberlagernd_flaeche_pos IS '@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Ueberlagernd_Flaeche_Pos';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_flaeche_pos.pos IS 'Position für die Beschriftung
@iliname Pos';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_flaeche_pos.ori IS 'Orientierung der Beschriftung in Gon. 0 gon = Horizontal
@iliname Ori';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_flaeche_pos.hali IS 'Mit dem horizontalen Alignment wird festgelegt, ob die Position auf dem linken oder rechten Rand des Textes oder in der
Textmitte liegt.
@iliname HAli';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_flaeche_pos.vali IS 'Das vertikale Alignment legt die Position in Richtung der Texthöhe fest.
@iliname VAli';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_flaeche_pos.groesse IS 'Grösse der Beschriftung
@iliname Groesse';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Ueberlagernd_Linie
CREATE TABLE arp_npl.nutzungsplanung_typ_ueberlagernd_linie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_kt varchar(255) NULL
  ,code_kommunal varchar(12) NULL
  ,bezeichnung varchar(80) NULL
  ,abkuerzung varchar(12) NULL
  ,verbindlichkeit varchar(255) NULL
  ,bemerkungen varchar(240) NULL
)
;
CREATE INDEX nutzngsplnng__brlgrnd_lnie_t_basket_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_linie ( t_basket );
CREATE INDEX nutzngsplnng__brlgrnd_lnie_t_datasetname_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_linie ( t_datasetname );
COMMENT ON TABLE arp_npl.nutzungsplanung_typ_ueberlagernd_linie IS '@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Ueberlagernd_Linie';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_linie.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_linie.code_kommunal IS '4-stelliger kommunaler Code. Wird durch die Gemeinde vergeben. Im Objektkatalog ist definiert, welche Werte des kommunalen Codes erlaubt sind.
@iliname Code_kommunal';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_linie.bezeichnung IS 'Name der Grundnutzung, überlagernden Objekts oder Erschliessung. Wird von der Gemeinde definiert.
@iliname Bezeichnung';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_linie.abkuerzung IS 'Abkürzung der Bezeichung. Kann von der Gemeinde vergeben werden. Falls keine Abkürzung vorhanden ist bleit das Feld leer.
@iliname Abkuerzung';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_linie.verbindlichkeit IS '@iliname Verbindlichkeit';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_linie.bemerkungen IS 'Erläuternder Text zum Typ
@iliname Bemerkungen';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Ueberlagernd_Linie_Dokument
CREATE TABLE arp_npl.nutzungsplanung_typ_ueberlagernd_linie_dokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,typ_ueberlagernd_linie bigint NULL
  ,dokument bigint NULL
)
;
CREATE INDEX nutzngsplnng_rnd_ln_dkment_t_basket_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_linie_dokument ( t_basket );
CREATE INDEX nutzngsplnng_rnd_ln_dkment_t_datasetname_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_linie_dokument ( t_datasetname );
CREATE INDEX nutzngsplnng_rnd_ln_dkment_typ_ueberlagernd_linie_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_linie_dokument ( typ_ueberlagernd_linie );
CREATE INDEX nutzngsplnng_rnd_ln_dkment_dokument_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_linie_dokument ( dokument );
COMMENT ON TABLE arp_npl.nutzungsplanung_typ_ueberlagernd_linie_dokument IS 'Siehe in der Arbeitshilfe
@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Ueberlagernd_Linie_Dokument';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Ueberlagernd_Linie
CREATE TABLE arp_npl.nutzungsplanung_ueberlagernd_linie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(255) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,dokument bigint NULL
  ,typ_ueberlagernd_linie bigint NULL
)
;
SELECT AddGeometryColumn('arp_npl','nutzungsplanung_ueberlagernd_linie','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'LINESTRING',2);
CREATE INDEX nutzungsplnng_brlgrnd_lnie_t_basket_idx ON arp_npl.nutzungsplanung_ueberlagernd_linie ( t_basket );
CREATE INDEX nutzungsplnng_brlgrnd_lnie_t_datasetname_idx ON arp_npl.nutzungsplanung_ueberlagernd_linie ( t_datasetname );
CREATE INDEX nutzungsplnng_brlgrnd_lnie_geometrie_idx ON arp_npl.nutzungsplanung_ueberlagernd_linie USING GIST ( geometrie );
CREATE INDEX nutzungsplnng_brlgrnd_lnie_dokument_idx ON arp_npl.nutzungsplanung_ueberlagernd_linie ( dokument );
CREATE INDEX nutzungsplnng_brlgrnd_lnie_typ_ueberlagernd_linie_idx ON arp_npl.nutzungsplanung_ueberlagernd_linie ( typ_ueberlagernd_linie );
COMMENT ON TABLE arp_npl.nutzungsplanung_ueberlagernd_linie IS '@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Ueberlagernd_Linie';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_linie.geometrie IS 'Linie, welche die Grundnutzung überlagert.
@iliname Geometrie';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_linie.name_nummer IS 'leer lassen
@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_linie.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_linie.publiziertab IS 'Datum des Regierungsratsbeschlusses
@iliname publiziertAb';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_linie.bemerkungen IS 'Bemerkung zu der einzelnen überlagernden Objekte.
@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_linie.erfasser IS 'Name der Firma die die Daten erfasst hat.
@iliname Erfasser';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_linie.datum IS 'Datum der Erfassung
@iliname Datum';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Ueberlagernd_Linie_Pos
CREATE TABLE arp_npl.nutzungsplanung_ueberlagernd_linie_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,ueberlagernd_linie bigint NULL
  ,ori integer NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
)
;
SELECT AddGeometryColumn('arp_npl','nutzungsplanung_ueberlagernd_linie_pos','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX nutzngsplnng_rlgrnd_ln_pos_t_basket_idx ON arp_npl.nutzungsplanung_ueberlagernd_linie_pos ( t_basket );
CREATE INDEX nutzngsplnng_rlgrnd_ln_pos_t_datasetname_idx ON arp_npl.nutzungsplanung_ueberlagernd_linie_pos ( t_datasetname );
CREATE INDEX nutzngsplnng_rlgrnd_ln_pos_ueberlagernd_linie_idx ON arp_npl.nutzungsplanung_ueberlagernd_linie_pos ( ueberlagernd_linie );
CREATE INDEX nutzngsplnng_rlgrnd_ln_pos_pos_idx ON arp_npl.nutzungsplanung_ueberlagernd_linie_pos USING GIST ( pos );
COMMENT ON TABLE arp_npl.nutzungsplanung_ueberlagernd_linie_pos IS '@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Ueberlagernd_Linie_Pos';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_linie_pos.pos IS 'Position für die Beschriftung
@iliname Pos';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_linie_pos.ori IS 'Orientierung der Beschriftung in Gon. 0 gon = Horizontal
@iliname Ori';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_linie_pos.hali IS 'Mit dem horizontalen Alignment wird festgelegt, ob die Position auf dem linken oder rechten Rand des Textes oder in der
Textmitte liegt.
@iliname HAli';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_linie_pos.vali IS 'Das vertikale Alignment legt die Position in Richtung der Texthöhe fest.
@iliname VAli';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_linie_pos.groesse IS 'Grösse der Beschriftung
@iliname Groesse';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Ueberlagernd_Punkt
CREATE TABLE arp_npl.nutzungsplanung_typ_ueberlagernd_punkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_kt varchar(255) NULL
  ,code_kommunal varchar(12) NULL
  ,bezeichnung varchar(80) NULL
  ,abkuerzung varchar(12) NULL
  ,verbindlichkeit varchar(255) NULL
  ,bemerkungen varchar(240) NULL
)
;
CREATE INDEX nutzngsplnng__brlgrnd_pnkt_t_basket_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_punkt ( t_basket );
CREATE INDEX nutzngsplnng__brlgrnd_pnkt_t_datasetname_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_punkt ( t_datasetname );
COMMENT ON TABLE arp_npl.nutzungsplanung_typ_ueberlagernd_punkt IS '@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Ueberlagernd_Punkt';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_punkt.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_punkt.code_kommunal IS '4-stelliger kommunaler Code. Wird durch die Gemeinde vergeben. Im Objektkatalog ist definiert, welche Werte des kommunalen Codes erlaubt sind.
@iliname Code_kommunal';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_punkt.bezeichnung IS 'Name der Grundnutzung, überlagernden Objekts oder Erschliessung. Wird von der Gemeinde definiert.
@iliname Bezeichnung';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_punkt.abkuerzung IS 'Abkürzung der Bezeichung. Kann von der Gemeinde vergeben werden. Falls keine Abkürzung vorhanden ist bleit das Feld leer.
@iliname Abkuerzung';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_punkt.verbindlichkeit IS '@iliname Verbindlichkeit';
COMMENT ON COLUMN arp_npl.nutzungsplanung_typ_ueberlagernd_punkt.bemerkungen IS 'Erläuternder Text zum Typ
@iliname Bemerkungen';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Ueberlagernd_Punkt_Dokument
CREATE TABLE arp_npl.nutzungsplanung_typ_ueberlagernd_punkt_dokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,typ_ueberlagernd_punkt bigint NULL
  ,dokument bigint NULL
)
;
CREATE INDEX nutzngsplnng_d_pnkt_dkment_t_basket_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_punkt_dokument ( t_basket );
CREATE INDEX nutzngsplnng_d_pnkt_dkment_t_datasetname_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_punkt_dokument ( t_datasetname );
CREATE INDEX nutzngsplnng_d_pnkt_dkment_typ_ueberlagernd_punkt_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_punkt_dokument ( typ_ueberlagernd_punkt );
CREATE INDEX nutzngsplnng_d_pnkt_dkment_dokument_idx ON arp_npl.nutzungsplanung_typ_ueberlagernd_punkt_dokument ( dokument );
COMMENT ON TABLE arp_npl.nutzungsplanung_typ_ueberlagernd_punkt_dokument IS 'Siehe in der Arbeitshilfe
@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Typ_Ueberlagernd_Punkt_Dokument';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Ueberlagernd_Punkt
CREATE TABLE arp_npl.nutzungsplanung_ueberlagernd_punkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(255) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,dokument bigint NULL
  ,typ_ueberlagernd_punkt bigint NULL
)
;
SELECT AddGeometryColumn('arp_npl','nutzungsplanung_ueberlagernd_punkt','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX nutzungsplnng_brlgrnd_pnkt_t_basket_idx ON arp_npl.nutzungsplanung_ueberlagernd_punkt ( t_basket );
CREATE INDEX nutzungsplnng_brlgrnd_pnkt_t_datasetname_idx ON arp_npl.nutzungsplanung_ueberlagernd_punkt ( t_datasetname );
CREATE INDEX nutzungsplnng_brlgrnd_pnkt_geometrie_idx ON arp_npl.nutzungsplanung_ueberlagernd_punkt USING GIST ( geometrie );
CREATE INDEX nutzungsplnng_brlgrnd_pnkt_dokument_idx ON arp_npl.nutzungsplanung_ueberlagernd_punkt ( dokument );
CREATE INDEX nutzungsplnng_brlgrnd_pnkt_typ_ueberlagernd_punkt_idx ON arp_npl.nutzungsplanung_ueberlagernd_punkt ( typ_ueberlagernd_punkt );
COMMENT ON TABLE arp_npl.nutzungsplanung_ueberlagernd_punkt IS '@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Ueberlagernd_Punkt';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_punkt.geometrie IS 'Punkt, welche die Grundnutzung überlagert.
@iliname Geometrie';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_punkt.name_nummer IS 'leer lassen
@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_punkt.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_punkt.publiziertab IS 'Datum des Regierungsratsbeschlusses
@iliname publiziertAb';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_punkt.bemerkungen IS 'Bemerkung zu der einzelnen überlagernden Objekte.
@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_punkt.erfasser IS 'Name der Firma die die Daten erfasst hat.
@iliname Erfasser';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_punkt.datum IS 'Datum der Erfassung
@iliname Datum';
-- SO_Nutzungsplanung_20170915.Nutzungsplanung.Ueberlagernd_Punkt_Pos
CREATE TABLE arp_npl.nutzungsplanung_ueberlagernd_punkt_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,ueberlagernd_punkt bigint NULL
  ,ori integer NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
)
;
SELECT AddGeometryColumn('arp_npl','nutzungsplanung_ueberlagernd_punkt_pos','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX nutzngsplnng_grnd_pnkt_pos_t_basket_idx ON arp_npl.nutzungsplanung_ueberlagernd_punkt_pos ( t_basket );
CREATE INDEX nutzngsplnng_grnd_pnkt_pos_t_datasetname_idx ON arp_npl.nutzungsplanung_ueberlagernd_punkt_pos ( t_datasetname );
CREATE INDEX nutzngsplnng_grnd_pnkt_pos_ueberlagernd_punkt_idx ON arp_npl.nutzungsplanung_ueberlagernd_punkt_pos ( ueberlagernd_punkt );
CREATE INDEX nutzngsplnng_grnd_pnkt_pos_pos_idx ON arp_npl.nutzungsplanung_ueberlagernd_punkt_pos USING GIST ( pos );
COMMENT ON TABLE arp_npl.nutzungsplanung_ueberlagernd_punkt_pos IS '@iliname SO_Nutzungsplanung_20170915.Nutzungsplanung.Ueberlagernd_Punkt_Pos';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_punkt_pos.pos IS 'Position für die Beschriftung
@iliname Pos';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_punkt_pos.ori IS 'Orientierung der Beschriftung in Gon. 0 gon = Horizontal
@iliname Ori';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_punkt_pos.hali IS 'Mit dem horizontalen Alignment wird festgelegt, ob die Position auf dem linken oder rechten Rand des Textes oder in der
Textmitte liegt.
@iliname HAli';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_punkt_pos.vali IS 'Das vertikale Alignment legt die Position in Richtung der Texthöhe fest.
@iliname VAli';
COMMENT ON COLUMN arp_npl.nutzungsplanung_ueberlagernd_punkt_pos.groesse IS 'Grösse der Beschriftung
@iliname Groesse';
-- SO_Nutzungsplanung_20170915.Erschliessungsplanung.Typ_Erschliessung_Flaechenobjekt
CREATE TABLE arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_kt varchar(255) NULL
  ,code_kommunal varchar(12) NULL
  ,bezeichnung varchar(80) NULL
  ,abkuerzung varchar(12) NULL
  ,verbindlichkeit varchar(255) NULL
  ,bemerkungen varchar(240) NULL
)
;
CREATE INDEX erschlssngsplng_flchnbjekt_t_basket_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt ( t_basket );
CREATE INDEX erschlssngsplng_flchnbjekt_t_datasetname_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt ( t_datasetname );
COMMENT ON TABLE arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt IS '@iliname SO_Nutzungsplanung_20170915.Erschliessungsplanung.Typ_Erschliessung_Flaechenobjekt';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt.code_kommunal IS '4-stelliger kommunaler Code. Wird durch die Gemeinde vergeben. Im Objektkatalog ist definiert, welche Werte des kommunalen Codes erlaubt sind.
@iliname Code_kommunal';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt.bezeichnung IS 'Name der Grundnutzung, überlagernden Objekts oder Erschliessung. Wird von der Gemeinde definiert.
@iliname Bezeichnung';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt.abkuerzung IS 'Abkürzung der Bezeichung. Kann von der Gemeinde vergeben werden. Falls keine Abkürzung vorhanden ist bleit das Feld leer.
@iliname Abkuerzung';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt.verbindlichkeit IS '@iliname Verbindlichkeit';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt.bemerkungen IS 'Erläuternder Text zum Typ
@iliname Bemerkungen';
-- SO_Nutzungsplanung_20170915.Erschliessungsplanung.Typ_Erschliessung_Flaechenobjekt_Dokument
CREATE TABLE arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt_dokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,typ_erschliessung_flaechenobjekt bigint NULL
  ,dokument bigint NULL
)
;
CREATE INDEX erschlssngsplhnbjkt_dkment_t_basket_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt_dokument ( t_basket );
CREATE INDEX erschlssngsplhnbjkt_dkment_t_datasetname_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt_dokument ( t_datasetname );
CREATE INDEX erschlssngsplhnbjkt_dkment_typ_erschlissng_flchnbjekt_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt_dokument ( typ_erschliessung_flaechenobjekt );
CREATE INDEX erschlssngsplhnbjkt_dkment_dokument_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt_dokument ( dokument );
COMMENT ON TABLE arp_npl.erschlssngsplnung_typ_erschliessung_flaechenobjekt_dokument IS 'Siehe in der Arbeitshilfe
@iliname SO_Nutzungsplanung_20170915.Erschliessungsplanung.Typ_Erschliessung_Flaechenobjekt_Dokument';
-- SO_Nutzungsplanung_20170915.Erschliessungsplanung.Erschliessung_Flaechenobjekt
CREATE TABLE arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(255) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,typ_erschliessung_flaechenobjekt bigint NULL
)
;
SELECT AddGeometryColumn('arp_npl','erschlssngsplnung_erschliessung_flaechenobjekt','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
CREATE INDEX erschlssngsplng_flchnbjekt_t_basket_idx1 ON arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt ( t_basket );
CREATE INDEX erschlssngsplng_flchnbjekt_t_datasetname_idx1 ON arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt ( t_datasetname );
CREATE INDEX erschlssngsplng_flchnbjekt_geometrie_idx ON arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt USING GIST ( geometrie );
CREATE INDEX erschlssngsplng_flchnbjekt_typ_erschlissng_flchnbjekt_idx ON arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt ( typ_erschliessung_flaechenobjekt );
COMMENT ON TABLE arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt IS '@iliname SO_Nutzungsplanung_20170915.Erschliessungsplanung.Erschliessung_Flaechenobjekt';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt.geometrie IS '@iliname Geometrie';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt.name_nummer IS 'leer lassen
@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt.publiziertab IS 'Datum des Regierungsratsbeschlusses
@iliname publiziertAb';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt.bemerkungen IS 'Bemerkung zu den einzelnen Erschliessungsobjekten.
@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt.erfasser IS 'Name der Firma die die Daten erfasst hat.
@iliname Erfasser';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt.datum IS 'Datum der Erfassung
@iliname Datum';
-- SO_Nutzungsplanung_20170915.Erschliessungsplanung.Erschliessung_Flaechenobjekt_Pos
CREATE TABLE arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,erschliessung_flaechenobjekt bigint NULL
  ,ori integer NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
)
;
SELECT AddGeometryColumn('arp_npl','erschlssngsplnung_erschliessung_flaechenobjekt_pos','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX erschlssngsplflchnbjkt_pos_t_basket_idx ON arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt_pos ( t_basket );
CREATE INDEX erschlssngsplflchnbjkt_pos_t_datasetname_idx ON arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt_pos ( t_datasetname );
CREATE INDEX erschlssngsplflchnbjkt_pos_erschliessung_flaechnbjekt_idx ON arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt_pos ( erschliessung_flaechenobjekt );
CREATE INDEX erschlssngsplflchnbjkt_pos_pos_idx ON arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt_pos USING GIST ( pos );
COMMENT ON TABLE arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt_pos IS '@iliname SO_Nutzungsplanung_20170915.Erschliessungsplanung.Erschliessung_Flaechenobjekt_Pos';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt_pos.pos IS 'Position für die Beschriftung
@iliname Pos';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt_pos.ori IS 'Orientierung der Beschriftung in Gon. 0 gon = Horizontal
@iliname Ori';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt_pos.hali IS 'Mit dem horizontalen Alignment wird festgelegt, ob die Position auf dem linken oder rechten Rand des Textes oder in der
Textmitte liegt.
@iliname HAli';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt_pos.vali IS 'Das vertikale Alignment legt die Position in Richtung der Texthöhe fest.
@iliname VAli';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_flaechenobjekt_pos.groesse IS 'Grösse der Beschriftung
@iliname Groesse';
-- SO_Nutzungsplanung_20170915.Erschliessungsplanung.Typ_Erschliessung_Linienobjekt
CREATE TABLE arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_kt varchar(255) NULL
  ,code_kommunal varchar(12) NULL
  ,bezeichnung varchar(80) NULL
  ,abkuerzung varchar(12) NULL
  ,verbindlichkeit varchar(255) NULL
  ,bemerkungen varchar(240) NULL
)
;
CREATE INDEX erschlssngsplssng_lnnbjekt_t_basket_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt ( t_basket );
CREATE INDEX erschlssngsplssng_lnnbjekt_t_datasetname_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt ( t_datasetname );
COMMENT ON TABLE arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt IS '@iliname SO_Nutzungsplanung_20170915.Erschliessungsplanung.Typ_Erschliessung_Linienobjekt';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt.code_kommunal IS '4-stelliger kommunaler Code. Wird durch die Gemeinde vergeben. Im Objektkatalog ist definiert, welche Werte des kommunalen Codes erlaubt sind.
@iliname Code_kommunal';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt.bezeichnung IS 'Name der Grundnutzung, überlagernden Objekts oder Erschliessung. Wird von der Gemeinde definiert.
@iliname Bezeichnung';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt.abkuerzung IS 'Abkürzung der Bezeichung. Kann von der Gemeinde vergeben werden. Falls keine Abkürzung vorhanden ist bleit das Feld leer.
@iliname Abkuerzung';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt.verbindlichkeit IS '@iliname Verbindlichkeit';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt.bemerkungen IS 'Erläuternder Text zum Typ
@iliname Bemerkungen';
-- SO_Nutzungsplanung_20170915.Erschliessungsplanung.Typ_Erschliessung_Linienobjekt_Dokument
CREATE TABLE arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt_dokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,typ_erschliessung_linienobjekt bigint NULL
  ,dokument bigint NULL
)
;
CREATE INDEX erschlssngsplnnbjkt_dkment_t_basket_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt_dokument ( t_basket );
CREATE INDEX erschlssngsplnnbjkt_dkment_t_datasetname_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt_dokument ( t_datasetname );
CREATE INDEX erschlssngsplnnbjkt_dkment_typ_erschliessung_lnnbjekt_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt_dokument ( typ_erschliessung_linienobjekt );
CREATE INDEX erschlssngsplnnbjkt_dkment_dokument_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt_dokument ( dokument );
COMMENT ON TABLE arp_npl.erschlssngsplnung_typ_erschliessung_linienobjekt_dokument IS 'Siehe in der Arbeitshilfe
@iliname SO_Nutzungsplanung_20170915.Erschliessungsplanung.Typ_Erschliessung_Linienobjekt_Dokument';
-- SO_Nutzungsplanung_20170915.Erschliessungsplanung.Erschliessung_Linienobjekt
CREATE TABLE arp_npl.erschlssngsplnung_erschliessung_linienobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(255) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,typ_erschliessung_linienobjekt bigint NULL
)
;
SELECT AddGeometryColumn('arp_npl','erschlssngsplnung_erschliessung_linienobjekt','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'LINESTRING',2);
CREATE INDEX erschlssngsplssng_lnnbjekt_t_basket_idx1 ON arp_npl.erschlssngsplnung_erschliessung_linienobjekt ( t_basket );
CREATE INDEX erschlssngsplssng_lnnbjekt_t_datasetname_idx1 ON arp_npl.erschlssngsplnung_erschliessung_linienobjekt ( t_datasetname );
CREATE INDEX erschlssngsplssng_lnnbjekt_geometrie_idx ON arp_npl.erschlssngsplnung_erschliessung_linienobjekt USING GIST ( geometrie );
CREATE INDEX erschlssngsplssng_lnnbjekt_typ_erschliessung_lnnbjekt_idx ON arp_npl.erschlssngsplnung_erschliessung_linienobjekt ( typ_erschliessung_linienobjekt );
COMMENT ON TABLE arp_npl.erschlssngsplnung_erschliessung_linienobjekt IS '@iliname SO_Nutzungsplanung_20170915.Erschliessungsplanung.Erschliessung_Linienobjekt';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_linienobjekt.geometrie IS '@iliname Geometrie';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_linienobjekt.name_nummer IS 'leer lassen
@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_linienobjekt.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_linienobjekt.publiziertab IS 'Datum des Regierungsratsbeschlusses
@iliname publiziertAb';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_linienobjekt.bemerkungen IS 'Bemerkung zu den einzelnen Erschliessungsobjekten.
@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_linienobjekt.erfasser IS 'Name der Firma die die Daten erfasst hat.
@iliname Erfasser';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_linienobjekt.datum IS 'Datum der Erfassung
@iliname Datum';
-- SO_Nutzungsplanung_20170915.Erschliessungsplanung.Erschliessung_Linienobjekt_Pos
CREATE TABLE arp_npl.erschlssngsplnung_erschliessung_linienobjekt_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,erschliessung_linienobjekt bigint NULL
  ,ori integer NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
)
;
SELECT AddGeometryColumn('arp_npl','erschlssngsplnung_erschliessung_linienobjekt_pos','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX erschlssngsplg_lnnbjkt_pos_t_basket_idx ON arp_npl.erschlssngsplnung_erschliessung_linienobjekt_pos ( t_basket );
CREATE INDEX erschlssngsplg_lnnbjkt_pos_t_datasetname_idx ON arp_npl.erschlssngsplnung_erschliessung_linienobjekt_pos ( t_datasetname );
CREATE INDEX erschlssngsplg_lnnbjkt_pos_erschliessung_linienobjekt_idx ON arp_npl.erschlssngsplnung_erschliessung_linienobjekt_pos ( erschliessung_linienobjekt );
CREATE INDEX erschlssngsplg_lnnbjkt_pos_pos_idx ON arp_npl.erschlssngsplnung_erschliessung_linienobjekt_pos USING GIST ( pos );
COMMENT ON TABLE arp_npl.erschlssngsplnung_erschliessung_linienobjekt_pos IS '@iliname SO_Nutzungsplanung_20170915.Erschliessungsplanung.Erschliessung_Linienobjekt_Pos';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_linienobjekt_pos.pos IS 'Position für die Beschriftung
@iliname Pos';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_linienobjekt_pos.ori IS 'Orientierung der Beschriftung in Gon. 0 gon = Horizontal
@iliname Ori';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_linienobjekt_pos.hali IS 'Mit dem horizontalen Alignment wird festgelegt, ob die Position auf dem linken oder rechten Rand des Textes oder in der
Textmitte liegt.
@iliname HAli';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_linienobjekt_pos.vali IS 'Das vertikale Alignment legt die Position in Richtung der Texthöhe fest.
@iliname VAli';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_linienobjekt_pos.groesse IS 'Grösse der Beschriftung
@iliname Groesse';
-- SO_Nutzungsplanung_20170915.Erschliessungsplanung.Typ_Erschliessung_Punktobjekt
CREATE TABLE arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ_kt varchar(255) NULL
  ,code_kommunal varchar(12) NULL
  ,bezeichnung varchar(80) NULL
  ,abkuerzung varchar(12) NULL
  ,verbindlichkeit varchar(255) NULL
  ,bemerkungen varchar(240) NULL
)
;
CREATE INDEX erschlssngsplsng_pnktbjekt_t_basket_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt ( t_basket );
CREATE INDEX erschlssngsplsng_pnktbjekt_t_datasetname_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt ( t_datasetname );
COMMENT ON TABLE arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt IS '@iliname SO_Nutzungsplanung_20170915.Erschliessungsplanung.Typ_Erschliessung_Punktobjekt';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt.typ_kt IS '@iliname Typ_Kt';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt.code_kommunal IS '4-stelliger kommunaler Code. Wird durch die Gemeinde vergeben. Im Objektkatalog ist definiert, welche Werte des kommunalen Codes erlaubt sind.
@iliname Code_kommunal';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt.bezeichnung IS 'Name der Grundnutzung, überlagernden Objekts oder Erschliessung. Wird von der Gemeinde definiert.
@iliname Bezeichnung';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt.abkuerzung IS 'Abkürzung der Bezeichung. Kann von der Gemeinde vergeben werden. Falls keine Abkürzung vorhanden ist bleit das Feld leer.
@iliname Abkuerzung';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt.verbindlichkeit IS '@iliname Verbindlichkeit';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt.bemerkungen IS 'Erläuternder Text zum Typ
@iliname Bemerkungen';
-- SO_Nutzungsplanung_20170915.Erschliessungsplanung.Typ_Erschliessung_Punktobjekt_Dokument
CREATE TABLE arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt_dokument (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,typ_erschliessung_punktobjekt bigint NULL
  ,dokument bigint NULL
)
;
CREATE INDEX erschlssngsplktbjkt_dkment_t_basket_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt_dokument ( t_basket );
CREATE INDEX erschlssngsplktbjkt_dkment_t_datasetname_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt_dokument ( t_datasetname );
CREATE INDEX erschlssngsplktbjkt_dkment_typ_erschliessng_pnktbjekt_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt_dokument ( typ_erschliessung_punktobjekt );
CREATE INDEX erschlssngsplktbjkt_dkment_dokument_idx ON arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt_dokument ( dokument );
COMMENT ON TABLE arp_npl.erschlssngsplnung_typ_erschliessung_punktobjekt_dokument IS 'Siehe in der Arbeitshilfe
@iliname SO_Nutzungsplanung_20170915.Erschliessungsplanung.Typ_Erschliessung_Punktobjekt_Dokument';
-- SO_Nutzungsplanung_20170915.Erschliessungsplanung.Erschliessung_Punktobjekt
CREATE TABLE arp_npl.erschlssngsplnung_erschliessung_punktobjekt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,name_nummer varchar(20) NULL
  ,rechtsstatus varchar(255) NULL
  ,publiziertab date NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
  ,typ_erschliessung_punktobjekt bigint NULL
)
;
SELECT AddGeometryColumn('arp_npl','erschlssngsplnung_erschliessung_punktobjekt','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX erschlssngsplsng_pnktbjekt_t_basket_idx1 ON arp_npl.erschlssngsplnung_erschliessung_punktobjekt ( t_basket );
CREATE INDEX erschlssngsplsng_pnktbjekt_t_datasetname_idx1 ON arp_npl.erschlssngsplnung_erschliessung_punktobjekt ( t_datasetname );
CREATE INDEX erschlssngsplsng_pnktbjekt_geometrie_idx ON arp_npl.erschlssngsplnung_erschliessung_punktobjekt USING GIST ( geometrie );
CREATE INDEX erschlssngsplsng_pnktbjekt_typ_erschliessng_pnktbjekt_idx ON arp_npl.erschlssngsplnung_erschliessung_punktobjekt ( typ_erschliessung_punktobjekt );
COMMENT ON TABLE arp_npl.erschlssngsplnung_erschliessung_punktobjekt IS '@iliname SO_Nutzungsplanung_20170915.Erschliessungsplanung.Erschliessung_Punktobjekt';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_punktobjekt.geometrie IS '@iliname Geometrie';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_punktobjekt.name_nummer IS 'leer lassen
@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_punktobjekt.rechtsstatus IS '@iliname Rechtsstatus';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_punktobjekt.publiziertab IS 'Datum des Regierungsratsbeschlusses
@iliname publiziertAb';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_punktobjekt.bemerkungen IS 'Bemerkung zu den einzelnen Erschliessungsobjekten.
@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_punktobjekt.erfasser IS 'Name der Firma die die Daten erfasst hat.
@iliname Erfasser';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_punktobjekt.datum IS 'Datum der Erfassung
@iliname Datum';
-- SO_Nutzungsplanung_20170915.Erschliessungsplanung.Erschliessung_Punktobjekt_Pos
CREATE TABLE arp_npl.erschlssngsplnung_erschliessung_punktobjekt_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,erschliessung_punktobjekt bigint NULL
  ,ori integer NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
)
;
SELECT AddGeometryColumn('arp_npl','erschlssngsplnung_erschliessung_punktobjekt_pos','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX erschlssngspl_pnktbjkt_pos_t_basket_idx ON arp_npl.erschlssngsplnung_erschliessung_punktobjekt_pos ( t_basket );
CREATE INDEX erschlssngspl_pnktbjkt_pos_t_datasetname_idx ON arp_npl.erschlssngsplnung_erschliessung_punktobjekt_pos ( t_datasetname );
CREATE INDEX erschlssngspl_pnktbjkt_pos_erschliessung_punktobjekt_idx ON arp_npl.erschlssngsplnung_erschliessung_punktobjekt_pos ( erschliessung_punktobjekt );
CREATE INDEX erschlssngspl_pnktbjkt_pos_pos_idx ON arp_npl.erschlssngsplnung_erschliessung_punktobjekt_pos USING GIST ( pos );
COMMENT ON TABLE arp_npl.erschlssngsplnung_erschliessung_punktobjekt_pos IS '@iliname SO_Nutzungsplanung_20170915.Erschliessungsplanung.Erschliessung_Punktobjekt_Pos';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_punktobjekt_pos.pos IS 'Position für die Beschriftung
@iliname Pos';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_punktobjekt_pos.ori IS 'Orientierung der Beschriftung in Gon. 0 gon = Horizontal
@iliname Ori';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_punktobjekt_pos.hali IS 'Mit dem horizontalen Alignment wird festgelegt, ob die Position auf dem linken oder rechten Rand des Textes oder in der
Textmitte liegt.
@iliname HAli';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_punktobjekt_pos.vali IS 'Das vertikale Alignment legt die Position in Richtung der Texthöhe fest.
@iliname VAli';
COMMENT ON COLUMN arp_npl.erschlssngsplnung_erschliessung_punktobjekt_pos.groesse IS 'Grösse der Beschriftung
@iliname Groesse';
-- SO_Nutzungsplanung_20170915.Verfahrenstand.VS_Perimeter_Verfahrensstand
CREATE TABLE arp_npl.verfahrenstand_vs_perimeter_verfahrensstand (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,planungsart varchar(255) NULL
  ,verfahrensstufe varchar(255) NULL
  ,name_nummer varchar(20) NULL
  ,bemerkungen varchar(240) NULL
  ,erfasser varchar(80) NULL
  ,datum date NULL
)
;
SELECT AddGeometryColumn('arp_npl','verfahrenstand_vs_perimeter_verfahrensstand','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
CREATE INDEX verfhrnstnd_v_vrfhrnsstand_t_basket_idx ON arp_npl.verfahrenstand_vs_perimeter_verfahrensstand ( t_basket );
CREATE INDEX verfhrnstnd_v_vrfhrnsstand_t_datasetname_idx ON arp_npl.verfahrenstand_vs_perimeter_verfahrensstand ( t_datasetname );
CREATE INDEX verfhrnstnd_v_vrfhrnsstand_geometrie_idx ON arp_npl.verfahrenstand_vs_perimeter_verfahrensstand USING GIST ( geometrie );
COMMENT ON TABLE arp_npl.verfahrenstand_vs_perimeter_verfahrensstand IS '@iliname SO_Nutzungsplanung_20170915.Verfahrenstand.VS_Perimeter_Verfahrensstand';
COMMENT ON COLUMN arp_npl.verfahrenstand_vs_perimeter_verfahrensstand.geometrie IS 'Geltungsbereich für die Mutation
@iliname Geometrie';
COMMENT ON COLUMN arp_npl.verfahrenstand_vs_perimeter_verfahrensstand.planungsart IS '@iliname Planungsart';
COMMENT ON COLUMN arp_npl.verfahrenstand_vs_perimeter_verfahrensstand.verfahrensstufe IS '@iliname Verfahrensstufe';
COMMENT ON COLUMN arp_npl.verfahrenstand_vs_perimeter_verfahrensstand.name_nummer IS 'Leer lassen
@iliname Name_Nummer';
COMMENT ON COLUMN arp_npl.verfahrenstand_vs_perimeter_verfahrensstand.bemerkungen IS 'Erläuternder Text oder Bemerkungen zum Verfahrenstand.
@iliname Bemerkungen';
COMMENT ON COLUMN arp_npl.verfahrenstand_vs_perimeter_verfahrensstand.erfasser IS 'Name des der Firma
@iliname Erfasser';
COMMENT ON COLUMN arp_npl.verfahrenstand_vs_perimeter_verfahrensstand.datum IS 'Datum Verfahrensbeginn
@iliname Datum';
-- SO_Nutzungsplanung_20170915.Verfahrenstand.VS_Perimeter_Pos
CREATE TABLE arp_npl.verfahrenstand_vs_perimeter_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,vs_perimeter_verfahrensstand bigint NULL
  ,ori integer NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,groesse varchar(255) NULL
)
;
SELECT AddGeometryColumn('arp_npl','verfahrenstand_vs_perimeter_pos','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX verfahrenstnd_vs_prmtr_pos_t_basket_idx ON arp_npl.verfahrenstand_vs_perimeter_pos ( t_basket );
CREATE INDEX verfahrenstnd_vs_prmtr_pos_t_datasetname_idx ON arp_npl.verfahrenstand_vs_perimeter_pos ( t_datasetname );
CREATE INDEX verfahrenstnd_vs_prmtr_pos_vs_perimeter_verfhrnsstand_idx ON arp_npl.verfahrenstand_vs_perimeter_pos ( vs_perimeter_verfahrensstand );
CREATE INDEX verfahrenstnd_vs_prmtr_pos_pos_idx ON arp_npl.verfahrenstand_vs_perimeter_pos USING GIST ( pos );
COMMENT ON TABLE arp_npl.verfahrenstand_vs_perimeter_pos IS '@iliname SO_Nutzungsplanung_20170915.Verfahrenstand.VS_Perimeter_Pos';
COMMENT ON COLUMN arp_npl.verfahrenstand_vs_perimeter_pos.pos IS 'Position für die Beschriftung
@iliname Pos';
COMMENT ON COLUMN arp_npl.verfahrenstand_vs_perimeter_pos.ori IS 'Orientierung der Beschriftung in Gon. 0 gon = Horizontal
@iliname Ori';
COMMENT ON COLUMN arp_npl.verfahrenstand_vs_perimeter_pos.hali IS 'Mit dem horizontalen Alignment wird festgelegt, ob die Position auf dem linken oder rechten Rand des Textes oder in der
Textmitte liegt.
@iliname HAli';
COMMENT ON COLUMN arp_npl.verfahrenstand_vs_perimeter_pos.vali IS 'Das vertikale Alignment legt die Position in Richtung der Texthöhe fest.
@iliname VAli';
COMMENT ON COLUMN arp_npl.verfahrenstand_vs_perimeter_pos.groesse IS 'Grösse der Beschriftung
@iliname Groesse';
-- SO_Nutzungsplanung_20170915.TransferMetadaten.Amt
CREATE TABLE arp_npl.transfermetadaten_amt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,aname varchar(80) NULL
  ,amtimweb varchar(1023) NULL
)
;
CREATE INDEX transfermetadaten_amt_t_basket_idx ON arp_npl.transfermetadaten_amt ( t_basket );
CREATE INDEX transfermetadaten_amt_t_datasetname_idx ON arp_npl.transfermetadaten_amt ( t_datasetname );
COMMENT ON TABLE arp_npl.transfermetadaten_amt IS '@iliname SO_Nutzungsplanung_20170915.TransferMetadaten.Amt';
COMMENT ON COLUMN arp_npl.transfermetadaten_amt.aname IS 'Firmenname des Erfassers
@iliname Name';
COMMENT ON COLUMN arp_npl.transfermetadaten_amt.amtimweb IS 'Verweis auf die Webseite
@iliname AmtImWeb';
-- SO_Nutzungsplanung_20170915.TransferMetadaten.Datenbestand
CREATE TABLE arp_npl.transfermetadaten_datenbestand (
  T_Id bigint PRIMARY KEY DEFAULT nextval('arp_npl.t_ili2db_seq')
  ,T_basket bigint NOT NULL
  ,T_datasetname varchar(200) NOT NULL
  ,stand date NULL
  ,lieferdatum date NULL
  ,bemerkungen varchar(240) NULL
  ,amt bigint NULL
)
;
CREATE INDEX transfermetadatn_dtnbstand_t_basket_idx ON arp_npl.transfermetadaten_datenbestand ( t_basket );
CREATE INDEX transfermetadatn_dtnbstand_t_datasetname_idx ON arp_npl.transfermetadaten_datenbestand ( t_datasetname );
CREATE INDEX transfermetadatn_dtnbstand_amt_idx ON arp_npl.transfermetadaten_datenbestand ( amt );
COMMENT ON TABLE arp_npl.transfermetadaten_datenbestand IS '@iliname SO_Nutzungsplanung_20170915.TransferMetadaten.Datenbestand';
COMMENT ON COLUMN arp_npl.transfermetadaten_datenbestand.stand IS 'Datum des Datenstandes, z.B. Gemeinderatsbeschluss oder bereinigte Daten nach RRB
@iliname Stand';
COMMENT ON COLUMN arp_npl.transfermetadaten_datenbestand.lieferdatum IS 'Datum der Datenlieferung
@iliname Lieferdatum';
COMMENT ON COLUMN arp_npl.transfermetadaten_datenbestand.bemerkungen IS 'Erläuternder Text oder Bemerkungen zum Datenbestand.
@iliname Bemerkungen';
CREATE TABLE arp_npl.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
)
;
CREATE INDEX T_ILI2DB_BASKET_dataset_idx ON arp_npl.t_ili2db_basket ( dataset );
CREATE TABLE arp_npl.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE arp_npl.T_ILI2DB_IMPORT (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NOT NULL
  ,importDate timestamp NOT NULL
  ,importUser varchar(40) NOT NULL
  ,importFile varchar(200) NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_dataset_idx ON arp_npl.t_ili2db_import ( dataset );
COMMENT ON TABLE arp_npl.T_ILI2DB_IMPORT IS 'DEPRECATED, do not use';
CREATE TABLE arp_npl.T_ILI2DB_IMPORT_BASKET (
  T_Id bigint PRIMARY KEY
  ,import bigint NOT NULL
  ,basket bigint NOT NULL
  ,objectCount integer NULL
  ,start_t_id bigint NULL
  ,end_t_id bigint NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_BASKET_import_idx ON arp_npl.t_ili2db_import_basket ( import );
CREATE INDEX T_ILI2DB_IMPORT_BASKET_basket_idx ON arp_npl.t_ili2db_import_basket ( basket );
COMMENT ON TABLE arp_npl.T_ILI2DB_IMPORT_BASKET IS 'DEPRECATED, do not use';
CREATE TABLE arp_npl.T_ILI2DB_IMPORT_OBJECT (
  T_Id bigint PRIMARY KEY
  ,import_basket bigint NOT NULL
  ,class varchar(200) NOT NULL
  ,objectCount integer NULL
  ,start_t_id bigint NULL
  ,end_t_id bigint NULL
)
;
COMMENT ON TABLE arp_npl.T_ILI2DB_IMPORT_OBJECT IS 'DEPRECATED, do not use';
CREATE TABLE arp_npl.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE arp_npl.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(255) NULL
)
;
CREATE TABLE arp_npl.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE arp_npl.T_ILI2DB_MODEL (
  file varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (modelName,iliversion)
)
;
CREATE TABLE arp_npl.erschlssngsplnung_ep_typ_kanton_erschliessung_flaechenobjekt (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.nutzungsplanung_typ_grundnutzung_nutzungsziffer_art (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.nutzungsplanung_np_typ_kanton_ueberlagernd_flaeche (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.schriftgroesse (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.verfahrenstand_verfahrensstufe (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.valignment (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.chcantoncode (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.nutzungsplanung_np_typ_kanton_ueberlagernd_linie (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.rechtsstatus (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.erschlssngsplnung_ep_typ_kanton_erschliessung_linienobjekt (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.nutzungsplanung_np_typ_kanton_grundnutzung (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.verfahrenstand_planungsart (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.halignment (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.verbindlichkeit (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.erschlssngsplnung_ep_typ_kanton_erschliessung_punktobjekt (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.nutzungsplanung_np_typ_kanton_ueberlagernd_punkt (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE arp_npl.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE arp_npl.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,Owner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (SqlName,Owner)
)
;
CREATE TABLE arp_npl.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE arp_npl.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE UNIQUE INDEX T_ILI2DB_DATASET_datasetName_key ON arp_npl.T_ILI2DB_DATASET (datasetName)
;
CREATE UNIQUE INDEX T_ILI2DB_MODEL_modelName_iliversion_key ON arp_npl.T_ILI2DB_MODEL (modelName,iliversion)
;
CREATE UNIQUE INDEX T_ILI2DB_ATTRNAME_SqlName_Owner_key ON arp_npl.T_ILI2DB_ATTRNAME (SqlName,Owner)
;
