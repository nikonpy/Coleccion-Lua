DROP TABLE IF EXISTS `account_vip`;
CREATE TABLE `account_vip` (
  `AccountId` int(11) NOT NULL DEFAULT '0',
  `Vip_Level` int(11) NOT NULL DEFAULT '0',
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`AccountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;