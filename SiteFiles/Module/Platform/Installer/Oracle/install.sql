--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      BaiRong Software
-- Project :      BaiRong Software Fundation Tables
-- Author :       BaiRong Software
--
-- Date Created : Monday, March 26, 2012 10:54:41
-- Target DBMS : Oracle 9i
--

CREATE SEQUENCE BAIRONG_CARD_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_CARDTYPE_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_COUNT_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_DIGG_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_IP2CITY_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_LOG_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_PAYMENT_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_PAYRECORD_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_SSOAPP_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_TABLEMATCH_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_TABLEMETADATA_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_TABLESTYLE_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_TABLESTYLEITEM_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_TAGS_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_USERADDCARD_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_USERCONSUME_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_USERCREDITSLOG_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_USERMESSAGE_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_USERTYPE_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_VOTE_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_VOTEIPADDRESS_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE SEQUENCE BAIRONG_VOTEITEM_SEQ
    START WITH 1
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    NOCACHE
    ORDER
GO

CREATE TABLE bairong_Administrator(
    UserName               NVARCHAR2(255)    NOT NULL,
    Password               NVARCHAR2(255)    DEFAULT '',
    PasswordFormat         VARCHAR2(50)      DEFAULT '',
    PasswordSalt           NVARCHAR2(128)    DEFAULT '',
    CreationDate           TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    LastActivityDate       TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    LastModuleID           VARCHAR2(50)      DEFAULT '',
    CountOfLogin           NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    CreatorUserName        NVARCHAR2(255)    DEFAULT '',
    IsChecked              VARCHAR2(18)      DEFAULT '',
    IsLockedOut            VARCHAR2(18)      DEFAULT '',
    PublishmentSystemID    NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    DisplayName            NVARCHAR2(255)    DEFAULT '',
    Question               NVARCHAR2(255)    DEFAULT '',
    Answer                 NVARCHAR2(255)    DEFAULT '',
    Email                  NVARCHAR2(255)    DEFAULT '',
    Theme                  VARCHAR2(50)      DEFAULT '',
    Language               VARCHAR2(50)      DEFAULT '',
    CONSTRAINT PK_bairong_Administrator PRIMARY KEY (UserName)
)
GO



CREATE TABLE bairong_AdministratorsInRoles(
    RoleName    NVARCHAR2(255)    NOT NULL,
    UserName    NVARCHAR2(255)    NOT NULL,
    CONSTRAINT PK_bairong_AInR PRIMARY KEY (RoleName, UserName)
)
GO



CREATE TABLE bairong_Cache(
    CacheKey      VARCHAR2(200)    NOT NULL,
    CacheValue    NCLOB            DEFAULT '',
    CONSTRAINT PK_bairong_Cache PRIMARY KEY (CacheKey)
)
GO



CREATE TABLE bairong_Card(
    CardID        NUMBER(38, 0)     NOT NULL,
    CardSN        VARCHAR2(50)      DEFAULT '',
    Password      VARCHAR2(50)      DEFAULT '',
    CardTypeID    NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    CreateTime    TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    EndTime       TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    UseTime       VARCHAR2(50)      DEFAULT '' NOT NULL,
    Status        VARCHAR2(20)      DEFAULT '',
    UserName      NVARCHAR2(255)    DEFAULT '',
    CONSTRAINT PK320 PRIMARY KEY (CardID)
)
GO



CREATE TABLE bairong_CardType(
    CardTypeID     NUMBER(38, 0)    NOT NULL,
    NameType       NVARCHAR2(50)    DEFAULT '',
    CardCount      NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    Price          FLOAT(20)        DEFAULT 0 NOT NULL,
    Description    VARCHAR2(255)    DEFAULT '',
    AddTime        TIMESTAMP(6)     DEFAULT sysdate NOT NULL,
    CONSTRAINT PK321 PRIMARY KEY (CardTypeID)
)
GO



CREATE TABLE bairong_Config(
    IsInitialized           VARCHAR2(18)      DEFAULT '',
    DatabaseVersion         VARCHAR2(50)      DEFAULT '',
    RestrictionBlackList    NVARCHAR2(255)    DEFAULT '',
    RestrictionWhiteList    NVARCHAR2(255)    DEFAULT '',
    IsRelatedUrl            VARCHAR2(18)      DEFAULT '',
    RootUrl                 VARCHAR2(200)     DEFAULT '',
    UpdateDate              TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    SettingsXML             NCLOB             DEFAULT ''
)
GO



