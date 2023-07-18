CREATE TABLE `data_platform_storage_bin_general_data`
(
   `BusinessPartner`              int(12) NOT NULL,
   `Plant`                        varchar(4) NOT NULL,
   `StorageLocation`              varchar(4) NOT NULL, 
   `StorageBin`                   varchar(10) NOT NULL,
   `StorageBinDescription`        varchar(200) DEFAULT NULL,
   `XCoordinates`                 float(10) DEFAULT NULL,
   `YCoordinates`                 float(10) DEFAULT NULL,
   `ZCoordinates`                 float(10) DEFAULT NULL,
   `Capacity`                     float(10) DEFAULT NULL,
   `CapacityUnit`                 varchar(3) DEFAULT NULL,
   `CapacityWeight`               float(10) DEFAULT NULL,
   `CapacityWeightUnit`           varchar(3) DEFAULT NULL,
   `CreationDate`                 date NOT NULL,
   `LastChangeDate`               date NOT NULL,
   `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`),

    CONSTRAINT `DataPlatformStorageBinDataStorageLocation_fk` FOREIGN KEY (`BusinessPartner`, `Plant`, `StorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformStorageBinDataCapacityUnit_fk` FOREIGN KEY (`CapacityUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformStorageBinDataCapacityWeightUnit_fk` FOREIGN KEY (`CapacityWeightUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4;
