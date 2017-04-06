CREATE TABLE siteserver_Ad(
    AdName                 text (50) NOT NULL DEFAULT "" ,
    PublishmentSystemID    integer NOT NULL DEFAULT 0,
    AdType                 text (50) NOT NULL DEFAULT "" ,
    Code                   memo NOT NULL DEFAULT "" ,
    TextWord               text (255) NOT NULL DEFAULT "" ,
    TextLink               text (200) NOT NULL DEFAULT "" ,
    TextColor              text (10) NOT NULL DEFAULT "" ,
    TextFontSize           integer NOT NULL DEFAULT 0 ,
    ImageUrl               text (200) NOT NULL DEFAULT "" ,
    ImageLink              text (200) NOT NULL DEFAULT "" ,
    ImageWidth             integer NOT NULL DEFAULT 0 ,
    ImageHeight            integer NOT NULL DEFAULT 0 ,
    ImageAlt               text (50) NOT NULL DEFAULT "" ,
    IsEnabled              text (18) NOT NULL DEFAULT "" ,
    IsDateLimited          text (18) NOT NULL DEFAULT "" ,
    StartDate              time NOT NULL DEFAULT Now(),
    EndDate                time NOT NULL DEFAULT Now(),
    CONSTRAINT PK_siteserver_Ad PRIMARY KEY (AdName, PublishmentSystemID)
)

GO

ALTER TABLE siteserver_Node ADD 
    LinkUrl                    text (200) NOT NULL DEFAULT "" ,
    LinkType                   text (200) NOT NULL DEFAULT "" ,
    ChannelTemplateID          integer NOT NULL DEFAULT 0 ,
    ContentTemplateID          integer NOT NULL DEFAULT 0

GO

UPDATE siteserver_Node INNER JOIN siteserver_BackgroundNode ON siteserver_Node.NodeID = siteserver_BackgroundNode.NodeID SET siteserver_Node.LinkUrl = siteserver_BackgroundNode.LinkUrl

GO

UPDATE siteserver_Node INNER JOIN siteserver_BackgroundNode ON siteserver_Node.NodeID = siteserver_BackgroundNode.NodeID SET siteserver_Node.LinkType = siteserver_BackgroundNode.LinkType

GO

UPDATE siteserver_Node INNER JOIN siteserver_BackgroundNode ON siteserver_Node.NodeID = siteserver_BackgroundNode.NodeID SET siteserver_Node.ChannelTemplateID = siteserver_BackgroundNode.ChannelTemplateID

GO

UPDATE siteserver_Node INNER JOIN siteserver_BackgroundNode ON siteserver_Node.NodeID = siteserver_BackgroundNode.NodeID SET siteserver_Node.ContentTemplateID = siteserver_BackgroundNode.ContentTemplateID

GO