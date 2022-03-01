CREATE TABLE `customer` (
  `id` char(36) PRIMARY KEY NOT NULL,
  `firstName` mediumtext NOT NULL,
  `lastName` mediumtext NOT NULL,
  `contactInfo` mediumtext NOT NULL
);

CREATE TABLE `guest` (
  `id` char(36) PRIMARY KEY NOT NULL,
  `bookingId` char(36) NOT NULL
);

CREATE TABLE `employee` (
  `id` char(36) PRIMARY KEY NOT NULL,
  `firstName` char(36) NOT NULL,
  `lastName` char(36) NOT NULL,
  `permissions` int NOT NULL
);

CREATE TABLE `credential` (
  `employeeId` char(36) PRIMARY KEY NOT NULL,
  `token` varchar(255) NOT NULL,
  `pin` char(60) NOT NULL,
  `password` char(60) NOT NULL
);

CREATE TABLE `booking_guest` (
  `bookingId` char(36) NOT NULL,
  `guestId` char(36) PRIMARY KEY NOT NULL
);

CREATE TABLE `booking` (
  `id` char(36) PRIMARY KEY NOT NULL,
  `bookerId` char(36) NOT NULL,
  `employeeId` char(36) NOT NULL,
  `pitchId` char(36) UNIQUE NOT NULL,
  `fromDate` bigint UNIQUE NOT NULL,
  `toDate` bigint UNIQUE NOT NULL
);

CREATE TABLE `pitch` (
  `id` char(46) PRIMARY KEY NOT NULL,
  `friendlyName` mediumtext UNIQUE NOT NULL,
  `xCoordinate` int UNIQUE NOT NULL,
  `yCoordinate` int UNIQUE NOT NULL,
  `material` mediumtext NOT NULL
);

CREATE TABLE `campsite_pitch` (
  `campsiteId` char(36) NOT NULL,
  `pitchId` char(36) NOT NULL
);

CREATE TABLE `campsite` (
  `id` char(36) PRIMARY KEY NOT NULL,
  `friendlyName` mediumtext UNIQUE NOT NULL
);

ALTER TABLE `guest` ADD FOREIGN KEY (`bookingId`) REFERENCES `booking` (`id`);

ALTER TABLE `credential` ADD FOREIGN KEY (`employeeId`) REFERENCES `employee` (`id`);

ALTER TABLE `booking_guest` ADD FOREIGN KEY (`bookingId`) REFERENCES `booking` (`id`);

ALTER TABLE `booking_guest` ADD FOREIGN KEY (`guestId`) REFERENCES `guest` (`id`);

ALTER TABLE `booking` ADD FOREIGN KEY (`bookerId`) REFERENCES `customer` (`id`);

ALTER TABLE `booking` ADD FOREIGN KEY (`employeeId`) REFERENCES `employee` (`id`);

ALTER TABLE `booking` ADD FOREIGN KEY (`pitchId`) REFERENCES `pitch` (`id`);

ALTER TABLE `campsite_pitch` ADD FOREIGN KEY (`campsiteId`) REFERENCES `campsite` (`id`);

ALTER TABLE `campsite_pitch` ADD FOREIGN KEY (`pitchId`) REFERENCES `pitch` (`id`);
