CREATE SCHEMA IF NOT EXISTS agi_mopublic_pub;
CREATE SEQUENCE agi_mopublic_pub.t_ili2db_seq;;
-- SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung
CREATE TABLE agi_mopublic_pub.mopublic_bodenbedeckung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,egid integer NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
)
;
CREATE INDEX mopublic_bodenbedeckung_geometrie_idx ON agi_mopublic_pub.mopublic_bodenbedeckung USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_bodenbedeckung.art_txt IS 'Bodenbedeckungsart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_bodenbedeckung.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_bodenbedeckung.egid IS 'Eidgenössischer Gebäudeidentifikator';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_bodenbedeckung.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_bodenbedeckung.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_bodenbedeckung.geometrie IS 'Geometrie';
-- SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung_proj
CREATE TABLE agi_mopublic_pub.mopublic_bodenbedeckung_proj (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,egid integer NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
)
;
CREATE INDEX mopublic_bodenbedckng_proj_geometrie_idx ON agi_mopublic_pub.mopublic_bodenbedeckung_proj USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_bodenbedeckung_proj.art_txt IS 'Bodenbedeckungsart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_bodenbedeckung_proj.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_bodenbedeckung_proj.egid IS 'Eidgenössischer Gebäudeidentifikator';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_bodenbedeckung_proj.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_bodenbedeckung_proj.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_bodenbedeckung_proj.geometrie IS 'Geometrie';
-- SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Flaeche
CREATE TABLE agi_mopublic_pub.mopublic_einzelobjekt_flaeche (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,egid integer NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
)
;
CREATE INDEX mopublic_einzelobjkt_flche_geometrie_idx ON agi_mopublic_pub.mopublic_einzelobjekt_flaeche USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_flaeche.art_txt IS 'Einzelobjektart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_flaeche.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_flaeche.egid IS 'Eidgenössischer Gebäudeidentifikator';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_flaeche.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_flaeche.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_flaeche.geometrie IS 'Geometrie';
-- SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Linie
CREATE TABLE agi_mopublic_pub.mopublic_einzelobjekt_linie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
)
;
CREATE INDEX mopublic_einzelobjekt_lnie_geometrie_idx ON agi_mopublic_pub.mopublic_einzelobjekt_linie USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_linie.art_txt IS 'Einzelobjektart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_linie.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_linie.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_linie.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_linie.geometrie IS 'Geometrie';
-- SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze
CREATE TABLE agi_mopublic_pub.mopublic_gemeindegrenze (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,gemeindename varchar(100) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_gemeindegrenze_geometrie_idx ON agi_mopublic_pub.mopublic_gemeindegrenze USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gemeindegrenze.gemeindename IS 'Name der Gemeinde';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gemeindegrenze.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gemeindegrenze.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gemeindegrenze.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gemeindegrenze.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze_proj
CREATE TABLE agi_mopublic_pub.mopublic_gemeindegrenze_proj (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,gemeindename varchar(100) NOT NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_gemeindegrnz_proj_geometrie_idx ON agi_mopublic_pub.mopublic_gemeindegrenze_proj USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gemeindegrenze_proj.gemeindename IS 'Name der Gemeinde';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gemeindegrenze_proj.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gemeindegrenze_proj.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gemeindegrenze_proj.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gemeindegrenze_proj.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20190424.MOpublic.Rohrleitung
CREATE TABLE agi_mopublic_pub.mopublic_rohrleitung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,betreiber varchar(40) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_rohrleitung_geometrie_idx ON agi_mopublic_pub.mopublic_rohrleitung USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_rohrleitung.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_rohrleitung.art_txt IS 'Transportmedium (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_rohrleitung.betreiber IS 'Betreiber';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_rohrleitung.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_rohrleitung.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_rohrleitung.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20190424.MOpublic.Strassenachse
CREATE TABLE agi_mopublic_pub.mopublic_strassenachse (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,strassenname varchar(100) NULL
  ,ordnung integer NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_strassenachse_geometrie_idx ON agi_mopublic_pub.mopublic_strassenachse USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenachse.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenachse.strassenname IS 'Strassenname';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenachse.ordnung IS 'Ordnung des Strassenstückes';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenachse.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenachse.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenachse.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Punkt
CREATE TABLE agi_mopublic_pub.mopublic_einzelobjekt_punkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,symbolorientierung decimal(5,2) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,geometrie geometry(POINT,2056) NOT NULL
)
;
CREATE INDEX mopublic_einzelobjekt_pnkt_geometrie_idx ON agi_mopublic_pub.mopublic_einzelobjekt_punkt USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_punkt.art_txt IS 'Einzelobjektart (Txt-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_punkt.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_punkt.symbolorientierung IS 'Orientierung des Symbols';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_punkt.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_punkt.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_einzelobjekt_punkt.geometrie IS 'Geometrie';
-- SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt
CREATE TABLE agi_mopublic_pub.mopublic_fixpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(POINT,2056) NOT NULL
  ,typ_txt varchar(100) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NULL
  ,hoehe decimal(7,3) NULL
  ,bfs_nr integer NOT NULL
  ,lagegenauigkeit decimal(4,1) NOT NULL
  ,hoehengenauigkeit decimal(4,1) NULL
  ,punktzeichen_txt varchar(100) NOT NULL
  ,pos geometry(POINT,2056) NULL
  ,orientierung decimal(5,2) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,koordinate varchar(40) NOT NULL
)
;
CREATE INDEX mopublic_fixpunkt_geometrie_idx ON agi_mopublic_pub.mopublic_fixpunkt USING GIST ( geometrie );
CREATE INDEX mopublic_fixpunkt_pos_idx ON agi_mopublic_pub.mopublic_fixpunkt USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.typ_txt IS 'Fixpunkttyp (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.nbident IS 'Nummerierungsbereichidentifikator';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.nummer IS 'Bezeichnung des Fixpunktes';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.hoehe IS 'Höhe';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.lagegenauigkeit IS 'Lagegenauigkeit';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.hoehengenauigkeit IS 'Höhengenauigkeit';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.punktzeichen_txt IS 'Punktzeichen (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_fixpunkt.koordinate IS 'Koordinate (Text-Repräsentation)';
-- SO_AGI_MOpublic_20190424.MOpublic.Flurname
CREATE TABLE agi_mopublic_pub.mopublic_flurname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,flurname varchar(100) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,bfs_nr integer NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,orientierung decimal(5,2) NOT NULL
  ,gemeinde varchar(255) NOT NULL
)
;
CREATE INDEX mopublic_flurname_geometrie_idx ON agi_mopublic_pub.mopublic_flurname USING GIST ( geometrie );
CREATE INDEX mopublic_flurname_pos_idx ON agi_mopublic_pub.mopublic_flurname USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_flurname.flurname IS 'Flurname';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_flurname.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_flurname.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_flurname.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_flurname.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_flurname.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_flurname.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_flurname.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_flurname.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_flurname.gemeinde IS 'Name der Gemeinde';
-- SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse
CREATE TABLE agi_mopublic_pub.mopublic_gebaeudeadresse (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,lage geometry(POINT,2056) NOT NULL
  ,strassenname varchar(100) NULL
  ,hausnummer varchar(20) NULL
  ,egid integer NULL
  ,edid integer NULL
  ,plz integer NOT NULL
  ,ortschaft varchar(100) NOT NULL
  ,astatus varchar(20) NULL
  ,ist_offizielle_bezeichnung boolean NULL
  ,hoehenlage integer NULL
  ,gebaeudename varchar(100) NULL
  ,bfs_nr integer NOT NULL
  ,pos geometry(POINT,2056) NULL
  ,orientierung decimal(5,2) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_gebaeudeadresse_lage_idx ON agi_mopublic_pub.mopublic_gebaeudeadresse USING GIST ( lage );
CREATE INDEX mopublic_gebaeudeadresse_pos_idx ON agi_mopublic_pub.mopublic_gebaeudeadresse USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.lage IS 'Lage des Gebäudeeingangs';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.strassenname IS 'Name der Strasse';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.hausnummer IS 'Hausnummer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.egid IS 'Eidgenössischer Gebäudeidentifikator';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.edid IS 'Eidgenössischer Eingangsidentifikator';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.plz IS 'Vierstellige Postleitzahl';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.ortschaft IS 'Ortschaftsname';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.astatus IS 'Status des Gebäudeinganges';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.ist_offizielle_bezeichnung IS 'Ist Adresse offiziell? ja/nein';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.hoehenlage IS 'Relative Lage des Gebäudeeinganges';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.gebaeudename IS 'Name des Gebäudes';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.pos IS 'Positionierungspunkt für Beschriftung der Hausnummer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.orientierung IS 'Orientierung des Beschriftungstextes';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gebaeudeadresse.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20190424.MOpublic.Gelaendename
CREATE TABLE agi_mopublic_pub.mopublic_gelaendename (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,gelaendename varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,gemeinde varchar(255) NOT NULL
)
;
CREATE INDEX mopublic_gelaendename_pos_idx ON agi_mopublic_pub.mopublic_gelaendename USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gelaendename.gelaendename IS 'Geländename';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gelaendename.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gelaendename.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gelaendename.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gelaendename.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gelaendename.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gelaendename.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gelaendename.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_gelaendename.gemeinde IS 'Name der Gemeinde';
-- SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt
CREATE TABLE agi_mopublic_pub.mopublic_grenzpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(POINT,2056) NOT NULL
  ,lagegenauigkeit decimal(4,1) NOT NULL
  ,lagezuverlaessigkeit boolean NOT NULL
  ,punktzeichen_txt varchar(100) NOT NULL
  ,symbolorientierung decimal(5,2) NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,gueltigkeit varchar(255) NOT NULL
)
;
CREATE INDEX mopublic_grenzpunkt_geometrie_idx ON agi_mopublic_pub.mopublic_grenzpunkt USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grenzpunkt.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grenzpunkt.lagegenauigkeit IS 'Lagegenauigkeit';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grenzpunkt.lagezuverlaessigkeit IS 'Ist Lagebestimmung zuverlässig? ja/nein';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grenzpunkt.punktzeichen_txt IS 'Art des Punktzeichens (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grenzpunkt.symbolorientierung IS 'Symbolorientierung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grenzpunkt.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grenzpunkt.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grenzpunkt.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grenzpunkt.gueltigkeit IS 'Gueltigkeit';
-- SO_AGI_MOpublic_20190424.MOpublic.Grundstueck
CREATE TABLE agi_mopublic_pub.mopublic_grundstueck (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(15) NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,flaechenmass integer NOT NULL
  ,egrid varchar(14) NULL
  ,bfs_nr integer NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,grundbuch varchar(255) NOT NULL
  ,gemeinde varchar(255) NOT NULL
)
;
CREATE INDEX mopublic_grundstueck_geometrie_idx ON agi_mopublic_pub.mopublic_grundstueck USING GIST ( geometrie );
CREATE INDEX mopublic_grundstueck_pos_idx ON agi_mopublic_pub.mopublic_grundstueck USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.nbident IS 'Nummerierungsbereichidentifikator';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.nummer IS 'Grundbuchnummer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.art_txt IS 'Grundstücksart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.flaechenmass IS 'Fläche des Grundstückes in m2';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.egrid IS 'Eidgenössischer Grundstücksidentifikator';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.grundbuch IS 'Name des Grundbuchs (= Grundbuchkreis)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck.gemeinde IS 'Name der Gemeinde';
-- SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj
CREATE TABLE agi_mopublic_pub.mopublic_grundstueck_proj (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(15) NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,flaechenmass integer NOT NULL
  ,egrid varchar(14) NULL
  ,bfs_nr integer NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,grundbuch varchar(255) NOT NULL
  ,gemeinde varchar(255) NOT NULL
)
;
CREATE INDEX mopublic_grundstueck_proj_geometrie_idx ON agi_mopublic_pub.mopublic_grundstueck_proj USING GIST ( geometrie );
CREATE INDEX mopublic_grundstueck_proj_pos_idx ON agi_mopublic_pub.mopublic_grundstueck_proj USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.nbident IS 'Nummerierungsbereichidentifikator';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.nummer IS 'Grundbuchnummer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.art_txt IS 'Grundstücksart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.flaechenmass IS 'Fläche des Grundstückes in m2';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.egrid IS 'Eidgenössischer Grundstücksidentifikator';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.grundbuch IS 'Name des Grundbuchs (= Grundbuchkreis)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_grundstueck_proj.gemeinde IS 'Name der Gemeinde';
-- SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt
CREATE TABLE agi_mopublic_pub.mopublic_hoheitsgrenzpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(POINT,2056) NOT NULL
  ,nummer varchar(20) NULL
  ,punktzeichen_txt varchar(100) NOT NULL
  ,schoener_stein boolean NOT NULL
  ,lagegenauigkeit decimal(4,1) NOT NULL
  ,lagezuverlaessigkeit boolean NOT NULL
  ,symbolorientierung decimal(5,2) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,pos geometry(POINT,2056) NULL
)
;
CREATE INDEX mopublic_hoheitsgrenzpunkt_geometrie_idx ON agi_mopublic_pub.mopublic_hoheitsgrenzpunkt USING GIST ( geometrie );
CREATE INDEX mopublic_hoheitsgrenzpunkt_pos_idx ON agi_mopublic_pub.mopublic_hoheitsgrenzpunkt USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_hoheitsgrenzpunkt.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_hoheitsgrenzpunkt.nummer IS 'Nummer des Hoheitsgrenzpunktes';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_hoheitsgrenzpunkt.punktzeichen_txt IS 'Punktzeichen (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_hoheitsgrenzpunkt.schoener_stein IS 'Schöner Stein? ja/nein';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_hoheitsgrenzpunkt.lagegenauigkeit IS 'Lagegenauigkeit';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_hoheitsgrenzpunkt.lagezuverlaessigkeit IS 'Ist Lagebestimmung zuverlässig? ja/nein';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_hoheitsgrenzpunkt.symbolorientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_hoheitsgrenzpunkt.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_hoheitsgrenzpunkt.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_hoheitsgrenzpunkt.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_hoheitsgrenzpunkt.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_hoheitsgrenzpunkt.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_hoheitsgrenzpunkt.pos IS 'Positionierungspunkt für Beschriftung';
-- SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos
CREATE TABLE agi_mopublic_pub.mopublic_objektname_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,objektname varchar(100) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,herkunft varchar(255) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,astatus varchar(20) NOT NULL
)
;
CREATE INDEX mopublic_objektname_pos_pos_idx ON agi_mopublic_pub.mopublic_objektname_pos USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_objektname_pos.objektname IS 'Name des Objektes';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_objektname_pos.pos IS 'Position';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_objektname_pos.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_objektname_pos.hali IS 'Halignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_objektname_pos.vali IS 'Valignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_objektname_pos.art_txt IS 'Art des Objektnamens, aus Art BB/EO. (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_objektname_pos.herkunft IS 'Herkunft des Objektnames';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_objektname_pos.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_objektname_pos.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_objektname_pos.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_objektname_pos.astatus IS 'Status der Geometrie: projektiert/realisiert';
-- SO_AGI_MOpublic_20190424.MOpublic.Ortsname
CREATE TABLE agi_mopublic_pub.mopublic_ortsname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,ortsname varchar(40) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_ortsname_geometrie_idx ON agi_mopublic_pub.mopublic_ortsname USING GIST ( geometrie );
CREATE INDEX mopublic_ortsname_pos_idx ON agi_mopublic_pub.mopublic_ortsname USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_ortsname.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_ortsname.ortsname IS 'Ortsname';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_ortsname.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_ortsname.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_ortsname.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_ortsname.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_ortsname.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_ortsname.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_ortsname.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20190424.MOpublic.Strassenname_Pos
CREATE TABLE agi_mopublic_pub.mopublic_strassenname_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,strassenname varchar(100) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_strassenname_pos_pos_idx ON agi_mopublic_pub.mopublic_strassenname_pos USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenname_pos.strassenname IS 'Strassenname';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenname_pos.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenname_pos.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenname_pos.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenname_pos.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenname_pos.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenname_pos.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub.mopublic_strassenname_pos.nachfuehrung IS 'Datum der Nachführung durch Geometer';
CREATE TABLE agi_mopublic_pub.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
  ,domains varchar(1024) NULL
)
;
CREATE INDEX T_ILI2DB_BASKET_dataset_idx ON agi_mopublic_pub.t_ili2db_basket ( dataset );
CREATE TABLE agi_mopublic_pub.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE agi_mopublic_pub.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE agi_mopublic_pub.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(1024) NULL
)
;
CREATE TABLE agi_mopublic_pub.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE agi_mopublic_pub.T_ILI2DB_MODEL (
  filename varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (iliversion,modelName)
)
;
CREATE TABLE agi_mopublic_pub.valignment (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE agi_mopublic_pub.mopublic_grenzpunkt_gueltigkeit (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE agi_mopublic_pub.mopublic_objektname_pos_herkunft (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE agi_mopublic_pub.halignment (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE agi_mopublic_pub.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE agi_mopublic_pub.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,ColOwner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (SqlName,ColOwner)
)
;
CREATE TABLE agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE agi_mopublic_pub.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE agi_mopublic_pub.T_ILI2DB_META_ATTRS (
  ilielement varchar(255) NOT NULL
  ,attr_name varchar(1024) NOT NULL
  ,attr_value varchar(1024) NOT NULL
)
;
ALTER TABLE agi_mopublic_pub.mopublic_bodenbedeckung ADD CONSTRAINT mopublic_bodenbedeckung_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_bodenbedeckung ADD CONSTRAINT mopublic_bodenbedeckung_egid_check CHECK( egid BETWEEN 0 AND 999999999);
ALTER TABLE agi_mopublic_pub.mopublic_bodenbedeckung_proj ADD CONSTRAINT mopublic_bodenbdckng_proj_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_bodenbedeckung_proj ADD CONSTRAINT mopublic_bodenbdckng_proj_egid_check CHECK( egid BETWEEN 0 AND 999999999);
ALTER TABLE agi_mopublic_pub.mopublic_einzelobjekt_flaeche ADD CONSTRAINT mopublic_einzelbjkt_flche_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_einzelobjekt_flaeche ADD CONSTRAINT mopublic_einzelbjkt_flche_egid_check CHECK( egid BETWEEN 0 AND 999999999);
ALTER TABLE agi_mopublic_pub.mopublic_einzelobjekt_linie ADD CONSTRAINT mopublic_einzelobjkt_lnie_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_gemeindegrenze ADD CONSTRAINT mopublic_gemeindegrenze_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_gemeindegrenze_proj ADD CONSTRAINT mopublic_gemeindgrnz_proj_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_rohrleitung ADD CONSTRAINT mopublic_rohrleitung_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_strassenachse ADD CONSTRAINT mopublic_strassenachse_ordnung_check CHECK( ordnung BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_strassenachse ADD CONSTRAINT mopublic_strassenachse_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_einzelobjekt_punkt ADD CONSTRAINT mopublic_einzelobjkt_pnkt_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_einzelobjekt_punkt ADD CONSTRAINT mopublic_einzelobjkt_pnkt_symbolorientierung_check CHECK( symbolorientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub.mopublic_fixpunkt ADD CONSTRAINT mopublic_fixpunkt_hoehe_check CHECK( hoehe BETWEEN -200.0 AND 1600.0);
ALTER TABLE agi_mopublic_pub.mopublic_fixpunkt ADD CONSTRAINT mopublic_fixpunkt_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_fixpunkt ADD CONSTRAINT mopublic_fixpunkt_lagegenauigkeit_check CHECK( lagegenauigkeit BETWEEN 0.0 AND 700.0);
ALTER TABLE agi_mopublic_pub.mopublic_fixpunkt ADD CONSTRAINT mopublic_fixpunkt_hoehengenauigkeit_check CHECK( hoehengenauigkeit BETWEEN 0.0 AND 700.0);
ALTER TABLE agi_mopublic_pub.mopublic_fixpunkt ADD CONSTRAINT mopublic_fixpunkt_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub.mopublic_flurname ADD CONSTRAINT mopublic_flurname_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_flurname ADD CONSTRAINT mopublic_flurname_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub.mopublic_gebaeudeadresse ADD CONSTRAINT mopublic_gebaeudeadresse_egid_check CHECK( egid BETWEEN 0 AND 999999999);
ALTER TABLE agi_mopublic_pub.mopublic_gebaeudeadresse ADD CONSTRAINT mopublic_gebaeudeadresse_edid_check CHECK( edid BETWEEN 0 AND 99);
ALTER TABLE agi_mopublic_pub.mopublic_gebaeudeadresse ADD CONSTRAINT mopublic_gebaeudeadresse_plz_check CHECK( plz BETWEEN 0 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_gebaeudeadresse ADD CONSTRAINT mopublic_gebaeudeadresse_hoehenlage_check CHECK( hoehenlage BETWEEN -99 AND 99);
ALTER TABLE agi_mopublic_pub.mopublic_gebaeudeadresse ADD CONSTRAINT mopublic_gebaeudeadresse_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_gebaeudeadresse ADD CONSTRAINT mopublic_gebaeudeadresse_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub.mopublic_gelaendename ADD CONSTRAINT mopublic_gelaendename_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_gelaendename ADD CONSTRAINT mopublic_gelaendename_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub.mopublic_grenzpunkt ADD CONSTRAINT mopublic_grenzpunkt_lagegenauigkeit_check CHECK( lagegenauigkeit BETWEEN 0.0 AND 700.0);
ALTER TABLE agi_mopublic_pub.mopublic_grenzpunkt ADD CONSTRAINT mopublic_grenzpunkt_symbolorientierung_check CHECK( symbolorientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub.mopublic_grenzpunkt ADD CONSTRAINT mopublic_grenzpunkt_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_grundstueck ADD CONSTRAINT mopublic_grundstueck_flaechenmass_check CHECK( flaechenmass BETWEEN 0 AND 2147483647);
ALTER TABLE agi_mopublic_pub.mopublic_grundstueck ADD CONSTRAINT mopublic_grundstueck_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_grundstueck ADD CONSTRAINT mopublic_grundstueck_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub.mopublic_grundstueck_proj ADD CONSTRAINT mopublic_grundstueck_proj_flaechenmass_check CHECK( flaechenmass BETWEEN 0 AND 2147483647);
ALTER TABLE agi_mopublic_pub.mopublic_grundstueck_proj ADD CONSTRAINT mopublic_grundstueck_proj_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_grundstueck_proj ADD CONSTRAINT mopublic_grundstueck_proj_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub.mopublic_hoheitsgrenzpunkt ADD CONSTRAINT mopublic_hoheitsgrenzpnkt_lagegenauigkeit_check CHECK( lagegenauigkeit BETWEEN 0.0 AND 700.0);
ALTER TABLE agi_mopublic_pub.mopublic_hoheitsgrenzpunkt ADD CONSTRAINT mopublic_hoheitsgrenzpnkt_symbolorientierung_check CHECK( symbolorientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub.mopublic_hoheitsgrenzpunkt ADD CONSTRAINT mopublic_hoheitsgrenzpnkt_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_objektname_pos ADD CONSTRAINT mopublic_objektname_pos_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub.mopublic_objektname_pos ADD CONSTRAINT mopublic_objektname_pos_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_ortsname ADD CONSTRAINT mopublic_ortsname_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub.mopublic_ortsname ADD CONSTRAINT mopublic_ortsname_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.mopublic_strassenname_pos ADD CONSTRAINT mopublic_strassenname_pos_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub.mopublic_strassenname_pos ADD CONSTRAINT mopublic_strassenname_pos_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub.T_ILI2DB_BASKET ADD CONSTRAINT T_ILI2DB_BASKET_dataset_fkey FOREIGN KEY ( dataset ) REFERENCES agi_mopublic_pub.T_ILI2DB_DATASET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_DATASET_datasetName_key ON agi_mopublic_pub.T_ILI2DB_DATASET (datasetName)
;
CREATE UNIQUE INDEX T_ILI2DB_MODEL_iliversion_modelName_key ON agi_mopublic_pub.T_ILI2DB_MODEL (iliversion,modelName)
;
CREATE UNIQUE INDEX T_ILI2DB_ATTRNAME_SqlName_ColOwner_key ON agi_mopublic_pub.T_ILI2DB_ATTRNAME (SqlName,ColOwner)
;
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Ortsname','mopublic_ortsname');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos','mopublic_objektname_pos');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt','mopublic_hoheitsgrenzpunkt');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck','mopublic_grundstueck');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj','mopublic_grundstueck_proj');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('INTERLIS.HALIGNMENT','halignment');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Linie','mopublic_einzelobjekt_linie');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenname_Pos','mopublic_strassenname_pos');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze','mopublic_gemeindegrenze');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Flurname','mopublic_flurname');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Rohrleitung','mopublic_rohrleitung');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse','mopublic_gebaeudeadresse');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Punkt','mopublic_einzelobjekt_punkt');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung','mopublic_bodenbedeckung');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze_proj','mopublic_gemeindegrenze_proj');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos.Herkunft','mopublic_objektname_pos_herkunft');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('INTERLIS.VALIGNMENT','valignment');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenachse','mopublic_strassenachse');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt.Gueltigkeit','mopublic_grenzpunkt_gueltigkeit');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gelaendename','mopublic_gelaendename');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Flaeche','mopublic_einzelobjekt_flaeche');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt','mopublic_fixpunkt');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung_proj','mopublic_bodenbedeckung_proj');
INSERT INTO agi_mopublic_pub.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt','mopublic_grenzpunkt');
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.Lage','lage','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenname_Pos.Strassenname','strassenname','mopublic_strassenname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.Nummer','nummer','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.Nummer','nummer','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt.Nummer','nummer','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gelaendename.BFS_Nr','bfs_nr','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos.Pos','pos','mopublic_objektname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung.Art_txt','art_txt','mopublic_bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Flurname.BFS_Nr','bfs_nr','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.Nachfuehrung','nachfuehrung','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.Geometrie','geometrie','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gelaendename.HAli','hali','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze.BFS_Nr','bfs_nr','mopublic_gemeindegrenze',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.BFS_Nr','bfs_nr','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.Pos','pos','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Rohrleitung.Art_txt','art_txt','mopublic_rohrleitung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Flurname.Nachfuehrung','nachfuehrung','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Rohrleitung.Geometrie','geometrie','mopublic_rohrleitung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Flaeche.Geometrie','geometrie','mopublic_einzelobjekt_flaeche',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Punkt.BFS_Nr','bfs_nr','mopublic_einzelobjekt_punkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt.Geometrie','geometrie','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.Art_txt','art_txt','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze_proj.Importdatum','importdatum','mopublic_gemeindegrenze_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.Lagegenauigkeit','lagegenauigkeit','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.Geometrie','geometrie','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Rohrleitung.Nachfuehrung','nachfuehrung','mopublic_rohrleitung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.Gebaeudename','gebaeudename','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt.Lagezuverlaessigkeit','lagezuverlaessigkeit','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.Gemeinde','gemeinde','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenachse.Ordnung','ordnung','mopublic_strassenachse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt.Punktzeichen_txt','punktzeichen_txt','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos.HAli','hali','mopublic_objektname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.Nachfuehrung','nachfuehrung','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos.Objektname','objektname','mopublic_objektname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.Orientierung','orientierung','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.VAli','vali','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze_proj.Nachfuehrung','nachfuehrung','mopublic_gemeindegrenze_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Flaeche.BFS_Nr','bfs_nr','mopublic_einzelobjekt_flaeche',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenname_Pos.Pos','pos','mopublic_strassenname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.BFS_Nr','bfs_nr','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Flurname.Gemeinde','gemeinde','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Punkt.Symbolorientierung','symbolorientierung','mopublic_einzelobjekt_punkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.BFS_Nr','bfs_nr','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt.BFS_Nr','bfs_nr','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenachse.Nachfuehrung','nachfuehrung','mopublic_strassenachse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.Importdatum','importdatum','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Linie.BFS_Nr','bfs_nr','mopublic_einzelobjekt_linie',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung_proj.Geometrie','geometrie','mopublic_bodenbedeckung_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.Pos','pos','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.Strassenname','strassenname','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt.schoener_Stein','schoener_stein','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenachse.Strassenname','strassenname','mopublic_strassenachse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos.BFS_Nr','bfs_nr','mopublic_objektname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze.Geometrie','geometrie','mopublic_gemeindegrenze',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze_proj.Geometrie','geometrie','mopublic_gemeindegrenze_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Flurname.Importdatum','importdatum','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gelaendename.Nachfuehrung','nachfuehrung','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt.Lagegenauigkeit','lagegenauigkeit','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt.VAli','vali','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Flurname.Pos','pos','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.PLZ','plz','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt.Geometrie','geometrie','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Linie.Nachfuehrung','nachfuehrung','mopublic_einzelobjekt_linie',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.Grundbuch','grundbuch','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.VAli','vali','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.Koordinate','koordinate','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.HAli','hali','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung_proj.Art_txt','art_txt','mopublic_bodenbedeckung_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenname_Pos.Nachfuehrung','nachfuehrung','mopublic_strassenname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos.Status','astatus','mopublic_objektname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Ortsname.Ortsname','ortsname','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenachse.Importdatum','importdatum','mopublic_strassenachse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.HAli','hali','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt.Importdatum','importdatum','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.VAli','vali','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gelaendename.Gelaendename','gelaendename','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.EGRID','egrid','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt.Gueltigkeit','gueltigkeit','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Flaeche.Art_txt','art_txt','mopublic_einzelobjekt_flaeche',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Flurname.VAli','vali','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gelaendename.Orientierung','orientierung','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.Flaechenmass','flaechenmass','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt.HAli','hali','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt.Nachfuehrung','nachfuehrung','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Flaeche.EGID','egid','mopublic_einzelobjekt_flaeche',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.HAli','hali','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.Geometrie','geometrie','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.NBIdent','nbident','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt.Lagegenauigkeit','lagegenauigkeit','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt.Punktzeichen_txt','punktzeichen_txt','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Ortsname.Nachfuehrung','nachfuehrung','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Rohrleitung.Betreiber','betreiber','mopublic_rohrleitung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung_proj.BFS_Nr','bfs_nr','mopublic_bodenbedeckung_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos.Nachfuehrung','nachfuehrung','mopublic_objektname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt.Symbolorientierung','symbolorientierung','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung.Importdatum','importdatum','mopublic_bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung.BFS_Nr','bfs_nr','mopublic_bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Flurname.Flurname','flurname','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.EDID','edid','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt.Importdatum','importdatum','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.EGRID','egrid','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.Ortschaft','ortschaft','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenname_Pos.Importdatum','importdatum','mopublic_strassenname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Ortsname.Pos','pos','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.NBIdent','nbident','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Ortsname.HAli','hali','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze_proj.BFS_Nr','bfs_nr','mopublic_gemeindegrenze_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Punkt.Importdatum','importdatum','mopublic_einzelobjekt_punkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.NBIdent','nbident','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze.Importdatum','importdatum','mopublic_gemeindegrenze',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Punkt.Nachfuehrung','nachfuehrung','mopublic_einzelobjekt_punkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Ortsname.BFS_Nr','bfs_nr','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.Art_txt','art_txt','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Flurname.Orientierung','orientierung','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Flaeche.Nachfuehrung','nachfuehrung','mopublic_einzelobjekt_flaeche',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.Importdatum','importdatum','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.ist_offizielle_bezeichnung','ist_offizielle_bezeichnung','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenname_Pos.HAli','hali','mopublic_strassenname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.Status','astatus','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.Flaechenmass','flaechenmass','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gelaendename.Pos','pos','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.Nachfuehrung','nachfuehrung','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Ortsname.Orientierung','orientierung','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos.Importdatum','importdatum','mopublic_objektname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze.Gemeindename','gemeindename','mopublic_gemeindegrenze',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.Orientierung','orientierung','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gelaendename.VAli','vali','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Ortsname.Geometrie','geometrie','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos.Herkunft','herkunft','mopublic_objektname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Rohrleitung.Importdatum','importdatum','mopublic_rohrleitung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.EGID','egid','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Linie.Importdatum','importdatum','mopublic_einzelobjekt_linie',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos.Art_txt','art_txt','mopublic_objektname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.Punktzeichen_txt','punktzeichen_txt','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gelaendename.Gemeinde','gemeinde','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.BFS_Nr','bfs_nr','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Punkt.Art_txt','art_txt','mopublic_einzelobjekt_punkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung.Nachfuehrung','nachfuehrung','mopublic_bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Punkt.Geometrie','geometrie','mopublic_einzelobjekt_punkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.Hoehenlage','hoehenlage','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Flaeche.Importdatum','importdatum','mopublic_einzelobjekt_flaeche',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.Orientierung','orientierung','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.Hoehengenauigkeit','hoehengenauigkeit','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.Importdatum','importdatum','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.HAli','hali','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung.EGID','egid','mopublic_bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gelaendename.Importdatum','importdatum','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung.Geometrie','geometrie','mopublic_bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt.Nachfuehrung','nachfuehrung','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Linie.Art_txt','art_txt','mopublic_einzelobjekt_linie',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.Nummer','nummer','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.Typ_txt','typ_txt','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.VAli','vali','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj.Pos','pos','mopublic_grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.Hoehe','hoehe','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenname_Pos.BFS_Nr','bfs_nr','mopublic_strassenname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Flurname.HAli','hali','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Ortsname.VAli','vali','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung_proj.EGID','egid','mopublic_bodenbedeckung_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenname_Pos.Orientierung','orientierung','mopublic_strassenname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.Orientierung','orientierung','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze.Nachfuehrung','nachfuehrung','mopublic_gemeindegrenze',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.Nachfuehrung','nachfuehrung','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos.Orientierung','orientierung','mopublic_objektname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.Hausnummer','hausnummer','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.Grundbuch','grundbuch','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung_proj.Nachfuehrung','nachfuehrung','mopublic_bodenbedeckung_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse.Importdatum','importdatum','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze_proj.Gemeindename','gemeindename','mopublic_gemeindegrenze_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung_proj.Importdatum','importdatum','mopublic_bodenbedeckung_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt.Pos','pos','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Ortsname.Importdatum','importdatum','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck.Gemeinde','gemeinde','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenname_Pos.VAli','vali','mopublic_strassenname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Rohrleitung.BFS_Nr','bfs_nr','mopublic_rohrleitung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos.VAli','vali','mopublic_objektname_pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt.BFS_Nr','bfs_nr','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt.Pos','pos','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Flurname.Geometrie','geometrie','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Linie.Geometrie','geometrie','mopublic_einzelobjekt_linie',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenachse.BFS_Nr','bfs_nr','mopublic_strassenachse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt.Symbolorientierung','symbolorientierung','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt.Lagezuverlaessigkeit','lagezuverlaessigkeit','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenachse.Geometrie','geometrie','mopublic_strassenachse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Ortsname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Linie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenname_Pos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Flurname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Rohrleitung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Punkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze_proj','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenachse','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gelaendename','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Flaeche','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung_proj','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenachse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Flaeche',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Strassenname_Pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Rohrleitung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gelaendename',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Flurname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Punkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze_proj',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Fixpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Einzelobjekt_Linie',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Objektname_Pos',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Ortsname',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Gemeindegrenze',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Grundstueck',NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20190424.MOpublic.Hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (0,'Top',0,'Top',FALSE,NULL);
INSERT INTO agi_mopublic_pub.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (1,'Cap',1,'Cap',FALSE,NULL);
INSERT INTO agi_mopublic_pub.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (2,'Half',2,'Half',FALSE,NULL);
INSERT INTO agi_mopublic_pub.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (3,'Base',3,'Base',FALSE,NULL);
INSERT INTO agi_mopublic_pub.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (4,'Bottom',4,'Bottom',FALSE,NULL);
INSERT INTO agi_mopublic_pub.mopublic_grenzpunkt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'projektiert',0,'projektiert',FALSE,NULL);
INSERT INTO agi_mopublic_pub.mopublic_grenzpunkt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gueltig',1,'gueltig',FALSE,NULL);
INSERT INTO agi_mopublic_pub.mopublic_objektname_pos_herkunft (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'EO_Punkt',0,'EO Punkt',FALSE,NULL);
INSERT INTO agi_mopublic_pub.mopublic_objektname_pos_herkunft (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'EO_Linie',1,'EO Linie',FALSE,NULL);
INSERT INTO agi_mopublic_pub.mopublic_objektname_pos_herkunft (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'EO_Flaeche',2,'EO Flaeche',FALSE,NULL);
INSERT INTO agi_mopublic_pub.mopublic_objektname_pos_herkunft (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BB',3,'BB',FALSE,NULL);
INSERT INTO agi_mopublic_pub.halignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (0,'Left',0,'Left',FALSE,NULL);
INSERT INTO agi_mopublic_pub.halignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (1,'Center',1,'Center',FALSE,NULL);
INSERT INTO agi_mopublic_pub.halignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (2,'Right',2,'Right',FALSE,NULL);
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'hoehengenauigkeit','ch.ehi.ili2db.unit','cm');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_flaeche',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_flaeche',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_flaeche',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_flaeche',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_flaeche',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_flaeche',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_flaeche',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung_proj',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung_proj',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung_proj',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung_proj',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung_proj',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung_proj',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung_proj',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'lagegenauigkeit','ch.ehi.ili2db.unit','cm');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_punkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_punkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_punkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_punkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_punkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_punkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_punkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_linie',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_linie',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_linie',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_linie',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_linie',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_linie',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_linie',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze_proj',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze_proj',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze_proj',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze_proj',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze_proj',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze_proj',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze_proj',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenname_pos',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'symbolorientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'hoehe','ch.ehi.ili2db.unit','M');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjekt_punkt',NULL,'symbolorientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'symbolorientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenname_pos',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenname_pos',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenname_pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenname_pos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenname_pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenname_pos',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenname_pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektname_pos',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektname_pos',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektname_pos',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektname_pos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektname_pos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektname_pos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektname_pos',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektname_pos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'lagegenauigkeit','ch.ehi.ili2db.unit','cm');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck_proj',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'lagegenauigkeit','ch.ehi.ili2db.unit','cm');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_objektname_pos_herkunft','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_grundstueck','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_bodenbedeckung','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_flurname','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_einzelobjekt_punkt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_gemeindegrenze_proj','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_objektname_pos','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_grundstueck_proj','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_strassenachse','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('valignment','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_einzelobjekt_linie','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_gemeindegrenze','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_rohrleitung','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_fixpunkt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_ortsname','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_strassenname_pos','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_einzelobjekt_flaeche','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_gelaendename','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_grenzpunkt_gueltigkeit','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('halignment','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_gebaeudeadresse','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_bodenbedeckung_proj','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_grenzpunkt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('SO_AGI_MOpublic_20190424.ili','2.3','SO_AGI_MOpublic_20190424{ Units CHAdminCodes_V1 GeometryCHLV95_V1}','INTERLIS 2.3;

/** !!------------------------------------------------------------------------------ 
 * !! Version    | wer | Änderung 
 * !!------------------------------------------------------------------------------ 
 * !! 2017-10-03 | sz  | Erstfassung
 * !! 2017-10-10 | sz  | Anpassung nach Review ns
 * !! 2017-10-12 | sz  | Grundstueck(_Proj).Art_txt -> 40 Zeichen
 * !!            | sz  | XMLTime -> XMLDate
 * !!            | sz  | Einzelobjekte_Punkt -> Einzelobjekt_Punkt
 * !!            | sz  | VAlignmet -> VAli
 * !! 2018-02-21 | sz  | Range für verschiedene Aufzähltypen korrigiert.
 * !!            | sz  | Range für Orientierung korrigiert.
 * !! 2018-04-30 | ns  | Gueltigkeit bei Grenzpunkt hinzugefuegt
 * !! 2019-04-24 | sz  | LFP-Koordinate als Text
 * !!==============================================================================
 */
!!@ technicalContact=agi@bd.so.ch
MODEL SO_AGI_MOpublic_20190424 (de)
AT "http://www.geo.so.ch/models/AGI"
VERSION "2018-04-30"  =
  IMPORTS GeometryCHLV95_V1,Units,CHAdminCodes_V1;

  TOPIC MOpublic =
    OID AS INTERLIS.UUIDOID;

    DOMAIN

      Genauigkeit = 0.0 .. 700.0 [Units.cm];

      Hoehe = -200.000 .. 1600.000 [INTERLIS.M];

      /** In Grad. Einheit, Drehsinn und Nullpunkt an GDI-Software angepasst.
       */
      Orientierung = -270.00 .. 90.00 [Units.Angle_Degree];

    CLASS Bodenbedeckung =
      /** Bodenbedeckungsart (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Eidgenössischer Gebäudeidentifikator
       */
      EGID : 0 .. 999999999;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
    END Bodenbedeckung;

    CLASS Bodenbedeckung_proj =
      /** Bodenbedeckungsart (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Eidgenössischer Gebäudeidentifikator
       */
      EGID : 0 .. 999999999;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
    END Bodenbedeckung_proj;

    CLASS Einzelobjekt_Flaeche =
      /** Einzelobjektart (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Eidgenössischer Gebäudeidentifikator
       */
      EGID : 0 .. 999999999;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
    END Einzelobjekt_Flaeche;

    CLASS Einzelobjekt_Linie =
      /** Einzelobjektart (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Line;
    END Einzelobjekt_Linie;

    CLASS Gemeindegrenze =
      /** Name der Gemeinde
       */
      Gemeindename : MANDATORY TEXT*100;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END Gemeindegrenze;

    CLASS Gemeindegrenze_proj =
      /** Name der Gemeinde
       */
      Gemeindename : MANDATORY TEXT*100;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Line;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END Gemeindegrenze_proj;

    CLASS Rohrleitung =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Line;
      /** Transportmedium (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Betreiber
       */
      Betreiber : MANDATORY TEXT*40;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END Rohrleitung;

    CLASS Strassenachse =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Line;
      /** Strassenname
       */
      Strassenname : TEXT*100;
      /** Ordnung des Strassenstückes
       */
      Ordnung : MANDATORY 1 .. 9999;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END Strassenachse;

    CLASS Einzelobjekt_Punkt =
      /** Einzelobjektart (Txt-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Orientierung des Symbols
       */
      Symbolorientierung : MANDATORY Orientierung;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Coord2;
    END Einzelobjekt_Punkt;

    CLASS Fixpunkt =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Fixpunkttyp (Text-Repräsentation)
       */
      Typ_txt : MANDATORY TEXT*100;
      /** Nummerierungsbereichidentifikator
       */
      NBIdent : MANDATORY TEXT*12;
      /** Bezeichnung des Fixpunktes
       */
      Nummer : TEXT*12;
      /** Höhe
       */
      Hoehe : Hoehe;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Lagegenauigkeit
       */
      Lagegenauigkeit : MANDATORY Genauigkeit;
      /** Höhengenauigkeit
       */
      Hoehengenauigkeit : Genauigkeit;
      /** Punktzeichen (Text-Repräsentation)
       */
      Punktzeichen_txt : MANDATORY TEXT*100;
      /** Positionierungspunkt für Beschriftung
       */
      Pos : GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : Orientierung;
      /** HAlignment
       */
      HAli : INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : INTERLIS.VALIGNMENT;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Koordinate (Text-Repräsentation)
       */
      Koordinate : MANDATORY TEXT*40;
    END Fixpunkt;

    CLASS Flurname =
      /** Flurname
       */
      Flurname : MANDATORY TEXT*100;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Positionierungspunkt für Beschriftung
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** HAlignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** Name der Gemeinde
       */
      Gemeinde : MANDATORY TEXT*255;
    END Flurname;

    CLASS Gebaeudeadresse =
      /** Lage des Gebäudeeingangs
       */
      Lage : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Name der Strasse
       */
      Strassenname : TEXT*100;
      /** Hausnummer
       */
      Hausnummer : TEXT*20;
      /** Eidgenössischer Gebäudeidentifikator
       */
      EGID : 0 .. 999999999;
      /** Eidgenössischer Eingangsidentifikator
       */
      EDID : 0 .. 99;
      /** Vierstellige Postleitzahl
       */
      PLZ : MANDATORY 0 .. 9999;
      /** Ortschaftsname
       */
      Ortschaft : MANDATORY TEXT*100;
      /** Status des Gebäudeinganges
       */
      Status : TEXT*20;
      /** Ist Adresse offiziell? ja/nein
       */
      ist_offizielle_bezeichnung : BOOLEAN;
      /** Relative Lage des Gebäudeeinganges
       */
      Hoehenlage : -99 .. 99;
      /** Name des Gebäudes
       */
      Gebaeudename : TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Positionierungspunkt für Beschriftung der Hausnummer
       */
      Pos : GeometryCHLV95_V1.Coord2;
      /** Orientierung des Beschriftungstextes
       */
      Orientierung : Orientierung;
      /** HAlignment
       */
      HAli : INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : INTERLIS.VALIGNMENT;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END Gebaeudeadresse;

    CLASS Gelaendename =
      /** Geländename
       */
      Gelaendename : MANDATORY TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Positionierungspunkt für Beschriftung
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** HAlignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Name der Gemeinde
       */
      Gemeinde : MANDATORY TEXT*255;
    END Gelaendename;

    CLASS Grenzpunkt =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Lagegenauigkeit
       */
      Lagegenauigkeit : MANDATORY Genauigkeit;
      /** Ist Lagebestimmung zuverlässig? ja/nein
       */
      Lagezuverlaessigkeit : MANDATORY BOOLEAN;
      /** Art des Punktzeichens (Text-Repräsentation)
       */
      Punktzeichen_txt : MANDATORY TEXT*100;
      /** Symbolorientierung
       */
      Symbolorientierung : Orientierung;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Gueltigkeit
       */
      Gueltigkeit : MANDATORY (
        projektiert,
        gueltig
      );
    END Grenzpunkt;

    CLASS Grundstueck =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Surface;
      /** Nummerierungsbereichidentifikator
       */
      NBIdent : MANDATORY TEXT*12;
      /** Grundbuchnummer
       */
      Nummer : MANDATORY TEXT*15;
      /** Grundstücksart (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Fläche des Grundstückes in m2
       */
      Flaechenmass : MANDATORY 0 .. 9999999999;
      /** Eidgenössischer Grundstücksidentifikator
       */
      EGRID : TEXT*14;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Positionierungspunkt für Beschriftung
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** HAlignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Name des Grundbuchs (= Grundbuchkreis)
       */
      Grundbuch : MANDATORY TEXT*255;
      /** Name der Gemeinde
       */
      Gemeinde : MANDATORY TEXT*255;
    END Grundstueck;

    CLASS Grundstueck_proj =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
      /** Nummerierungsbereichidentifikator
       */
      NBIdent : MANDATORY TEXT*12;
      /** Grundbuchnummer
       */
      Nummer : MANDATORY TEXT*15;
      /** Grundstücksart (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Fläche des Grundstückes in m2
       */
      Flaechenmass : MANDATORY 0 .. 9999999999;
      /** Eidgenössischer Grundstücksidentifikator
       */
      EGRID : TEXT*14;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Positionierungspunkt für Beschriftung
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** HAlignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Name des Grundbuchs (= Grundbuchkreis)
       */
      Grundbuch : MANDATORY TEXT*255;
      /** Name der Gemeinde
       */
      Gemeinde : MANDATORY TEXT*255;
    END Grundstueck_proj;

    CLASS Hoheitsgrenzpunkt =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Nummer des Hoheitsgrenzpunktes
       */
      Nummer : TEXT*20;
      /** Punktzeichen (Text-Repräsentation)
       */
      Punktzeichen_txt : MANDATORY TEXT*100;
      /** Schöner Stein? ja/nein
       */
      schoener_Stein : MANDATORY BOOLEAN;
      /** Lagegenauigkeit
       */
      Lagegenauigkeit : MANDATORY Genauigkeit;
      /** Ist Lagebestimmung zuverlässig? ja/nein
       */
      Lagezuverlaessigkeit : MANDATORY BOOLEAN;
      /** Textorientierung
       */
      Symbolorientierung : Orientierung;
      /** HAlignment
       */
      HAli : INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : INTERLIS.VALIGNMENT;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Positionierungspunkt für Beschriftung
       */
      Pos : GeometryCHLV95_V1.Coord2;
    END Hoheitsgrenzpunkt;

    CLASS Objektname_Pos =
      /** Name des Objektes
       */
      Objektname : MANDATORY TEXT*100;
      /** Position
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** Halignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** Valignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
      /** Art des Objektnamens, aus Art BB/EO. (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Herkunft des Objektnames
       */
      Herkunft : MANDATORY (
        EO_Punkt,
        EO_Linie,
        EO_Flaeche,
        BB
      );
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Status der Geometrie: projektiert/realisiert
       */
      Status : MANDATORY TEXT*20;
    END Objektname_Pos;

    CLASS Ortsname =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
      /** Ortsname
       */
      Ortsname : MANDATORY TEXT*40;
      /** Positionierungspunkt für Beschriftung
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** HAlignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END Ortsname;

    CLASS Strassenname_Pos =
      /** Strassenname
       */
      Strassenname : MANDATORY TEXT*100;
      /** Positionierungspunkt für Beschriftung
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** HAlignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END Strassenname_Pos;

  END MOpublic;

END SO_AGI_MOpublic_20190424.
','2019-10-31 17:04:30.876');
INSERT INTO agi_mopublic_pub.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CoordSys-20151124.ili','2.3','CoordSys','!! File CoordSys.ili Release 2015-11-24

INTERLIS 2.3;

!! 2015-11-24 Cardinalities adapted (line 122, 123, 124, 132, 133, 134, 142, 143,
!!                                   148, 149, 163, 164, 168, 169, 206 and 207)
!!@precursorVersion = 2005-06-16

REFSYSTEM MODEL CoordSys (en) AT "http://www.interlis.ch/models"
  VERSION "2015-11-24" =

  UNIT
    Angle_Degree = 180 / PI [INTERLIS.rad];
    Angle_Minute = 1 / 60 [Angle_Degree];
    Angle_Second = 1 / 60 [Angle_Minute];

  STRUCTURE Angle_DMS_S =
    Degrees: -180 .. 180 CIRCULAR [Angle_Degree];
    CONTINUOUS SUBDIVISION Minutes: 0 .. 59 CIRCULAR [Angle_Minute];
    CONTINUOUS SUBDIVISION Seconds: 0.000 .. 59.999 CIRCULAR [Angle_Second];
  END Angle_DMS_S;

  DOMAIN
    Angle_DMS = FORMAT BASED ON Angle_DMS_S (Degrees ":" Minutes ":" Seconds);
    Angle_DMS_90 EXTENDS Angle_DMS = "-90:00:00.000" .. "90:00:00.000";


  TOPIC CoordsysTopic =

    !! Special space aspects to be referenced
    !! **************************************

    CLASS Ellipsoid EXTENDS INTERLIS.REFSYSTEM =
      EllipsoidAlias: TEXT*70;
      SemiMajorAxis: MANDATORY 6360000.0000 .. 6390000.0000 [INTERLIS.m];
      InverseFlattening: MANDATORY 0.00000000 .. 350.00000000;
      !! The inverse flattening 0 characterizes the 2-dim sphere
      Remarks: TEXT*70;
    END Ellipsoid;

    CLASS GravityModel EXTENDS INTERLIS.REFSYSTEM =
      GravityModAlias: TEXT*70;
      Definition: TEXT*70;
    END GravityModel;

    CLASS GeoidModel EXTENDS INTERLIS.REFSYSTEM =
      GeoidModAlias: TEXT*70;
      Definition: TEXT*70;
    END GeoidModel;


    !! Coordinate systems for geodetic purposes
    !! ****************************************

    STRUCTURE LengthAXIS EXTENDS INTERLIS.AXIS =
      ShortName: TEXT*12;
      Description: TEXT*255;
    PARAMETER
      Unit (EXTENDED): NUMERIC [INTERLIS.LENGTH];
    END LengthAXIS;

    STRUCTURE AngleAXIS EXTENDS INTERLIS.AXIS =
      ShortName: TEXT*12;
      Description: TEXT*255;
    PARAMETER
      Unit (EXTENDED): NUMERIC [INTERLIS.ANGLE];
    END AngleAXIS;

    CLASS GeoCartesian1D EXTENDS INTERLIS.COORDSYSTEM =
      Axis (EXTENDED): LIST {1} OF LengthAXIS;
    END GeoCartesian1D;

    CLASS GeoHeight EXTENDS GeoCartesian1D =
      System: MANDATORY (
        normal,
        orthometric,
        ellipsoidal,
        other);
      ReferenceHeight: MANDATORY -10000.000 .. +10000.000 [INTERLIS.m];
      ReferenceHeightDescr: TEXT*70;
    END GeoHeight;

    ASSOCIATION HeightEllips =
      GeoHeightRef -- {*} GeoHeight;
      EllipsoidRef -- {1} Ellipsoid;
    END HeightEllips;

    ASSOCIATION HeightGravit =
      GeoHeightRef -- {*} GeoHeight;
      GravityRef -- {1} GravityModel;
    END HeightGravit;

    ASSOCIATION HeightGeoid =
      GeoHeightRef -- {*} GeoHeight;
      GeoidRef -- {1} GeoidModel;
    END HeightGeoid;

    CLASS GeoCartesian2D EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {2} OF LengthAXIS;
    END GeoCartesian2D;

    CLASS GeoCartesian3D EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {3} OF LengthAXIS;
    END GeoCartesian3D;

    CLASS GeoEllipsoidal EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {2} OF AngleAXIS;
    END GeoEllipsoidal;

    ASSOCIATION EllCSEllips =
      GeoEllipsoidalRef -- {*} GeoEllipsoidal;
      EllipsoidRef -- {1} Ellipsoid;
    END EllCSEllips;


    !! Mappings between coordinate systems
    !! ***********************************

    ASSOCIATION ToGeoEllipsoidal =
      From -- {0..*} GeoCartesian3D;
      To -- {0..*} GeoEllipsoidal;
      ToHeight -- {0..*} GeoHeight;
    MANDATORY CONSTRAINT
      ToHeight -> System == #ellipsoidal;
    MANDATORY CONSTRAINT
      To -> EllipsoidRef -> Name == ToHeight -> EllipsoidRef -> Name;
    END ToGeoEllipsoidal;

    ASSOCIATION ToGeoCartesian3D =
      From2 -- {0..*} GeoEllipsoidal;
      FromHeight-- {0..*} GeoHeight;
      To3 -- {0..*} GeoCartesian3D;
    MANDATORY CONSTRAINT
      FromHeight -> System == #ellipsoidal;
    MANDATORY CONSTRAINT
      From2 -> EllipsoidRef -> Name == FromHeight -> EllipsoidRef -> Name;
    END ToGeoCartesian3D;

    ASSOCIATION BidirectGeoCartesian2D =
      From -- {0..*} GeoCartesian2D;
      To -- {0..*} GeoCartesian2D;
    END BidirectGeoCartesian2D;

    ASSOCIATION BidirectGeoCartesian3D =
      From -- {0..*} GeoCartesian3D;
      To2 -- {0..*} GeoCartesian3D;
      Precision: MANDATORY (
        exact,
        measure_based);
      ShiftAxis1: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      ShiftAxis2: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      ShiftAxis3: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      RotationAxis1: Angle_DMS_90;
      RotationAxis2: Angle_DMS_90;
      RotationAxis3: Angle_DMS_90;
      NewScale: 0.000001 .. 1000000.000000;
    END BidirectGeoCartesian3D;

    ASSOCIATION BidirectGeoEllipsoidal =
      From4 -- {0..*} GeoEllipsoidal;
      To4 -- {0..*} GeoEllipsoidal;
    END BidirectGeoEllipsoidal;

    ASSOCIATION MapProjection (ABSTRACT) =
      From5 -- {0..*} GeoEllipsoidal;
      To5 -- {0..*} GeoCartesian2D;
      FromCo1_FundPt: MANDATORY Angle_DMS_90;
      FromCo2_FundPt: MANDATORY Angle_DMS_90;
      ToCoord1_FundPt: MANDATORY -10000000 .. +10000000 [INTERLIS.m];
      ToCoord2_FundPt: MANDATORY -10000000 .. +10000000 [INTERLIS.m];
    END MapProjection;

    ASSOCIATION TransverseMercator EXTENDS MapProjection =
    END TransverseMercator;

    ASSOCIATION SwissProjection EXTENDS MapProjection =
      IntermFundP1: MANDATORY Angle_DMS_90;
      IntermFundP2: MANDATORY Angle_DMS_90;
    END SwissProjection;

    ASSOCIATION Mercator EXTENDS MapProjection =
    END Mercator;

    ASSOCIATION ObliqueMercator EXTENDS MapProjection =
    END ObliqueMercator;

    ASSOCIATION Lambert EXTENDS MapProjection =
    END Lambert;

    ASSOCIATION Polyconic EXTENDS MapProjection =
    END Polyconic;

    ASSOCIATION Albus EXTENDS MapProjection =
    END Albus;

    ASSOCIATION Azimutal EXTENDS MapProjection =
    END Azimutal;

    ASSOCIATION Stereographic EXTENDS MapProjection =
    END Stereographic;

    ASSOCIATION HeightConversion =
      FromHeight -- {0..*} GeoHeight;
      ToHeight -- {0..*} GeoHeight;
      Definition: TEXT*70;
    END HeightConversion;

  END CoordsysTopic;

END CoordSys.

','2019-10-31 17:04:30.876');
INSERT INTO agi_mopublic_pub.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('Units-20120220.ili','2.3','Units','!! File Units.ili Release 2012-02-20

INTERLIS 2.3;

!! 2012-02-20 definition of "Bar [bar]" corrected
!!@precursorVersion = 2005-06-06

CONTRACTED TYPE MODEL Units (en) AT "http://www.interlis.ch/models"
  VERSION "2012-02-20" =

  UNIT
    !! abstract Units
    Area (ABSTRACT) = (INTERLIS.LENGTH*INTERLIS.LENGTH);
    Volume (ABSTRACT) = (INTERLIS.LENGTH*INTERLIS.LENGTH*INTERLIS.LENGTH);
    Velocity (ABSTRACT) = (INTERLIS.LENGTH/INTERLIS.TIME);
    Acceleration (ABSTRACT) = (Velocity/INTERLIS.TIME);
    Force (ABSTRACT) = (INTERLIS.MASS*INTERLIS.LENGTH/INTERLIS.TIME/INTERLIS.TIME);
    Pressure (ABSTRACT) = (Force/Area);
    Energy (ABSTRACT) = (Force*INTERLIS.LENGTH);
    Power (ABSTRACT) = (Energy/INTERLIS.TIME);
    Electric_Potential (ABSTRACT) = (Power/INTERLIS.ELECTRIC_CURRENT);
    Frequency (ABSTRACT) = (INTERLIS.DIMENSIONLESS/INTERLIS.TIME);

    Millimeter [mm] = 0.001 [INTERLIS.m];
    Centimeter [cm] = 0.01 [INTERLIS.m];
    Decimeter [dm] = 0.1 [INTERLIS.m];
    Kilometer [km] = 1000 [INTERLIS.m];

    Square_Meter [m2] EXTENDS Area = (INTERLIS.m*INTERLIS.m);
    Cubic_Meter [m3] EXTENDS Volume = (INTERLIS.m*INTERLIS.m*INTERLIS.m);

    Minute [min] = 60 [INTERLIS.s];
    Hour [h] = 60 [min];
    Day [d] = 24 [h];

    Kilometer_per_Hour [kmh] EXTENDS Velocity = (km/h);
    Meter_per_Second [ms] = 3.6 [kmh];
    Newton [N] EXTENDS Force = (INTERLIS.kg*INTERLIS.m/INTERLIS.s/INTERLIS.s);
    Pascal [Pa] EXTENDS Pressure = (N/m2);
    Joule [J] EXTENDS Energy = (N*INTERLIS.m);
    Watt [W] EXTENDS Power = (J/INTERLIS.s);
    Volt [V] EXTENDS Electric_Potential = (W/INTERLIS.A);

    Inch [in] = 2.54 [cm];
    Foot [ft] = 0.3048 [INTERLIS.m];
    Mile [mi] = 1.609344 [km];

    Are [a] = 100 [m2];
    Hectare [ha] = 100 [a];
    Square_Kilometer [km2] = 100 [ha];
    Acre [acre] = 4046.873 [m2];

    Liter [L] = 1 / 1000 [m3];
    US_Gallon [USgal] = 3.785412 [L];

    Angle_Degree = 180 / PI [INTERLIS.rad];
    Angle_Minute = 1 / 60 [Angle_Degree];
    Angle_Second = 1 / 60 [Angle_Minute];

    Gon = 200 / PI [INTERLIS.rad];

    Gram [g] = 1 / 1000 [INTERLIS.kg];
    Ton [t] = 1000 [INTERLIS.kg];
    Pound [lb] = 0.4535924 [INTERLIS.kg];

    Calorie [cal] = 4.1868 [J];
    Kilowatt_Hour [kWh] = 0.36E7 [J];

    Horsepower = 746 [W];

    Techn_Atmosphere [at] = 98066.5 [Pa];
    Atmosphere [atm] = 101325 [Pa];
    Bar [bar] = 100000 [Pa];
    Millimeter_Mercury [mmHg] = 133.3224 [Pa];
    Torr = 133.3224 [Pa]; !! Torr = [mmHg]

    Decibel [dB] = FUNCTION // 10**(dB/20) * 0.00002 // [Pa];

    Degree_Celsius [oC] = FUNCTION // oC+273.15 // [INTERLIS.K];
    Degree_Fahrenheit [oF] = FUNCTION // (oF+459.67)/1.8 // [INTERLIS.K];

    CountedObjects EXTENDS INTERLIS.DIMENSIONLESS;

    Hertz [Hz] EXTENDS Frequency = (CountedObjects/INTERLIS.s);
    KiloHertz [KHz] = 1000 [Hz];
    MegaHertz [MHz] = 1000 [KHz];

    Percent = 0.01 [CountedObjects];
    Permille = 0.001 [CountedObjects];

    !! ISO 4217 Currency Abbreviation
    USDollar [USD] EXTENDS INTERLIS.MONEY;
    Euro [EUR] EXTENDS INTERLIS.MONEY;
    SwissFrancs [CHF] EXTENDS INTERLIS.MONEY;

END Units.

','2019-10-31 17:04:30.876');
INSERT INTO agi_mopublic_pub.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part2_LOCALISATION_20110830.ili','2.3','InternationalCodes_V1 Localisation_V1{ InternationalCodes_V1} LocalisationCH_V1{ InternationalCodes_V1 Localisation_V1} Dictionaries_V1{ InternationalCodes_V1} DictionariesCH_V1{ Dictionaries_V1 InternationalCodes_V1}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART II -- LOCALISATION
   - Package InternationalCodes
   - Packages Localisation, LocalisationCH
   - Packages Dictionaries, DictionariesCH
*/

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL InternationalCodes_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  DOMAIN
    LanguageCode_ISO639_1 = (de,fr,it,rm,en,
      aa,ab,af,am,ar,as,ay,az,ba,be,bg,bh,bi,bn,bo,br,ca,co,cs,cy,da,dz,el,
      eo,es,et,eu,fa,fi,fj,fo,fy,ga,gd,gl,gn,gu,ha,he,hi,hr,hu,hy,ia,id,ie,
      ik,is,iu,ja,jw,ka,kk,kl,km,kn,ko,ks,ku,ky,la,ln,lo,lt,lv,mg,mi,mk,ml,
      mn,mo,mr,ms,mt,my,na,ne,nl,no,oc,om,or,pa,pl,ps,pt,qu,rn,ro,ru,rw,sa,
      sd,sg,sh,si,sk,sl,sm,sn,so,sq,sr,ss,st,su,sv,sw,ta,te,tg,th,ti,tk,tl,
      tn,to,tr,ts,tt,tw,ug,uk,ur,uz,vi,vo,wo,xh,yi,yo,za,zh,zu);

    CountryCode_ISO3166_1 = (CHE,
      ABW,AFG,AGO,AIA,ALA,ALB,AND_,ANT,ARE,ARG,ARM,ASM,ATA,ATF,ATG,AUS,
      AUT,AZE,BDI,BEL,BEN,BFA,BGD,BGR,BHR,BHS,BIH,BLR,BLZ,BMU,BOL,BRA,
      BRB,BRN,BTN,BVT,BWA,CAF,CAN,CCK,CHL,CHN,CIV,CMR,COD,COG,COK,COL,
      COM,CPV,CRI,CUB,CXR,CYM,CYP,CZE,DEU,DJI,DMA,DNK,DOM,DZA,ECU,EGY,
      ERI,ESH,ESP,EST,ETH,FIN,FJI,FLK,FRA,FRO,FSM,GAB,GBR,GEO,GGY,GHA,
      GIB,GIN,GLP,GMB,GNB,GNQ,GRC,GRD,GRL,GTM,GUF,GUM,GUY,HKG,HMD,HND,
      HRV,HTI,HUN,IDN,IMN,IND,IOT,IRL,IRN,IRQ,ISL,ISR,ITA,JAM,JEY,JOR,
      JPN,KAZ,KEN,KGZ,KHM,KIR,KNA,KOR,KWT,LAO,LBN,LBR,LBY,LCA,LIE,LKA,
      LSO,LTU,LUX,LVA,MAC,MAR,MCO,MDA,MDG,MDV,MEX,MHL,MKD,MLI,MLT,MMR,
      MNE,MNG,MNP,MOZ,MRT,MSR,MTQ,MUS,MWI,MYS,MYT,NAM,NCL,NER,NFK,NGA,
      NIC,NIU,NLD,NOR,NPL,NRU,NZL,OMN,PAK,PAN,PCN,PER,PHL,PLW,PNG,POL,
      PRI,PRK,PRT,PRY,PSE,PYF,QAT,REU,ROU,RUS,RWA,SAU,SDN,SEN,SGP,SGS,
      SHN,SJM,SLB,SLE,SLV,SMR,SOM,SPM,SRB,STP,SUR,SVK,SVN,SWE,SWZ,SYC,
      SYR,TCA,TCD,TGO,THA,TJK,TKL,TKM,TLS,TON,TTO,TUN,TUR,TUV,TWN,TZA,
      UGA,UKR,UMI,URY,USA,UZB,VAT,VCT,VEN,VGB,VIR,VNM,VUT,WLF,WSM,YEM,
      ZAF,ZMB,ZWE);

END InternationalCodes_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL Localisation_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;

  STRUCTURE LocalisedText =
    Language: LanguageCode_ISO639_1;
    Text: MANDATORY TEXT;
  END LocalisedText;
  
  STRUCTURE LocalisedMText =
    Language: LanguageCode_ISO639_1;
    Text: MANDATORY MTEXT;
  END LocalisedMText;

  STRUCTURE MultilingualText =
    LocalisedText : BAG {1..*} OF LocalisedText;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualText;  
  
  STRUCTURE MultilingualMText =
    LocalisedText : BAG {1..*} OF LocalisedMText;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualMText;

END Localisation_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL LocalisationCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Localisation_V1;

  STRUCTURE LocalisedText EXTENDS Localisation_V1.LocalisedText =
  MANDATORY CONSTRAINT
    Language == #de OR
    Language == #fr OR
    Language == #it OR
    Language == #rm OR
    Language == #en;
  END LocalisedText;
  
  STRUCTURE LocalisedMText EXTENDS Localisation_V1.LocalisedMText =
  MANDATORY CONSTRAINT
    Language == #de OR
    Language == #fr OR
    Language == #it OR
    Language == #rm OR
    Language == #en;
  END LocalisedMText;

  STRUCTURE MultilingualText EXTENDS Localisation_V1.MultilingualText =
    LocalisedText(EXTENDED) : BAG {1..*} OF LocalisedText;
  END MultilingualText;  
  
  STRUCTURE MultilingualMText EXTENDS Localisation_V1.MultilingualMText =
    LocalisedText(EXTENDED) : BAG {1..*} OF LocalisedMText;
  END MultilingualMText;

END LocalisationCH_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL Dictionaries_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;

  TOPIC Dictionaries (ABSTRACT) =

    STRUCTURE Entry (ABSTRACT) =
      Text: MANDATORY TEXT;
    END Entry;
      
    CLASS Dictionary =
      Language: MANDATORY LanguageCode_ISO639_1;
      Entries: LIST OF Entry;
    END Dictionary;

  END Dictionaries;

END Dictionaries_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL DictionariesCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Dictionaries_V1;

  TOPIC Dictionaries (ABSTRACT) EXTENDS Dictionaries_V1.Dictionaries =

    CLASS Dictionary (EXTENDED) =
    MANDATORY CONSTRAINT
      Language == #de OR
      Language == #fr OR
      Language == #it OR
      Language == #rm OR
      Language == #en;
    END Dictionary;

  END Dictionaries;

END DictionariesCH_V1.

!! ########################################################################
','2019-10-31 17:04:30.876');
INSERT INTO agi_mopublic_pub.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part1_GEOMETRY_20110830.ili','2.3','GeometryCHLV03_V1{ INTERLIS CoordSys Units} GeometryCHLV95_V1{ INTERLIS CoordSys Units}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-0830
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART I -- GEOMETRY
   - Package GeometryCHLV03
   - Package GeometryCHLV95
*/

!! ########################################################################

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 57, 58, 65 and 66)
!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 57 and 58)
!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 31, 44 and 50)
!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected

