CREATE TABLE default.SRI_168_107_RDKKDETAILS_ITL
     (
      ID BIGINT,
      RDKK_ID BIGINT,
      SUBCOMMODITY_ID INT,
      IMPORT_FILE_ID INT,
      QTY_P1 DECIMAL(20,3),
      QTY_P2 DECIMAL(20,3),
      QTY_P3 DECIMAL(20,3),
      STATUS_CARRYOVER INT,
      RDKKDETAILS_ID_CARRYOVER BIGINT,
      QTY_CARRYOVER DECIMAL(20,3),
      QTY_ACC DECIMAL(20,3),
      QTY_SISA DECIMAL(20,3),
      CREATED_AT DATE,
      UPDATED_AT DATE,
      ACTION_BY INT,
      IP_ADDRESS STRING,
      Start_Ts TIMESTAMP,
      End_Ts TIMESTAMP,
      Start_Date DATE,
      End_Date DATE,
      Record_Deleted_Flag TINYINT,
      Ctl_Id SMALLINT,
      File_Id SMALLINT,
      Process_Name STRING,
      Process_Id INT,
      Update_Process_Name STRING,
      Update_Process_Id INT,
      PRIMARY KEY(ID)
      )
      PARTITION BY HASH PARTITIONS 3
      STORED AS KUDU;