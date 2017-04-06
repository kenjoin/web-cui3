ALTER TABLE ask_Users ADD 
    GroupID            int              DEFAULT 0 NOT NULL,
    AnswerCount        int              DEFAULT 0 NOT NULL,
    BestAnswerCount    int              DEFAULT 0 NOT NULL,
    Prestige           int              DEFAULT 0 NOT NULL,
    Contribution       int              DEFAULT 0 NOT NULL,
    Currency           int              DEFAULT 0 NOT NULL,
    ExtCredit1         int              DEFAULT 0 NOT NULL,
    ExtCredit2         int              DEFAULT 0 NOT NULL,
    ExtCredit3         int              DEFAULT 0 NOT NULL

GO

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

GO

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

GO

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

GO