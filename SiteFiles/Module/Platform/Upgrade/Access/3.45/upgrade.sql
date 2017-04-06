ALTER TABLE bairong_TableCollection ADD 
    ProductID                    text(50)    DEFAULT "" NOT NULL,
    IsDefault                    text(18)    DEFAULT "" NOT NULL

GO

CREATE TABLE bairong_ContentModel(
    ModelID        text(50)      NOT NULL,
    ProductID      text(50)      DEFAULT "" NOT NULL,
    SiteID         integer       DEFAULT 0 NOT NULL,
    ModelName      text(50)     DEFAULT "" NOT NULL,
    IsSystem       text(18)      DEFAULT "" NOT NULL,
    TableName      text(200)     DEFAULT "" NOT NULL,
    TableType      text(50)      DEFAULT "" NOT NULL,
    IconUrl        text(50)      DEFAULT "" NOT NULL,
    Description    text(255)    DEFAULT "" NOT NULL,
    CONSTRAINT PK_bairong_ContentModel PRIMARY KEY (ModelID)
)

GO

CREATE TABLE bairong_Tags(
    TagID                  counter NOT NULL ,
    ProductID              text(50)      DEFAULT "" NOT NULL,
    PublishmentSystemID    integer              DEFAULT 0 NOT NULL,
    ContentIDCollection    text(255)    DEFAULT "" NOT NULL,
    Tag                    text(255)    DEFAULT "" NOT NULL,
    UseNum                 integer              DEFAULT 0 NOT NULL,
    CONSTRAINT PK_bairong_Tags PRIMARY KEY (TagID)
)

GO