!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL GeometryCHLV03_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS Units;
  IMPORTS CoordSys;

  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic
    OBJECTS OF GeoCartesian2D: CHLV03
    OBJECTS OF GeoHeight: SwissOrthometricAlt;

  DOMAIN
    !!@CRS=EPSG:21781
    Coord2 = COORD
      460000.000 .. 870000.000 [m] {CHLV03[1]},
       45000.000 .. 310000.000 [m] {CHLV03[2]},
      ROTATION 2 -> 1;

    !!@CRS=EPSG:21781
    Coord3 = COORD
      460000.000 .. 870000.000 [m] {CHLV03[1]},
       45000.000 .. 310000.000 [m] {CHLV03[2]},
        -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},
      ROTATION 2 -> 1;

    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;
    DirectedLine EXTENDS Line = DIRECTED POLYLINE;
    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    
    /* minimal overlaps only (2mm) */
    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;
    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;

    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;

    Accuracy = (cm, cm50, m, m10, m50, vague);
    Method = (measured, sketched, calculated);

    STRUCTURE LineStructure = 
      Line: Line;
    END LineStructure;

    STRUCTURE DirectedLineStructure =
      Line: DirectedLine;
    END DirectedLineStructure;

    STRUCTURE MultiLine =
      Lines: BAG {1..*} OF LineStructure;
    END MultiLine;

    STRUCTURE MultiDirectedLine =
      Lines: BAG {1..*} OF DirectedLineStructure;
    END MultiDirectedLine;

    STRUCTURE SurfaceStructure =
      Surface: Surface;
    END SurfaceStructure;

    STRUCTURE MultiSurface =
      Surfaces: BAG {1..*} OF SurfaceStructure;
    END MultiSurface;

