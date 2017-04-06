CREATE TABLE siteserver_TemplateRule(
    RuleID                 counter NOT NULL ,
    RuleName               text (50) NOT NULL DEFAULT "" ,
    PublishmentSystemID    integer NOT NULL DEFAULT 0 ,
    IndexTemplateID        integer NOT NULL DEFAULT 0 ,
    ChannelTemplateID      integer NOT NULL DEFAULT 0 ,
    ContentTemplateID      integer NOT NULL DEFAULT 0 ,
    ChannelFilePathRule    text (200) NOT NULL DEFAULT "" ,
    ContentFilePathRule    text (200) NOT NULL DEFAULT "" ,
    CONSTRAINT [PK_siteserver_TemplateRule] PRIMARY KEY ([RuleID])
)

GO

CREATE TABLE siteserver_TemplateMatch(
    NodeID                 integer NOT NULL ,
    RuleID                 integer NOT NULL ,
    PublishmentSystemID    integer NOT NULL DEFAULT 0 ,
    ChannelTemplateID      integer NOT NULL DEFAULT 0 ,
    ContentTemplateID      integer NOT NULL DEFAULT 0 ,
    FilePath               text (200) NOT NULL DEFAULT "" ,
    ChannelFilePathRule    text (200) NOT NULL DEFAULT "" ,
    ContentFilePathRule    text (200) NOT NULL DEFAULT "" ,
    CONSTRAINT [PK_siteserver_TemplateMatch] PRIMARY KEY (NodeID, RuleID)
)

GO

ALTER TABLE siteserver_Template ADD 
    RuleID                 integer NOT NULL DEFAULT 0

GO

UPDATE siteserver_Template SET RuleID = 0 WHERE RuleID IS NULL

GO

CREATE TABLE bairong_UserSettings(
    UserID                 text (255) NOT NULL,
    PublishmentSystemID    integer NOT NULL DEFAULT 0,
    TypeID                 integer NOT NULL DEFAULT 0,
    Theme                  text (50) NOT NULL DEFAULT "",
    IconUrl                text (200) NOT NULL DEFAULT "",
    ImageUrl               text (200) NOT NULL DEFAULT "",
    Signature              text (255) NOT NULL DEFAULT "",
    SettingsXML            memo NOT NULL DEFAULT "",
    CONSTRAINT [PK_bairong_UserSettings] PRIMARY KEY (UserID)
)

GO
