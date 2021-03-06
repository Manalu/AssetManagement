ALTER TABLE `assetmanagement`.`house` 
DROP FOREIGN KEY `house_type`;
ALTER TABLE `assetmanagement`.`house` 
DROP INDEX `housetype_idx` ;
ALTER TABLE `assetmanagement`.`house` 
ADD CONSTRAINT `house_type`
  FOREIGN KEY ()
  REFERENCES `assetmanagement`.`house_type` ()
  ON DELETE CASCADE
  ON UPDATE CASCADE;



ALTER TABLE `house` CHANGE `housetype_id` `house_type` VARCHAR(255) NOT NULL;

ALTER TABLE `tenant` CHANGE `nationalid_passport` `nationalid_passport` VARCHAR(255) NOT NULL;

ALTER TABLE `tenant` CHANGE `status` `tenant_status` TINYINT(1) NOT NULL;