END GeometryCHLV03_V1.

!! ########################################################################

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 135, 136, 143 and 144)
!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 135 and 136)
!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 109, 122 and 128)
!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected

!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL GeometryCHLV95_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS Units;
  IMPORTS CoordSys;

  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic
    OBJECTS OF GeoCartesian2D: CHLV95
    OBJECTS OF GeoHeight: SwissOrthometricAlt;

  DOMAIN
    !!@CRS=EPSG:2056
    Coord2 = COORD
      2460000.000 .. 2870000.000 [m] {CHLV95[1]},
      1045000.000 .. 1310000.000 [m] {CHLV95[2]},
      ROTATION 2 -> 1;

    !!@CRS=EPSG:2056
    Coord3 = COORD
      2460000.000 .. 2870000.000 [m] {CHLV95[1]},
      1045000.000 .. 1310000.000 [m] {CHLV95[2]},
         -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},
      ROTATION 2 -> 1;

    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;
    DirectedLine EXTENDS Line = DIRECTED POLYLINE;
    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    
    /* minimal overlaps only (2mm) */
    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;
    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;

    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;

    Accuracy = (cm, cm50, m, m10, m50, vague);
    Method = (measured, sketched, calculated);

    STRUCTURE LineStructure = 
      Line: Line;
    END LineStructure;

    STRUCTURE DirectedLineStructure =
      Line: DirectedLine;
    END DirectedLineStructure;

    STRUCTURE MultiLine =
      Lines: BAG {1..*} OF LineStructure;
    END MultiLine;

    STRUCTURE MultiDirectedLine =
      Lines: BAG {1..*} OF DirectedLineStructure;
    END MultiDirectedLine;

    STRUCTURE SurfaceStructure =
      Surface: Surface;
    END SurfaceStructure;

    STRUCTURE MultiSurface =
      Surfaces: BAG {1..*} OF SurfaceStructure;
    END MultiSurface;

