/*
 * ER/Studio 8.0 SQL Code Generation
 * Project :      Install.DM1
 *
 * Date Created : Thursday, March 22, 2012 14:38:34
 * Target DBMS : Microsoft SQL Server 2000
 */

CREATE TABLE ask_Ad(
    AdName           nvarchar(50)     NOT NULL,
    AdType           varchar(50)      DEFAULT '' NOT NULL,
    AdLocation       varchar(50)      DEFAULT '' NOT NULL,
    Code             ntext            DEFAULT '' NOT NULL,
    TextWord         nvarchar(255)    DEFAULT '' NOT NULL,
    TextLink         varchar(200)     DEFAULT '' NOT NULL,
    TextColor        varchar(10)      DEFAULT '' NOT NULL,
    TextFontSize     int              DEFAULT 0 NOT NULL,
    ImageUrl         varchar(200)     DEFAULT '' NOT NULL,
    ImageLink        varchar(200)     DEFAULT '' NOT NULL,
    ImageWidth       int              DEFAULT 0 NOT NULL,
    ImageHeight      int              DEFAULT 0 NOT NULL,
    ImageAlt         nvarchar(50)     DEFAULT '' NOT NULL,
    IsEnabled        varchar(18)      DEFAULT '' NOT NULL,
    IsDateLimited    varchar(18)      DEFAULT '' NOT NULL,
    StartDate        datetime         DEFAULT getdate() NOT NULL,
    EndDate          datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_ask_Ad PRIMARY KEY NONCLUSTERED (AdName)
)
go



CREATE TABLE ask_Announcement(
    ID          int              IDENTITY(1,1),
    UserName    nvarchar(255)    DEFAULT '' NOT NULL,
    Taxis       int              DEFAULT 0 NOT NULL,
    AddDate     datetime         DEFAULT getdate() NOT NULL,
    Title       nvarchar(255)    DEFAULT '' NOT NULL,
    Content     ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_ask_Announcement PRIMARY KEY CLUSTERED (ID)
)
go



