CREATE TABLE bairong_UserCreditsLog(
    ID             counter NOT NULL ,
    UserName       text(255)    DEFAULT "" NOT NULL,
    ProductID      text(50)      DEFAULT "" NOT NULL,
    IsIncreased    text(18)      DEFAULT "" NOT NULL,
    Num            integer              DEFAULT 0 NOT NULL,
    Action         text(255)    DEFAULT "" NOT NULL,
    Description    text(255)    DEFAULT "" NOT NULL,
    AddDate        time         DEFAULT Now() NOT NULL,
    CONSTRAINT PK_bairong_UserCreditsLog PRIMARY KEY (ID)
)

GO

CREATE TABLE bairong_UserMessage(
    ID             counter NOT NULL ,
    MessageFrom    text(255)    DEFAULT "" NOT NULL,
    MessageTo      text(255)    DEFAULT "" NOT NULL,
    MessageType    text(50)      DEFAULT "" NOT NULL,
    ParentID       integer              DEFAULT 0 NOT NULL,
    IsViewed       text(18)      DEFAULT "" NOT NULL,
    AddDate        time         DEFAULT Now() NOT NULL,
    Content        memo            DEFAULT "" NOT NULL,
    LastAddDate    time         DEFAULT Now() NOT NULL,
    LastContent    memo            DEFAULT "" NOT NULL,
    CONSTRAINT PK_bairong_UserMessage PRIMARY KEY (ID)
)

GO

ALTER TABLE bairong_Users ADD 
    PublishmentSystemID    integer              DEFAULT 0 NOT NULL,
    TypeID                 integer              DEFAULT 0 NOT NULL,
    Theme                  text(50)      DEFAULT "" NOT NULL,
    IconUrl                text(200)     DEFAULT "" NOT NULL,
    ImageUrl               text(200)     DEFAULT "" NULL,
    Signature              text(255)    DEFAULT "" NULL,
    SettingsXML            memo            DEFAULT "" NOT NULL

GO

UPDATE bairong_Users SET PublishmentSystemID = bairong_UserSettings.PublishmentSystemID, TypeID = bairong_UserSettings.TypeID, Theme = bairong_UserSettings.Theme, IconUrl = bairong_UserSettings.IconUrl, ImageUrl = bairong_UserSettings.ImageUrl, Signature = bairong_UserSettings.Signature, SettingsXML = bairong_UserSettings.SettingsXML FROM bairong_UserSettings WHERE bairong_Users.UserName = bairong_UserSettings.UserName

GO

ALTER TABLE bairong_Module ADD 
    IsRoot           text(18)     DEFAULT "" NOT NULL

GO