END GeometryCHLV95_V1.

!! ########################################################################
','2019-10-31 17:04:30.876');
INSERT INTO agi_mopublic_pub.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part4_ADMINISTRATIVEUNITS_20110830.ili','2.3','CHAdminCodes_V1 AdministrativeUnits_V1{ Dictionaries_V1 INTERLIS CHAdminCodes_V1 InternationalCodes_V1 Localisation_V1} AdministrativeUnitsCH_V1{ LocalisationCH_V1 INTERLIS CHAdminCodes_V1 InternationalCodes_V1 AdministrativeUnits_V1}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART IV -- ADMINISTRATIVE UNITS
   - Package CHAdminCodes
   - Package AdministrativeUnits
   - Package AdministrativeUnitsCH
*/

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2018-02-19 | KOGIS | CHCantonCode adapted (FL and CH added) (line 34)

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL CHAdminCodes_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2018-02-19" =

  DOMAIN
    CHCantonCode = (ZH,BE,LU,UR,SZ,OW,NW,GL,ZG,FR,SO,BS,BL,SH,AR,AI,SG,
                    GR,AG,TG,TI,VD,VS,NE,GE,JU,FL,CH);

    CHMunicipalityCode = 1..9999;  !! BFS-Nr

END CHAdminCodes_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL AdministrativeUnits_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS UNQUALIFIED CHAdminCodes_V1;
  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Localisation_V1;
  IMPORTS Dictionaries_V1;

  TOPIC AdministrativeUnits (ABSTRACT) =

    CLASS AdministrativeElement (ABSTRACT) =
    END AdministrativeElement;

    CLASS AdministrativeUnit (ABSTRACT) EXTENDS AdministrativeElement =
    END AdministrativeUnit;

    ASSOCIATION Hierarchy =
      UpperLevelUnit (EXTERNAL) -<> {0..1} AdministrativeUnit;
      LowerLevelUnit -- AdministrativeUnit;
    END Hierarchy;

    CLASS AdministrativeUnion (ABSTRACT) EXTENDS AdministrativeElement =
    END AdministrativeUnion;

    ASSOCIATION UnionMembers =
      Union -<> AdministrativeUnion;
      Member -- AdministrativeElement; 
    END UnionMembers;

  END AdministrativeUnits;

  TOPIC Countries EXTENDS AdministrativeUnits =

    CLASS Country EXTENDS AdministrativeUnit =
      Code: MANDATORY CountryCode_ISO3166_1;
    UNIQUE Code;
    END Country;

  END Countries;

  TOPIC CountryNames EXTENDS Dictionaries_V1.Dictionaries =
    DEPENDS ON AdministrativeUnits_V1.Countries;

    STRUCTURE CountryName EXTENDS Entry =
      Code: MANDATORY CountryCode_ISO3166_1;
    END CountryName;
      
    CLASS CountryNamesTranslation EXTENDS Dictionary  =
      Entries(EXTENDED): LIST OF CountryName;
    UNIQUE Entries->Code;
    EXISTENCE CONSTRAINT
      Entries->Code REQUIRED IN AdministrativeUnits_V1.Countries.Country: Code;
    END CountryNamesTranslation;

  END CountryNames;

  TOPIC Agencies (ABSTRACT) =
    DEPENDS ON AdministrativeUnits_V1.AdministrativeUnits;

    CLASS Agency (ABSTRACT) =
    END Agency;

    ASSOCIATION Authority =
      Supervisor (EXTERNAL) -<> {1..1} Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;
      Agency -- Agency;
    END Authority;

    ASSOCIATION Organisation =
      Orderer (EXTERNAL) -- Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;
      Executor -- Agency;
    END Organisation;

  END Agencies;

