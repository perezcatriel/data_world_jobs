CREATE TABLE `Job` (
  `job_id` integer PRIMARY KEY,
  `job_title` varchar(255),
  `job_type` varchar(255),
  `salary_avg` float,
  `benefits` varchar(255),
  `onsite_remote` varchar(255),
  `location` varchar(255),
  `category` varchar(255),
  `company` varchar(255),
  `skills_fk` varchar(255)
);

CREATE TABLE `Skill` (
  `skill_id` integer PRIMARY KEY,
  `skill_name` varchar(255)
);

CREATE TABLE `JobSkill` (
  `job_id` integer PRIMARY KEY,
  `skill_id_fk` integer
);

ALTER TABLE `JobSkill` ADD FOREIGN KEY (`job_id`) REFERENCES `Job` (`skills_fk`);

ALTER TABLE `JobSkill` ADD FOREIGN KEY (`skill_id_fk`) REFERENCES `Skill` (`skill_id`);
