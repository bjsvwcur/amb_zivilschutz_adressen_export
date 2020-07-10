CREATE SCHEMA IF NOT EXISTS amb_zivilschutz_adressen_staging_pub
;
COMMENT ON SCHEMA amb_zivilschutz_adressen_staging_pub
    IS 'Staging-Schema für monatlichen Adressenexport nach CSV; Kontakt: oliver.jeker@bd.so.ch'
;
CREATE TABLE amb_zivilschutz_adressen_staging_pub.adressen_zivilschutz (
	lokalisationsname text NULL,
	hausnummer text NULL,
	plz int2 NULL,
	ortschaft text NULL,
	gemeinde text NULL,
	gwr_egid int4 NULL,
	gwr_edid int4 NULL,
	koord_ost float8 NULL,
	koord_nord float8 NULL,
	status text NULL,
	objektname text NULL,
	grundstuecknummer varchar NULL,
	grundbuchkreis varchar NULL
);
GRANT USAGE ON SCHEMA amb_zivilschutz_adressen_staging_pub TO gretl, admin
;
GRANT SELECT ON ALL TABLES IN SCHEMA amb_zivilschutz_adressen_staging_pub TO admin
;
GRANT SELECT,UPDATE,DELETE,INSERT ON ALL TABLES IN SCHEMA amb_zivilschutz_adressen_staging_pub TO gretl
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA amb_zivilschutz_adressen_staging_pub TO gretl;
;
