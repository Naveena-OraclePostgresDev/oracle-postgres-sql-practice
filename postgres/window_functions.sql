SELECT
  vntextno,
  vntsrvextno,
  vntsrvname,
  RANK() OVER (PARTITION BY vntextno ORDER BY vntsrvname DESC) AS service_rank
FROM vndserv;
