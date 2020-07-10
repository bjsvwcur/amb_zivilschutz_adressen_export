# amb_zivilschutz_adressen_export

Create Schema und Import Daten amb_Zivilschutz Abgleich

Git clonen:
```
  git clone https://github.com/bjsvwcur/amb_zivilschutz_adressen_export.git
```

Docker Container erstellen mit 2 PostgreSQL DBs edit und Pub.

Im Repo "amb_zivilschutz_adressen_export" den Container erstellen: 

```
  docker-compose down # (this command is optional; it's just for cleaning up any already existing DB containers)
  docker-compose up
```

ENV Variablen auf die "Container"-DB setzen:
```
  export ORG_GRADLE_PROJECT_dbUriPub="jdbc:postgresql://pub-db/pub"
  export ORG_GRADLE_PROJECT_dbUserPub="gretl"
  export ORG_GRADLE_PROJECT_dbPwdPub="gretl"
  export ORG_GRADLE_PROJECT_ftpURLZivilschutz="ANGABEN SIEHE Secrets"
  export ORG_GRADLE_PROJECT_ftpUserZivilschutz="ANGABEN SIEHE Secrets"
  export ORG_GRADLE_PROJECT_ftpPwdZivilschutz="ANGABEN SIEHE Secrets"
```

Schemas erstellen in der Pub-DB:

Nachfolgende Befehle aus dem Verzeichnis /amb_zivilschutz_adressen_export/development_dbs/ ausführen:

PW für admin = admin
```
psql -h localhost -p 54322 -d pub -U admin -c "SET ROLE admin" --single-transaction -f agi_mopublic_pub.sql -f agi_mopublic_grants.sql -f amb_zivilschutz_adressen_staging_pub.sql -f amb_zivilschutz_adressen_staging_pub_grants.sql -f agi_av_gb_admin_einteilung_pub.sql
```

Testdaten in pub-DB importieren:

Nachfolgende Befehle aus dem Verzeichnis /agi_av_kaso_abgleich_pub/development_dbs/ ausführen:

#### !! ACHTUNG !! Pfad in den Files zu ili2pg-4.3.1 anpassen
```
./ili2pg_dataimport_mopublic_pub.sh
./ili2pg_dataimport_admin_einteilung_pub.sh
```

#### Gretljob starten für Datenexport amb_zivilschutz

Nachfolgende Befehle aus dem Verzeichnis */amb_zivilschutz_adressen_export/amb_zivilschutz/* ausführen:
```
sudo -E ../start-gretl.sh --docker-image sogis/gretl-runtime:latest --docker-network ambzivilschutzadressenexport_default --job-directory $PWD
```


