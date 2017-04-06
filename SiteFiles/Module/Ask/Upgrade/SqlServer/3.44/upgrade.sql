CREATE TABLE ask_Users(
    UserName       nvarchar(255)    NOT NULL,
    Credits        int              DEFAULT 0 NOT NULL,
    Signature      nvarchar(255)    DEFAULT '' NOT NULL,
    SettingsXML    ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_ask_Users PRIMARY KEY NONCLUSTERED (UserName)
)

GO