/*
 * ER/Studio 8.0 SQL Code Generation
 * Company :      BaiRong Software
 * Project :      BaiRong SiteServer Space
 * Author :       BaiRong Software
 *
 * Date Created : Thursday, March 22, 2012 14:45:19
 * Target DBMS : Microsoft SQL Server 2000
 */

CREATE TABLE liveserver_Activity(
    ActivityID         int              IDENTITY(1,1),
    ActivityType       varchar(50)      DEFAULT '' NOT NULL,
    ActiveUserName     nvarchar(255)    DEFAULT '' NOT NULL,
    PassiveUserName    nvarchar(255)    DEFAULT '' NOT NULL,
    RelatedIdentity    int              DEFAULT 0 NOT NULL,
    RelatedTitle       nvarchar(255)    DEFAULT '' NOT NULL,
    RelatedContent     ntext            DEFAULT '' NOT NULL,
    AddDate            datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_liveserver_Activity PRIMARY KEY NONCLUSTERED (ActivityID)
)
go



CREATE TABLE liveserver_BlogCategory(
    CategoryName    nvarchar(50)     DEFAULT '' NOT NULL,
    UserName        nvarchar(255)    DEFAULT '' NOT NULL,
    Taxis           int              DEFAULT 0 NOT NULL,
    AddDate         datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_liveserver_BlogCategory PRIMARY KEY NONCLUSTERED (UserName, CategoryName)
)
go