CREATE TABLE bairong_ContentModel(
    ModelID        VARCHAR2(50)      NOT NULL,
    ProductID      VARCHAR2(50)      DEFAULT '',
    SiteID         NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ModelName      NVARCHAR2(50)     DEFAULT '',
    IsSystem       VARCHAR2(18)      DEFAULT '',
    TableName      VARCHAR2(200)     DEFAULT '',
    TableType      VARCHAR2(50)      DEFAULT '',
    IconUrl        VARCHAR2(50)      DEFAULT '',
    Description    NVARCHAR2(255)    DEFAULT '',
    CONSTRAINT PK_bairong_ContentModel PRIMARY KEY (ModelID)
)
GO



CREATE TABLE bairong_Count(
    CountID             NUMBER(38, 0)     NOT NULL,
    ApplicationName     VARCHAR2(50)      DEFAULT '',
    RelatedTableName    NVARCHAR2(255)    DEFAULT '',
    RelatedIdentity     NVARCHAR2(255)    DEFAULT '',
    CountType           VARCHAR2(50)      DEFAULT '',
    CountNum            NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    CONSTRAINT PK_bairong_Count PRIMARY KEY (CountID)
)
GO



CREATE TABLE bairong_Digg(
    DiggID                 NUMBER(38, 0)    NOT NULL,
    PublishmentSystemID    NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    RelatedIdentity        NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    Good                   NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    Bad                    NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    CONSTRAINT PK_bairong_Digg PRIMARY KEY (DiggID)
)
GO



CREATE TABLE bairong_IP2City(
    ID          NUMBER(38, 0)       NOT NULL,
    StartNum    DOUBLE PRECISION    DEFAULT 0 NOT NULL,
    EndNum      DOUBLE PRECISION    DEFAULT 0 NOT NULL,
    Province    NVARCHAR2(50)       DEFAULT '',
    City        NVARCHAR2(50)       DEFAULT '',
    CONSTRAINT PK_bairong_IP2City PRIMARY KEY (ID)
)
GO



CREATE TABLE bairong_Log(
    ID           NUMBER(38, 0)     NOT NULL,
    UserName     VARCHAR2(50)      DEFAULT '',
    IPAddress    VARCHAR2(50)      DEFAULT '',
    AddDate      TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    Action       NVARCHAR2(255)    DEFAULT '',
    Summary      NVARCHAR2(255)    DEFAULT '',
    CONSTRAINT PK_bairong_Log PRIMARY KEY (ID)
)
GO



CREATE TABLE bairong_Module(
    ModuleID         NVARCHAR2(50)    DEFAULT '' NOT NULL,
    DirectoryName    VARCHAR2(50)     DEFAULT '',
    IsRoot           VARCHAR2(18)     DEFAULT '',
    CONSTRAINT PK_bairong_Module PRIMARY KEY (ModuleID)
)
GO



CREATE TABLE bairong_Payment(
    PaymentID      NUMBER(38, 0)     NOT NULL,
    PaymentType    VARCHAR2(50)      DEFAULT '' NOT NULL,
    PaymentName    NVARCHAR2(50)     DEFAULT '' NOT NULL,
    Fee            NUMBER            DEFAULT 0 NOT NULL,
    IsEnabled      VARCHAR2(18)      DEFAULT '' NOT NULL,
    IsCOD          VARCHAR2(18)      DEFAULT '' NOT NULL,
    IsPayOnline    VARCHAR2(18)      DEFAULT '' NOT NULL,
    Description    NVARCHAR2(255)    DEFAULT '' NOT NULL,
    Taxis          NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    SettingsXML    NCLOB             DEFAULT '' NOT NULL
)
GO



CREATE TABLE bairong_PayRecord(
    RecordID       NUMBER(38, 0)     NOT NULL,
    OrderSN        VARCHAR2(50)      DEFAULT '',
    UserName       NVARCHAR2(255)    DEFAULT '',
    PayTime        TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    Price          FLOAT(20)         DEFAULT 0 NOT NULL,
    IP             VARCHAR2(50)      DEFAULT '',
    SettingsXML    NCLOB             DEFAULT '',
    ApiType        VARCHAR2(50)      DEFAULT '',
    CONSTRAINT PK323 PRIMARY KEY (RecordID)
)
GO



CREATE TABLE bairong_PermissionsInRoles(
    RoleName              NVARCHAR2(255)    NOT NULL,
    GeneralPermissions    CLOB              DEFAULT '',
    CONSTRAINT PK_bairong_GPInR PRIMARY KEY (RoleName)
)
GO



