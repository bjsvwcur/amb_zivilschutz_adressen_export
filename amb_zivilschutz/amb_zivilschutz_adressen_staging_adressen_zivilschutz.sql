--Adresse für das Projekt Zivilschutz; für Frima Om Computer
WITH
adressen AS (
    SELECT
        DISTINCT ON (gebadresse.strassenname, gebadresse.hausnummer, gebadresse.bfs_nr) -- in Tabelle adressen.adressen gibt es doppelte Adresse wegen EO.Flaechenelement
        gebadresse.t_id,
        gebadresse.strassenname AS lokalisationsname,
        gebadresse.hausnummer,
        gebadresse.plz As plz,
--        ort.ortsname as ortschaft,
--        gemeinde.gemeindename AS gemeinde,
        gebadresse.egid as gwr_egid,
        gebadresse.edid as gwr_edit,
        ST_X(gebadresse.lage) AS koord_ost,
        st_y(gebadresse.lage) AS koord_nord,
        gebadresse.astatus AS status,
        boden.geometrie AS gwr_egid_geom,
        gebadresse.lage as gwr_edid_geom,
        gebadresse.pos,
        gebadresse.bfs_nr
    FROM
        agi_mopublic_pub.mopublic_gebaeudeadresse  gebadresse,
        agi_mopublic_pub.mopublic_bodenbedeckung  boden
--    LEFT JOIN agi_mopublic_pub.mopublic_ortsname AS ort
--        ON ort.bfs_nr = a.bfs_nr
--    LEFT JOIN agi_mopublic_pub.mopublic_gemeindegrenze as gemeinde
--        ON gemeinde.bfs_nr = a.bfs_nr
    WHERE
        gebadresse.hausnummer is not null -- nur die mit Hausnummern
),
grundstueck AS (
    SELECT
        ls.nummer AS grundstuecknummer,
        ls.geometrie,
        g.aname AS grundbuchkreis,
        ls.bfs_nr
    FROM
        agi_mopublic_pub.mopublic_grundstueck AS ls
    LEFT JOIN agi_av_gb_admin_einteilung_pub.grundbuchkreise_grundbuchkreis AS g
        ON g.nbident = ls.nbident
),
geb_objektnamen AS (
    SELECT
        adresse.t_id,
        STRING_AGG(objektname.objektname, ', ') as objektname -- mehrere Objektnamen pro BB.Gebäude möglich
    FROM adressen AS adresse,
        agi_mopublic_pub.mopublic_objektname_pos AS objektname
    WHERE
        objektname.art_txt = 'Gebaeude' -- nur die Objektnamen die einem Gebäude zugewiesen sind
--        AND
--        adresse.gwr_edid_geom && b.geometrie
--        AND
--        st_distance(a.gwr_egid_geom, b.geometrie) = 0
    GROUP BY
        adresse.t_id
)


INSERT INTO amb_zivilschutz_adressen_staging.adressen_zivilschutz
(
    SELECT
    a.lokalisationsname,
    a.hausnummer,
        a.plz,
--        a.ortschaft,
--        a.gemeinde,
        a.gwr_egid,
        a.gwr_egid,
        a.koord_ost,
        a.koord_nord,
        a.status,
        o.objektname,
        g.grundstuecknummer,
        g.grundbuchkreis
    FROM
        adressen AS a
        LEFT JOIN
        geb_objektnamen AS o
        ON a.t_id = o.t_id,
        grundstueck AS g
    WHERE
--        a.gwr_edid_geom && g.geometrie
--        AND
        st_distance(a.pos, g.geometrie) = 0
        AND
        a.bfs_nr = g.bfs_nr
)
;