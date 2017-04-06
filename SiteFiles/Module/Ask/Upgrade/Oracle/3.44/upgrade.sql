CREATE TABLE ask_Users(
    UserName       NVARCHAR2(255)    NOT NULL,
    Credits        NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Signature      NVARCHAR2(255)    DEFAULT '',
    SettingsXML    NCLOB             DEFAULT '',
    CONSTRAINT PK_ask_Users PRIMARY KEY (UserName)
)

GO