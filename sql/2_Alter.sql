
ALTER TABLE isu
  ADD `last_condition_id` bigint DEFAULT NULL
  ;

-- init
UPDATE `isu` SET last_condition_id = (
  SELECT id FROM isu_condition WHERE `jia_isu_uuid` = isu.jia_isu_uuid ORDER BY `timestamp` DESC LIMIT 1
);
