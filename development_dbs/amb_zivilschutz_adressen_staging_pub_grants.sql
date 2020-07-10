-- Grant privileges on schemas
GRANT USAGE
ON SCHEMA amb_zivilschutz_adressen_staging_pub
TO public, gretl;

-- Grant read privileges
GRANT SELECT
ON ALL TABLES IN SCHEMA amb_zivilschutz_adressen_staging_pub
TO public;

-- Grant write privileges
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA amb_zivilschutz_adressen_staging_pub
TO gretl;
GRANT USAGE
ON ALL SEQUENCES IN SCHEMA amb_zivilschutz_adressen_staging_pub
TO gretl;
