# nplso-import-dataset

GRETL-Job für Import eines NPLSO-Datensatzes (= eine Gemeinde) und Umbau in das Publikationsmodell. Der Prozess resp. der GRETL-Job ist noch highly work-in-progress, da der Funktionsumfang von GRETL zur Zeit (2017-10-02) stetig wächst und das Orchestrierungswerkzeug ("GRETL-Jenkins") noch fehlt.

## Datenbank initialisieren

Die beiden Schemen mit den leeren Tabellen (eigentliches Erfassungsmodell und Publikationsmodell) sind mittels `ili2pg`-Kommandozeilenbefehlen erzeugt worden. Dies auch im Hinblick, dass die daraus generierten SQL-Dateien (`arp_npl_pub.sql`, `arp_npl.sql`) im Sinne von "Infrastructure as Code" verwendet werden können/sollen:

`java -jar ~/Apps/ili2pg-3.10.7/ili2pg.jar --dbhost geodb-dev.cgjofbdf5rqg.eu-central-1.rds.amazonaws.com --dbdatabase xanadu2 --dbusr stefan --dbpwd XXXXXXXX --nameByTopic --disableValidation --defaultSrsCode 2056 --strokeArcs --sqlEnableNull --createGeomIdx --createFkIdx --createEnumTabs --beautifyEnumDispName --createMetaInfo --createBasketCol --createDatasetCol --models SO_Nutzungsplanung_20170915 --dbschema arp_npl --createscript arp_npl.sql --schemaimport`

`java -jar ~/Apps/ili2pg-3.10.7/ili2pg.jar --dbhost geodb-dev.cgjofbdf5rqg.eu-central-1.rds.amazonaws.com --dbdatabase xanadu2 --dbusr stefan --dbpwd XXXXXXXX --nameByTopic --disableValidation --defaultSrsCode 2056 --strokeArcs --sqlEnableNull --createGeomIdx --createFkIdx --models SO_Nutzungsplanung_Publikation_20170821 --modeldir "http://models.geo.admin.ch;." --dbschema arp_npl_pub --createscript arp_npl_pub.sql --schemaimport`

Bemerkungen: `--strokeArcs` ist leider auch im Erfassungsmodell notwendig, da PostGIS erst ab 2.4.x für AREA-Geometrien ein korrekte ST_CurveToLine-Funktion besitzt. Ob das Publikationsmodell den Bedürfnissen entspricht, muss sich noch zeigen.

## Datenimport

Für den Import wird bereits der `Ili2pgReplace`-Task von GRETL verwendet. Diese GRETL-Version ist in einem speziellen Repository gespeichert (siehe `init.gradle`). Der Import kann wie folgt auf der Kommandozeile ausgelöst werden:

`gradle importDataset -Pxtf=path/to/xtf/bfsnr_gemeindename.xtf`

Wichtig: Bitte auch Kommentare in der `build.gradle`-Datei beachten. Die XTF-Datei muss mit der BfS-Nummer beginnen (wird geprüft). 

## Datenumbau

Der Datenumbau erfolgt zur Zeit noch nicht parametrisiert. Dh. nach einem Import einer Gemeinde wird der Umbau in das Publikationsmodell nicht nur für die vorher importierte Gemeinde gemacht, sondern für sämtliche Daten im Erfassungsmodell. Die Funktion des parametrisierten Umbaus sollten wir mit der ersten GRELT-Entwicklungs-Tranche bekommen. Bis dahin dürfte die Performanz (resp. die Datenmengen) beim Umbau noch nicht kritisch werden.

## TODO:
* Integration in AGI-Produktionsumgebung
* Vorsicht mit GRETL-Versionen (-> welches Repo?)
* ...