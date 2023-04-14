CREATE TABLE `DimLevel` (
  `level_id` integer PRIMARY KEY,
  `level_name` varchar(255)
);

CREATE TABLE `DimJobType` (
  `jobType_id` integer PRIMARY KEY,
  `jobType_name` varchar(255)
);

CREATE TABLE `DimOnsiteRemote` (
  `onsiteRemote_id` integer PRIMARY KEY,
  `onsiteRemote_name` varchar(255)
);

CREATE TABLE `DimCompany` (
  `company_id` integer PRIMARY KEY,
  `company_name` varchar(255)
);

CREATE TABLE `DimLocation` (
  `location_id` integer PRIMARY KEY,
  `location_name` varchar(255)
);

CREATE TABLE `DimJobCategory` (
  `category_id` integer PRIMARY KEY,
  `category_name` varchar(255)
);

CREATE TABLE `FactJob` (
  `job_id` integer PRIMARY KEY,
  `job_title` varchar(255),
  `level_id_fk` integer,
  `jobType_id_fk` integer,
  `salary_avg` float,
  `benefits` varchar(255),
  `onsiteRemote_id_fk` integer,
  `location_id_fk` integer,
  `category_id_fk` integer,
  `company_id_fk` integer
);

CREATE TABLE `DimJobSkill` (
  `skill_id` integer PRIMARY KEY,
  `skill_name` varchar(255)
);

CREATE TABLE `UnionJobSkill` (
  `id` integer,
  `category_id_fk` integer,
  `skill_id_fk` integer
);

ALTER TABLE `FactJob` ADD FOREIGN KEY (`level_id_fk`) REFERENCES `DimLevel` (`level_id`);

ALTER TABLE `FactJob` ADD FOREIGN KEY (`location_id_fk`) REFERENCES `DimLocation` (`location_id`);

ALTER TABLE `FactJob` ADD FOREIGN KEY (`jobType_id_fk`) REFERENCES `DimJobType` (`jobType_id`);

ALTER TABLE `FactJob` ADD FOREIGN KEY (`category_id_fk`) REFERENCES `DimJobCategory` (`category_id`);

ALTER TABLE `FactJob` ADD FOREIGN KEY (`onsiteRemote_id_fk`) REFERENCES `DimOnsiteRemote` (`onsiteRemote_id`);

ALTER TABLE `FactJob` ADD FOREIGN KEY (`company_id_fk`) REFERENCES `DimCompany` (`company_id`);

ALTER TABLE `UnionJobSkill` ADD FOREIGN KEY (`skill_id_fk`) REFERENCES `DimJobSkill` (`skill_id`);

ALTER TABLE `UnionJobSkill` ADD FOREIGN KEY (`category_id_fk`) REFERENCES `DimJobCategory` (`category_id`);