CREATE TABLE ask_Answers(
    ID            int             IDENTITY(1,1),
    UserName      nvarchar(50)    DEFAULT '' NOT NULL,
    QuestionID    int             DEFAULT 0 NOT NULL,
    State         int             DEFAULT 0 NOT NULL,
    Content       ntext           DEFAULT '' NOT NULL,
    IsChecked     varchar(10)     DEFAULT '' NOT NULL,
    Comments      ntext           DEFAULT '' NOT NULL,
    AnswerDate    datetime        DEFAULT getdate() NOT NULL,
    AcceptDate    datetime        DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_ask_Answers PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE ask_Catalog(
    ID             int              IDENTITY(1,1),
    CatalogName    nvarchar(255)    DEFAULT '' NOT NULL,
    ParentID       int              DEFAULT 0 NOT NULL,
    Taxis          int              DEFAULT 0 NOT NULL,
    CONSTRAINT PK_ask_Catalog PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE ask_Configuration(
    SettingsXML    ntext    DEFAULT '' NOT NULL
)
go



CREATE TABLE ask_CreditRule(
    ID              int            IDENTITY(1,1),
    RuleType        varchar(50)    DEFAULT '' NOT NULL,
    PeriodType      varchar(50)    DEFAULT '' NOT NULL,
    PeriodCount     int            DEFAULT 0 NOT NULL,
    MaxNum          int            DEFAULT 0 NOT NULL,
    Prestige        int            DEFAULT 0 NOT NULL,
    Contribution    int            DEFAULT 0 NOT NULL,
    Currency        int            DEFAULT 0 NOT NULL,
    ExtCredit1      int            DEFAULT 0 NOT NULL,
    ExtCredit2      int            DEFAULT 0 NOT NULL,
    ExtCredit3      int            DEFAULT 0 NOT NULL,
    CONSTRAINT PK_ask_CreditRule PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE ask_CreditRuleLog(
    ID              int              IDENTITY(1,1),
    UserName        nvarchar(255)    DEFAULT '' NOT NULL,
    RuleType        varchar(50)      DEFAULT '' NOT NULL,
    TotalCount      int              DEFAULT 0 NOT NULL,
    PeriodCount     int              DEFAULT 0 NOT NULL,
    Prestige        int              DEFAULT 0 NOT NULL,
    Contribution    int              DEFAULT 0 NOT NULL,
    Currency        int              DEFAULT 0 NOT NULL,
    ExtCredit1      int              DEFAULT 0 NOT NULL,
    ExtCredit2      int              DEFAULT 0 NOT NULL,
    ExtCredit3      int              DEFAULT 0 NOT NULL,
    LastDate        datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_ask_CreditRuleLog PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE ask_Expert(
    ID           int             IDENTITY(1,1),
    UserName     nvarchar(50)    DEFAULT '' NOT NULL,
    CatalogID    int             DEFAULT 0 NOT NULL,
    IsChecked    varchar(10)     DEFAULT '' NOT NULL,
    IsStar       varchar(10)     DEFAULT '' NOT NULL,
    CONSTRAINT PK_ask_Expert PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE ask_Links(
    ID             int              IDENTITY(1,1),
    LinkName       nvarchar(50)     DEFAULT '' NOT NULL,
    LinkAddress    nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_ask_Links PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE ask_Question(
    ID             int              IDENTITY(1,1),
    CatalogID      int              DEFAULT 0 NOT NULL,
    UserName       nvarchar(50)     DEFAULT '' NOT NULL,
    Title          nvarchar(255)    DEFAULT '' NOT NULL,
    Content        ntext            DEFAULT '' NOT NULL,
    AddContent     ntext            DEFAULT '' NOT NULL,
    State          varchar(50)      DEFAULT '' NOT NULL,
    Counts         int              DEFAULT 0 NOT NULL,
    Reward         int              DEFAULT 0 NOT NULL,
    IsChecked      varchar(10)      DEFAULT '' NOT NULL,
    IsHot          varchar(10)      DEFAULT '' NOT NULL,
    IsAnonymous    varchar(10)      DEFAULT '' NOT NULL,
    AddDate        datetime         DEFAULT getdate() NOT NULL,
    VoteDate       datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_ask_Question PRIMARY KEY CLUSTERED (ID)
)
go



CREATE TABLE ask_UserGroup(
    GroupID         int             IDENTITY(1,1),
    GroupName       nvarchar(50)    DEFAULT '' NOT NULL,
    GroupType       varchar(50)     DEFAULT '' NOT NULL,
    CreditsFrom     int             DEFAULT 0 NOT NULL,
    CreditsTo       int             DEFAULT 0 NOT NULL,
    Stars           int             DEFAULT 0 NOT NULL,
    Color           varchar(10)     DEFAULT '' NOT NULL,
    ExtendValues    ntext           DEFAULT '' NOT NULL,
    CONSTRAINT PK_ask_UserGroup PRIMARY KEY NONCLUSTERED (GroupID)
)
go



CREATE TABLE ask_Users(
    UserName           nvarchar(255)    NOT NULL,
    GroupID            int              DEFAULT 0 NOT NULL,
    Credits            int              DEFAULT 0 NOT NULL,
    AnswerCount        int              DEFAULT 0 NOT NULL,
    BestAnswerCount    int              DEFAULT 0 NOT NULL,
    Prestige           int              DEFAULT 0 NOT NULL,
    Contribution       int              DEFAULT 0 NOT NULL,
    Currency           int              DEFAULT 0 NOT NULL,
    ExtCredit1         int              DEFAULT 0 NOT NULL,
    ExtCredit2         int              DEFAULT 0 NOT NULL,
    ExtCredit3         int              DEFAULT 0 NOT NULL,
    Signature          nvarchar(255)    DEFAULT '' NOT NULL,
    SettingsXML        ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_ask_Users PRIMARY KEY NONCLUSTERED (UserName)
)
go



CREATE TABLE ask_Votes(
    ID                 int             IDENTITY(1,1),
    AnswersID          int             DEFAULT 0 NOT NULL,
    AnswersUserName    nvarchar(50)    DEFAULT '' NOT NULL,
    QuestionID         int             DEFAULT 0 NOT NULL,
    VoteUserName       nvarchar(50)    DEFAULT '' NOT NULL,
    VoteDate           datetime        DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_ask_Votes PRIMARY KEY NONCLUSTERED (ID)
)
go



ALTER TABLE ask_Question ADD CONSTRAINT FK_ask_Question_Catalog 
    FOREIGN KEY (CatalogID)
    REFERENCES ask_Catalog(ID) ON DELETE CASCADE ON UPDATE CASCADE
go