CREATE TABLE liveserver_BlogContent(
    ID               int              IDENTITY(1,1),
    UserName         nvarchar(255)    DEFAULT '' NOT NULL,
    CategoryName     nvarchar(50)     DEFAULT '' NOT NULL,
    Taxis            int              DEFAULT 0 NOT NULL,
    IsChecked        varchar(18)      DEFAULT '' NOT NULL,
    CheckedLevel     int              DEFAULT 0 NOT NULL,
    IsCommentable    varchar(18)      DEFAULT '' NOT NULL,
    SecurityType     varchar(50)      DEFAULT '' NOT NULL,
    Hits             int              DEFAULT 0 NOT NULL,
    AddDate          datetime         DEFAULT getdate() NOT NULL,
    Title            nvarchar(255)    DEFAULT '' NOT NULL,
    Summary          nvarchar(255)    DEFAULT '' NOT NULL,
    Content          ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_liveserver_BlogContent PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE liveserver_Comment(
    ID                 int              IDENTITY(1,1),
    ApplicationName    varchar(50)      DEFAULT '' NOT NULL,
    RelatedUserName    nvarchar(255)    DEFAULT '' NOT NULL,
    RelatedIdentity    int              DEFAULT 0 NOT NULL,
    IsChecked          varchar(18)      DEFAULT '' NOT NULL,
    AddUserName        nvarchar(255)    DEFAULT '' NOT NULL,
    AddDate            datetime         DEFAULT '' NOT NULL,
    Content            ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_liveserver_Comment PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE liveserver_Configuration(
    SettingsXML    ntext    DEFAULT '' NOT NULL
)
go



CREATE TABLE liveserver_Favorite(
    FavoriteID         int              IDENTITY(1,1),
    UserName           nvarchar(255)    DEFAULT '' NOT NULL,
    ApplicationName    varchar(50)      DEFAULT '' NOT NULL,
    RelatedIdentity    nvarchar(255)    DEFAULT '' NOT NULL,
    AddDate            datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_liveserver_Favorite PRIMARY KEY NONCLUSTERED (FavoriteID, UserName)
)
go



CREATE TABLE liveserver_Friends(
    FriendsID         int              IDENTITY(1,1),
    UserName          nvarchar(255)    DEFAULT '' NOT NULL,
    FriendUserName    nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_liveserver_Friends PRIMARY KEY NONCLUSTERED (FriendsID)
)
go



CREATE TABLE liveserver_Message(
    ID                 int              IDENTITY(1,1),
    RelatedUserName    nvarchar(255)    DEFAULT '' NOT NULL,
    AddUserName        nvarchar(255)    DEFAULT '' NOT NULL,
    IsViewed           varchar(18)      DEFAULT '' NOT NULL,
    AddDate            datetime         DEFAULT getdate() NOT NULL,
    Content            ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_liveserver_Message PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE liveserver_MyWeb(
    ID              int              IDENTITY(1,1),
    UserName        nvarchar(255)    DEFAULT '' NOT NULL,
    SecurityType    nvarchar(50)     DEFAULT '' NOT NULL,
    Hits            int              DEFAULT 0 NOT NULL,
    AddDate         datetime         DEFAULT getdate() NOT NULL,
    SiteUrl         varchar(200)     DEFAULT '' NOT NULL,
    Title           nvarchar(255)    DEFAULT '' NOT NULL,
    Description     ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_liveserver_MyWeb PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE liveserver_PhotoContent(
    ID               int              IDENTITY(1,1),
    UserName         nvarchar(255)    DEFAULT '' NOT NULL,
    Hits             int              DEFAULT 0 NOT NULL,
    IsChecked        varchar(18)      DEFAULT '' NOT NULL,
    CheckedLevel     int              DEFAULT 0 NOT NULL,
    IsCommentable    varchar(18)      DEFAULT '' NOT NULL,
    SecurityType     varchar(50)      DEFAULT '' NOT NULL,
    ImageType        varchar(50)      DEFAULT '' NOT NULL,
    AddDate          datetime         DEFAULT getdate() NOT NULL,
    Title            nvarchar(255)    DEFAULT '' NOT NULL,
    Content          ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_liveserver_PhotoContent PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE liveserver_PhotoContentsInSets(
    ContentID    int            NOT NULL,
    SetID        int            NOT NULL,
    IsCover      varchar(18)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_liveserver_PhotoContentsInSets PRIMARY KEY NONCLUSTERED (ContentID, SetID)
)
go



CREATE TABLE liveserver_PhotoSet(
    SetID          int              IDENTITY(1,1),
    SetName        nvarchar(255)    DEFAULT '' NOT NULL,
    UserName       nvarchar(255)    DEFAULT '' NOT NULL,
    Taxis          int              DEFAULT 0 NOT NULL,
    Description    ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_liveserver_Set PRIMARY KEY NONCLUSTERED (SetID)
)
go



CREATE TABLE liveserver_Rss(
    RssID            int             IDENTITY(1,1),
    RssTitle         nvarchar(50)    DEFAULT '' NOT NULL,
    RssUrl           varchar(200)    DEFAULT '' NOT NULL,
    NavigationUrl    varchar(200)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_liveserver_Rss PRIMARY KEY NONCLUSTERED (RssID)
)
go



CREATE TABLE liveserver_Tag(
    TagID               int              IDENTITY(1,1),
    TagName             nvarchar(255)    DEFAULT '' NOT NULL,
    ApplicationName     varchar(50)      DEFAULT '' NOT NULL,
    UserName            nvarchar(255)    DEFAULT '' NOT NULL,
    RelatedTableName    nvarchar(255)    DEFAULT '' NOT NULL,
    RelatedIdentity     nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_liveserver_Tag PRIMARY KEY NONCLUSTERED (TagID)
)
go



CREATE TABLE liveserver_UserContent(
    ContentName     varchar(200)     DEFAULT '' NOT NULL,
    UserName        nvarchar(255)    DEFAULT '' NOT NULL,
    Body            text             DEFAULT '' NOT NULL,
    LastModified    datetime         DEFAULT getdate() NOT NULL,
    IsHidden        varchar(18)      DEFAULT '' NOT NULL,
    CONSTRAINT PK_liveserver_UserContent PRIMARY KEY NONCLUSTERED (ContentName, UserName)
)
go



CREATE TABLE liveserver_Users(
    UserName             nvarchar(255)    NOT NULL,
    Theme                varchar(50)      DEFAULT '' NOT NULL,
    Credits              int              DEFAULT 0 NOT NULL,
    Hits                 int              DEFAULT 0 NOT NULL,
    SpaceName            nvarchar(255)    DEFAULT '' NOT NULL,
    SpaceDesc            nvarchar(255)    DEFAULT '' NOT NULL,
    BlogUpdateDate       datetime         DEFAULT getdate() NOT NULL,
    PhotoUpdateDate      datetime         DEFAULT getdate() NOT NULL,
    SpaceUpdateDate      datetime         DEFAULT getdate() NOT NULL,
    SpaceCreationDate    datetime         DEFAULT getdate() NOT NULL,
    LastActivityDate     datetime         DEFAULT getdate() NOT NULL,
    SettingsXML          ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_liveserver_Users PRIMARY KEY NONCLUSTERED (UserName)
)
go



CREATE TABLE liveserver_Visitors(
    VisitorsID           int              IDENTITY(1,1),
    UserName             nvarchar(255)    NOT NULL,
    BeVisitedUserName    nvarchar(255)    NOT NULL,
    VisitDate            datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_liveserver_Visitors PRIMARY KEY NONCLUSTERED (VisitorsID)
)
go



CREATE TABLE liveserver_Word(
    ID                 int              IDENTITY(1,1),
    RelatedUserName    nvarchar(255)    DEFAULT '' NOT NULL,
    AddUserName        nvarchar(255)    DEFAULT '' NOT NULL,
    IsPrivate          varchar(18)      DEFAULT '' NOT NULL,
    IsChecked          varchar(18)      DEFAULT '' NOT NULL,
    CheckedLevel       int              DEFAULT 0 NOT NULL,
    AddDate            datetime         DEFAULT getdate() NOT NULL,
    UserName           nvarchar(255)    DEFAULT '' NOT NULL,
    Email              varchar(200)     DEFAULT '' NOT NULL,
    Content            ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_liveserver_Word PRIMARY KEY NONCLUSTERED (ID)
)
go



ALTER TABLE liveserver_BlogCategory ADD CONSTRAINT FK_liveserver_BlogCategory_Users 
    FOREIGN KEY (UserName)
    REFERENCES liveserver_Users(UserName) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE liveserver_BlogContent ADD CONSTRAINT FK_liveserver_BlogContent_Users 
    FOREIGN KEY (UserName)
    REFERENCES liveserver_Users(UserName) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE liveserver_Favorite ADD CONSTRAINT FK_liveserver_Favorite_Users 
    FOREIGN KEY (UserName)
    REFERENCES liveserver_Users(UserName) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE liveserver_Friends ADD CONSTRAINT FK_liveserver_Friends_Users 
    FOREIGN KEY (UserName)
    REFERENCES liveserver_Users(UserName) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE liveserver_MyWeb ADD CONSTRAINT FK_liveserver_MyWeb_Users 
    FOREIGN KEY (UserName)
    REFERENCES liveserver_Users(UserName) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE liveserver_PhotoContent ADD CONSTRAINT FK_liveserver_PhotoContent_Users 
    FOREIGN KEY (UserName)
    REFERENCES liveserver_Users(UserName) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE liveserver_PhotoContentsInSets ADD CONSTRAINT FK_liveserver_PhotoContentsInSets_Set 
    FOREIGN KEY (SetID)
    REFERENCES liveserver_PhotoSet(SetID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE liveserver_Visitors ADD CONSTRAINT FK_liveserver_Visitors_Users 
    FOREIGN KEY (UserName)
    REFERENCES liveserver_Users(UserName) ON DELETE CASCADE ON UPDATE CASCADE
go


