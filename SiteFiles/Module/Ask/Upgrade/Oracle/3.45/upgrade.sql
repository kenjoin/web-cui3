ALTER TABLE ask_Users ADD 
    GroupID            NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    AnswerCount        NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    BestAnswerCount    NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Prestige           NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Contribution       NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Currency           NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ExtCredit1         NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ExtCredit2         NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ExtCredit3         NUMBER(38, 0)     DEFAULT 0 NOT NULL

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

CREATE SEQUENCE ASK_USERGROUP_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER

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

CREATE SEQUENCE ASK_CREDITRULE_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER

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

CREATE SEQUENCE ASK_CREDITRULELOG_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER

GO