CREATE TABLE bairong_Roles(
    RoleName           NVARCHAR2(255)    NOT NULL,
    Modules            VARCHAR2(200)     DEFAULT '',
    CreatorUserName    NVARCHAR2(255)    DEFAULT '',
    Description        NVARCHAR2(255)    DEFAULT '',
    CONSTRAINT PK_bairong_Roles PRIMARY KEY (RoleName)
)
GO



CREATE TABLE bairong_SSOApp(
    AppID             NUMBER(38, 0)     NOT NULL,
    AppType           VARCHAR2(50)      DEFAULT '' NOT NULL,
    AppName           NVARCHAR2(50)     DEFAULT '' NOT NULL,
    Url               VARCHAR2(200)     DEFAULT '' NOT NULL,
    AuthKey           VARCHAR2(200)     DEFAULT '' NOT NULL,
    IPAddress         VARCHAR2(50)      DEFAULT '' NOT NULL,
    AccessFileName    VARCHAR2(50)      DEFAULT '' NOT NULL,
    IsSyncLogin       VARCHAR2(18)      DEFAULT '' NOT NULL,
    AddDate           TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    Summary           NVARCHAR2(255)    DEFAULT '' NOT NULL
)
GO



CREATE TABLE bairong_TableCollection(
    TableENName                  VARCHAR2(50)     NOT NULL,
    TableCNName                  VARCHAR2(50)     DEFAULT '',
    AttributeNum                 NUMBER(38, 0)    DEFAULT 0 NOT NULL,
    AuxiliaryTableType           VARCHAR2(50)     DEFAULT '',
    IsCreatedInDB                VARCHAR2(18)     DEFAULT '',
    IsChangedAfterCreatedInDB    VARCHAR2(18)     DEFAULT '',
    ProductID                    VARCHAR2(50)     DEFAULT '',
    IsDefault                    VARCHAR2(18)     DEFAULT '',
    Description                  NCLOB            DEFAULT '',
    CONSTRAINT PK_bairong_AT PRIMARY KEY (TableENName)
)
GO



CREATE TABLE bairong_TableMatch(
    TableMatchID               NUMBER(38, 0)    NOT NULL,
    ConnectionString           VARCHAR2(200)    DEFAULT '',
    TableName                  VARCHAR2(200)    DEFAULT '',
    ConnectionStringToMatch    VARCHAR2(200)    DEFAULT '',
    TableNameToMatch           VARCHAR2(200)    DEFAULT '',
    ColumnsMap                 NCLOB            DEFAULT '',
    CONSTRAINT PK_bairong_TableMatch PRIMARY KEY (TableMatchID)
)
GO



CREATE TABLE bairong_TableMetadata(
    TableMetadataID         NUMBER(38, 0)     NOT NULL,
    AuxiliaryTableENName    VARCHAR2(50)      NOT NULL,
    AttributeName           VARCHAR2(50)      DEFAULT '',
    DataType                VARCHAR2(50)      DEFAULT '',
    DataLength              NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    CanBeNull               VARCHAR2(18)      DEFAULT '',
    DBDefaultValue          NVARCHAR2(255)    DEFAULT '',
    Taxis                   NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    IsSystem                VARCHAR2(18)      DEFAULT '',
    CONSTRAINT PK_bairong_ATM PRIMARY KEY (TableMetadataID)
)
GO



CREATE TABLE bairong_TableStyle(
    TableStyleID       NUMBER(38, 0)     NOT NULL,
    RelatedIdentity    NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    TableName          VARCHAR2(50)      DEFAULT '',
    AttributeName      VARCHAR2(50)      DEFAULT '',
    Taxis              NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    DisplayName        NVARCHAR2(255)    DEFAULT '',
    HelpText           VARCHAR2(255)     DEFAULT '',
    IsVisible          VARCHAR2(18)      DEFAULT '',
    IsVisibleInList    VARCHAR2(18)      DEFAULT '',
    InputType          VARCHAR2(50)      DEFAULT '',
    IsRequired         VARCHAR2(18)      DEFAULT '',
    DefaultValue       VARCHAR2(255)     DEFAULT '',
    IsHorizontal       VARCHAR2(18)      DEFAULT '',
    ExtendValues       NCLOB             DEFAULT '',
    CONSTRAINT PK_bairong_ATS PRIMARY KEY (TableStyleID)
)
GO



CREATE TABLE bairong_TableStyleItem(
    TableStyleItemID    NUMBER(38, 0)    NOT NULL,
    TableStyleID        NUMBER(38, 0)    NOT NULL,
    ItemTitle           VARCHAR2(255)    DEFAULT '',
    ItemValue           VARCHAR2(255)    DEFAULT '',
    IsSelected          VARCHAR2(18)     DEFAULT '',
    CONSTRAINT PK_bairong_STSI PRIMARY KEY (TableStyleItemID)
)
GO



