--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      BaiRong Software
-- Project :      BaiRong SiteServer CMS
-- Author :       BaiRong Software
--
-- Date Created : Monday, March 26, 2012 10:11:12
-- Target DBMS : Oracle 9i
--

CREATE SEQUENCE ASK_ANNOUNCEMENT_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE ASK_ANSWERS_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE ASK_CATALOG_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE ASK_CREDITRULE_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE ASK_CREDITRULELOG_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE ASK_EXPERT_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE ASK_LINKS_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE ASK_QUESTION_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE ASK_USERGROUP_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE ASK_VOTES_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE TABLE ask_Ad(
    AdName           NVARCHAR2(50)     NOT NULL,
    AdType           VARCHAR2(50)      DEFAULT '',
    AdLocation       VARCHAR2(50)      DEFAULT '',
    Code             NCLOB             DEFAULT '' NOT NULL,
    TextWord         NVARCHAR2(255)    DEFAULT '',
    TextLink         VARCHAR2(200)     DEFAULT '',
    TextColor        VARCHAR2(10)      DEFAULT '',
    TextFontSize     NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ImageUrl         VARCHAR2(200)     DEFAULT '',
    ImageLink        VARCHAR2(200)     DEFAULT '',
    ImageWidth       NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ImageHeight      NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ImageAlt         NVARCHAR2(50)     DEFAULT '',
    IsEnabled        VARCHAR2(18)      DEFAULT '',
    IsDateLimited    VARCHAR2(18)      DEFAULT '',
    StartDate        TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    EndDate          TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    CONSTRAINT PK_ask_Ad PRIMARY KEY (AdName)
)
GO



CREATE TABLE ask_Announcement(
    ID          NUMBER(38, 0)     NOT NULL,
    UserName    NVARCHAR2(255)    DEFAULT '',
    Taxis       NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    AddDate     TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    Title       NVARCHAR2(255)    DEFAULT '',
    Content     NCLOB             DEFAULT '',
    CONSTRAINT PK_ask_Announcement PRIMARY KEY (ID)
)
GO



CREATE TABLE ask_Answers(
    ID            NUMBER(38, 0)    NOT NULL,
    UserName      NVARCHAR2(50)    DEFAULT '',
    QuestionID    NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    State         NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    Content       NCLOB            DEFAULT '',
    IsChecked     VARCHAR2(10)     DEFAULT '',
    Comments      NCLOB            DEFAULT '',
    AnswerDate    TIMESTAMP(6)     DEFAULT sysdate NOT NULL,
    AcceptDate    TIMESTAMP(6)     DEFAULT sysdate NOT NULL,
    CONSTRAINT PK_ask_Answers PRIMARY KEY (ID)
)
GO



CREATE TABLE ask_Catalog(
    ID             NUMBER(38, 0)     NOT NULL,
    CatalogName    NVARCHAR2(255)    DEFAULT '',
    ParentID       NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Taxis          NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    CONSTRAINT PK_ask_Catalog PRIMARY KEY (ID)
)
GO



CREATE TABLE ask_Configuration(
    SettingsXML    NCLOB    DEFAULT ''
)
GO



CREATE TABLE ask_CreditRule(
    ID              NUMBER(38, 0)    NOT NULL,
    RuleType        VARCHAR2(50)     DEFAULT '',
    PeriodType      VARCHAR2(50)     DEFAULT '',
    PeriodCount     NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    MaxNum          NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    Prestige        NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    Contribution    NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    Currency        NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    ExtCredit1      NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    ExtCredit2      NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    ExtCredit3      NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    CONSTRAINT PK_ask_CreditRule PRIMARY KEY (ID)
)
GO



CREATE TABLE ask_CreditRuleLog(
    ID              NUMBER(38, 0)     NOT NULL,
    UserName        NVARCHAR2(255)    DEFAULT '',
    RuleType        VARCHAR2(50)      DEFAULT '',
    TotalCount      NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    PeriodCount     NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Prestige        NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Contribution    NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Currency        NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ExtCredit1      NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ExtCredit2      NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ExtCredit3      NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    LastDate        TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    CONSTRAINT PK_ask_CreditRuleLog PRIMARY KEY (ID)
)
GO



CREATE TABLE ask_Expert(
    ID           NUMBER(38, 0)    NOT NULL,
    UserName     NVARCHAR2(50)    DEFAULT '',
    CatalogID    NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    IsChecked    VARCHAR2(10)     DEFAULT '',
    IsStar       VARCHAR2(10)     DEFAULT '',
    CONSTRAINT PK_ask_Expert PRIMARY KEY (ID)
)
GO



CREATE TABLE ask_Links(
    ID             NUMBER(38, 0)     NOT NULL,
    LinkName       NVARCHAR2(50)     DEFAULT '',
    LinkAddress    NVARCHAR2(255)    DEFAULT '',
    CONSTRAINT PK_ask_Links PRIMARY KEY (ID)
)
GO



CREATE TABLE ask_Question(
    ID             NUMBER(38, 0)     NOT NULL,
    CatalogID      NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    UserName       NVARCHAR2(50)     DEFAULT '',
    Title          NVARCHAR2(255)    DEFAULT '',
    Content        NCLOB             DEFAULT '',
    AddContent     NCLOB             DEFAULT '',
    State          VARCHAR2(50)      DEFAULT '',
    Counts         NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Reward         NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    IsChecked      VARCHAR2(10)      DEFAULT '',
    IsHot          VARCHAR2(10)      DEFAULT '',
    IsAnonymous    VARCHAR2(10)      DEFAULT '',
    AddDate        TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    VoteDate       TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    CONSTRAINT PK_ask_Question PRIMARY KEY (ID)
)
GO



CREATE TABLE ask_UserGroup(
    GroupID         NUMBER(38, 0)    NOT NULL,
    GroupName       NVARCHAR2(50)    DEFAULT '',
    GroupType       VARCHAR2(50)     DEFAULT '',
    CreditsFrom     NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    CreditsTo       NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    Stars           NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    Color           VARCHAR2(10)     DEFAULT '',
    ExtendValues    NCLOB            DEFAULT '',
    CONSTRAINT PK_ask_UserGroup PRIMARY KEY (GroupID)
)
GO



CREATE TABLE ask_Users(
    UserName           NVARCHAR2(255)    NOT NULL,
    GroupID            NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Credits            NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    AnswerCount        NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    BestAnswerCount    NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Prestige           NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Contribution       NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Currency           NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ExtCredit1         NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ExtCredit2         NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ExtCredit3         NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Signature          NVARCHAR2(255)    DEFAULT '',
    SettingsXML        NCLOB             DEFAULT '',
    CONSTRAINT PK_ask_Users PRIMARY KEY (UserName)
)
GO



CREATE TABLE ask_Votes(
    ID                 NUMBER(38, 0)    NOT NULL,
    AnswersID          NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    AnswersUserName    NVARCHAR2(50)    DEFAULT '',
    QuestionID         NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    VoteUserName       NVARCHAR2(50)    DEFAULT '',
    VoteDate           TIMESTAMP(6)     DEFAULT sysdate NOT NULL,
    CONSTRAINT PK_ask_Votes PRIMARY KEY (ID)
)
GO



ALTER TABLE ask_Question ADD CONSTRAINT FK_ask_Question_Catalog 
    FOREIGN KEY (CatalogID)
    REFERENCES ask_Catalog(ID) ON DELETE CASCADE
GO