END AdministrativeUnits_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL AdministrativeUnitsCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS UNQUALIFIED CHAdminCodes_V1;
  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS LocalisationCH_V1;
  IMPORTS AdministrativeUnits_V1;

  TOPIC CHCantons EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnits_V1.Countries;

    CLASS CHCanton EXTENDS AdministrativeUnit =
      Code: MANDATORY CHCantonCode;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
    UNIQUE Code;
    END CHCanton;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnits_V1.Countries.Country;
      LowerLevelUnit (EXTENDED) -- CHCanton;
    MANDATORY CONSTRAINT
      UpperLevelUnit->Code == "CHE";
    END Hierarchy;

  END CHCantons;

  TOPIC CHDistricts EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;

    CLASS CHDistrict EXTENDS AdministrativeUnit =
      ShortName: MANDATORY TEXT*20;
      Name: LocalisationCH_V1.MultilingualText;
      Web: MANDATORY URI;
    END CHDistrict;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton;
      LowerLevelUnit (EXTENDED) -- CHDistrict;
    UNIQUE UpperLevelUnit->Code, LowerLevelUnit->ShortName;
    END Hierarchy;

  END CHDistricts;

  TOPIC CHMunicipalities EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;

    CLASS CHMunicipality EXTENDS AdministrativeUnit =
      Code: MANDATORY CHMunicipalityCode;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
    UNIQUE Code;
    END CHMunicipality;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton
      OR AdministrativeUnitsCH_V1.CHDistricts.CHDistrict;
      LowerLevelUnit (EXTENDED) -- CHMunicipality;
    END Hierarchy;

  END CHMunicipalities;

  TOPIC CHAdministrativeUnions EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnits_V1.Countries;
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;
    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;

    CLASS AdministrativeUnion (EXTENDED) =
    OID AS UUIDOID;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
      Description: LocalisationCH_V1.MultilingualMText;
    END AdministrativeUnion;

  END CHAdministrativeUnions;

  TOPIC CHAgencies EXTENDS AdministrativeUnits_V1.Agencies =
    DEPENDS ON AdministrativeUnits_V1.Countries;
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;
    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;

    CLASS Agency (EXTENDED) =
    OID AS UUIDOID;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
      Description: LocalisationCH_V1.MultilingualMText;
    END Agency;

  END CHAgencies;