CREATE TABLE bairong_Tags(
    TagID                  NUMBER(38, 0)     NOT NULL,
    ProductID              VARCHAR2(50)      DEFAULT '',
    PublishmentSystemID    NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    ContentIDCollection    NVARCHAR2(255)    DEFAULT '',
    Tag                    NVARCHAR2(255)    DEFAULT '',
    UseNum                 NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    CONSTRAINT PK_bairong_Tags PRIMARY KEY (TagID)
)
GO



CREATE TABLE bairong_UserAddCard(
    CardID         NUMBER(38, 0)     NOT NULL,
    CardCount      NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    BuyTime        TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    IP             VARCHAR2(50)      DEFAULT '',
    SettingsXML    NCLOB             DEFAULT '',
    UserName       NVARCHAR2(255)    DEFAULT '',
    CONSTRAINT PK324 PRIMARY KEY (CardID)
)
GO



CREATE TABLE bairong_UserBinding(
    UserName       NVARCHAR2(255)    DEFAULT '' NOT NULL,
    BindingType    VARCHAR2(50)      DEFAULT '',
    BindingID      NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    BindingName    NVARCHAR2(255)    DEFAULT '',
    CONSTRAINT PK325 PRIMARY KEY (UserName)
)
GO



CREATE TABLE bairong_UserConfig(
    CenterName      NVARCHAR2(50)     DEFAULT '',
    Copyright       NVARCHAR2(255)    DEFAULT '',
    DefaultTheme    VARCHAR2(50)      DEFAULT '',
    SettingsXML     NCLOB             DEFAULT ''
)
GO



CREATE TABLE bairong_UserConsume(
    ConsumeID        NUMBER(38, 0)     NOT NULL,
    Consumed         VARCHAR2(50)      DEFAULT '',
    ConsumeTime      TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    IP               VARCHAR2(50)      DEFAULT '',
    Description      VARCHAR2(255)     DEFAULT '',
    UserName         NVARCHAR2(255)    DEFAULT '',
    ConsumedCount    NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    CONSTRAINT PK322 PRIMARY KEY (ConsumeID)
)
GO



CREATE TABLE bairong_UserCreditsLog(
    ID             NUMBER(38, 0)     NOT NULL,
    UserName       NVARCHAR2(255)    DEFAULT '',
    ProductID      VARCHAR2(50)      DEFAULT '',
    IsIncreased    VARCHAR2(18)      DEFAULT '',
    Num            NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Action         NVARCHAR2(255)    DEFAULT '',
    Description    NVARCHAR2(255)    DEFAULT '',
    AddDate        TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    CONSTRAINT PK_bairong_UserCreditsLog PRIMARY KEY (ID)
)
GO



CREATE TABLE bairong_UserMessage(
    ID             NUMBER(38, 0)     DEFAULT '' NOT NULL,
    MessageFrom    NVARCHAR2(255)    DEFAULT '',
    MessageTo      NVARCHAR2(255)    DEFAULT '',
    MessageType    VARCHAR2(50)      DEFAULT '',
    ParentID       NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    IsViewed       VARCHAR2(18)      DEFAULT '',
    AddDate        TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    Content        NCLOB             DEFAULT '',
    LastAddDate    TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    LastContent    NCLOB             DEFAULT '',
    CONSTRAINT PK_bairong_UserMessage PRIMARY KEY (ID)
)
GO



CREATE TABLE bairong_Users(
    UserName            NVARCHAR2(255)    NOT NULL,
    Password            NVARCHAR2(255)    DEFAULT '',
    PasswordFormat      VARCHAR2(50)      DEFAULT '',
    PasswordSalt        NVARCHAR2(128)    DEFAULT '',
    CreationDate        TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    PointCount          NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    LastActivityDate    TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    IsChecked           VARCHAR2(18)      DEFAULT '',
    IsLockedOut         VARCHAR2(18)      DEFAULT '',
    IsTemporary         VARCHAR2(18)      DEFAULT '',
    DisplayName         NVARCHAR2(255)    DEFAULT '',
    Email               NVARCHAR2(255)    DEFAULT '',
    Mobile              VARCHAR2(20)      DEFAULT '',
    TypeID              NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    OnlineSeconds       NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    Theme               VARCHAR2(50)      DEFAULT '',
    AvatarLarge         VARCHAR2(200)     DEFAULT '',
    AvatarMiddle        VARCHAR2(200)     DEFAULT '',
    AvatarSmall         VARCHAR2(200)     DEFAULT '',
    Signature           NVARCHAR2(255)    DEFAULT '',
    SettingsXML         NCLOB             DEFAULT '',
    IP                  VARCHAR2(50)      DEFAULT '',
    CONSTRAINT PK_bairong_Users PRIMARY KEY (UserName)
)
GO



