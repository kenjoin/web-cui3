INSERT INTO bairong_Module VALUES ('platform', '3.4.3', '', 'false')

GO

ALTER TABLE bairong_Administrator ADD 
    [Language]               text(50)      DEFAULT "" NOT NULL

GO