END AdministrativeUnitsCH_V1.

!! ########################################################################
','2019-10-31 17:04:30.876');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createMetaInfo','True');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiPointTrafo','coalesce');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.nameOptimization','topic');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.maxSqlNameLength','60');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.beautifyEnumDispName','underscore');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiLineTrafo','coalesce');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.jsonTrafo','coalesce');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.StrokeArcs','enable');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKey','yes');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uniqueConstraints','create');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.sqlgen.createGeomIndex','True');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uuidDefaultValue','uuid_generate_v4()');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsAuthority','EPSG');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.arrayTrafo','coalesce');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsCode','2056');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKeyIndex','yes');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createEnumDefs','multiTable');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.inheritanceTrafo','smart1');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.sender','ili2pg-4.3.1-23b1f79e8ad644414773bb9bd1a97c8c265c5082');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.numericCheckConstraints','create');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.localisedTrafo','expand');
INSERT INTO agi_mopublic_pub.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.interlis.ili2c.ilidirs','%ILI_FROM_DB;%XTF_DIR;http://models.interlis.ch/;%JAR_DIR');
INSERT INTO agi_mopublic_pub.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','technicalContact','models@geo.admin.ch');
INSERT INTO agi_mopublic_pub.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO agi_mopublic_pub.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','technicalContact','models@geo.admin.ch');
INSERT INTO agi_mopublic_pub.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO agi_mopublic_pub.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','technicalContact','models@geo.admin.ch');
INSERT INTO agi_mopublic_pub.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO agi_mopublic_pub.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','technicalContact','models@geo.admin.ch');
INSERT INTO agi_mopublic_pub.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO agi_mopublic_pub.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('SO_AGI_MOpublic_20190424','technicalContact','agi@bd.so.ch');