CREATE TABLE bairong_UserType(
    TypeID      NUMBER(38, 0)    NOT NULL,
    TypeName    NVARCHAR2(50)    DEFAULT '',
    CONSTRAINT PK_bairong_UserType PRIMARY KEY (TypeID)
)
GO



CREATE TABLE bairong_Vote(
    VoteID              NUMBER(38, 0)     NOT NULL,
    VoteName            NVARCHAR2(50)     DEFAULT '',
    RelatedIdentity     NVARCHAR2(255)    DEFAULT '',
    Title               CLOB              DEFAULT '',
    VoteType            VARCHAR2(50)      DEFAULT '',
    VoteItemType        VARCHAR2(50)      DEFAULT '',
    MaxVoteItemNum      NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    VoteRestrictType    VARCHAR2(50)      DEFAULT '',
    AddDate             TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    CONSTRAINT PK_bairong_Vote PRIMARY KEY (VoteID)
)
GO



CREATE TABLE bairong_VoteIPAddress(
    VoteIPAddressID    NUMBER(38, 0)     NOT NULL,
    VoteID             NUMBER(38, 0)     NOT NULL,
    IPAddress          VARCHAR2(50)      DEFAULT '',
    UserName           NVARCHAR2(255)    DEFAULT '',
    AddDate            TIMESTAMP(6)      DEFAULT sysdate NOT NULL,
    CONSTRAINT PK_bairong_VoteIPAddress PRIMARY KEY (VoteIPAddressID)
)
GO



CREATE TABLE bairong_VoteItem(
    VoteItemID       NUMBER(38, 0)     NOT NULL,
    VoteID           NUMBER(38, 0)     NOT NULL,
    ItemTitle        NVARCHAR2(255)    DEFAULT '',
    ItemImageUrl     VARCHAR2(200)     DEFAULT '',
    NavigationUrl    VARCHAR2(200)     DEFAULT '',
    DisplayColor     VARCHAR2(50)      DEFAULT '',
    VoteNum          NUMBER(38, 0)     DEFAULT 0 NOT NULL,
    CONSTRAINT PK_bairong_VoteItem PRIMARY KEY (VoteItemID)
)
GO



CREATE INDEX IX_bairong_TM_ATE ON bairong_TableMetadata(AuxiliaryTableENName)
GO
CREATE INDEX IX_bairong_TSI_TSI ON bairong_TableStyleItem(TableStyleID)
GO
CREATE INDEX IX_bairong_VIPA_VoteID ON bairong_VoteIPAddress(VoteID)
GO
CREATE INDEX IX_bairong_VoteItem_VoteID ON bairong_VoteItem(VoteID)
GO
ALTER TABLE bairong_AdministratorsInRoles ADD CONSTRAINT FK_bairong_AInR_A 
    FOREIGN KEY (UserName)
    REFERENCES bairong_Administrator(UserName) ON DELETE CASCADE
GO

ALTER TABLE bairong_AdministratorsInRoles ADD CONSTRAINT FK_bairong_AInR_R 
    FOREIGN KEY (RoleName)
    REFERENCES bairong_Roles(RoleName) ON DELETE CASCADE
GO


ALTER TABLE bairong_TableMetadata ADD CONSTRAINT FK_bairong_ATM_AT 
    FOREIGN KEY (AuxiliaryTableENName)
    REFERENCES bairong_TableCollection(TableENName) ON DELETE CASCADE
GO


ALTER TABLE bairong_TableStyleItem ADD CONSTRAINT FK_bairong_ATSI_ATS 
    FOREIGN KEY (TableStyleID)
    REFERENCES bairong_TableStyle(TableStyleID) ON DELETE CASCADE
GO


ALTER TABLE bairong_VoteIPAddress ADD CONSTRAINT FK_bairong_VIPA_V 
    FOREIGN KEY (VoteID)
    REFERENCES bairong_Vote(VoteID) ON DELETE CASCADE
GO


ALTER TABLE bairong_VoteItem ADD CONSTRAINT FK_bairong_VoteItem_Vote 
    FOREIGN KEY (VoteID)
    REFERENCES bairong_Vote(VoteID) ON DELETE CASCADE
GO


