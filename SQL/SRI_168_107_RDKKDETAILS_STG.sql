DROP TABLE default.SRI_168_107_RDKKDETAILS_STG;

CREATE EXTERNAL TABLE default.SRI_168_107_RDKKDETAILS_STG
     (
      ID BIGINT,
      RDKK_ID BIGINT,
      SUBCOMMODITY_ID INTEGER,
      IMPORT_FILE_ID INTEGER,
      QTY_P1 DECIMAL(20,3),
      QTY_P2 DECIMAL(20,3),
      QTY_P3 DECIMAL(20,3),
      STATUS_CARRYOVER INTEGER,
      RDKKDETAILS_ID_CARRYOVER BIGINT,
      QTY_CARRYOVER DECIMAL(20,3),
      QTY_ACC DECIMAL(20,3),
      QTY_SISA DECIMAL(20,3),
      CREATED_AT DATE,
      UPDATED_AT DATE,
      ACTION_BY INTEGER,
      IP_ADDRESS STRING,
      Start_Ts TIMESTAMP,
      End_Ts TIMESTAMP,
      Start_Date DATE,
      End_Date DATE,
      Record_Deleted_Flag TINYINT,
      Ctl_Id SMALLINT,
      File_Id SMALLINT,
      Process_Name STRING,
      Process_Id INTEGER,
      Update_Process_Name STRING,
      Update_Process_Id INTEGER
      )
      ROW FORMAT DELIMITED
      FIELDS TERMINATED BY ';'
      STORED AS TEXTFILE
      LOCATION 's3a://mardiyan-aws-2201-bucket/data/tmp/bni/SRI_168_107_RDKKDETAILS/'
      TBLPROPERTIES ('skip.header.line.count'='1');