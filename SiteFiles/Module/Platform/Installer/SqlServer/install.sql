/*
 * ER/Studio 8.0 SQL Code Generation
 * Company :      BaiRong Software
 * Project :      BaiRong Software Fundation Tables
 * Author :       BaiRong Software
 *
 * Date Created : Monday, March 26, 2012 10:55:25
 * Target DBMS : Microsoft SQL Server 2000
 */

CREATE TABLE bairong_Administrator(
    UserName               nvarchar(255)    NOT NULL,
    Password               nvarchar(255)    DEFAULT '' NOT NULL,
    PasswordFormat         varchar(50)      DEFAULT '' NOT NULL,
    PasswordSalt           nvarchar(128)    DEFAULT '' NOT NULL,
    CreationDate           datetime         DEFAULT getdate() NOT NULL,
    LastActivityDate       datetime         DEFAULT getdate() NOT NULL,
    LastModuleID           varchar(50)      DEFAULT '' NOT NULL,
    CountOfLogin           int              DEFAULT 0 NOT NULL,
    CreatorUserName        nvarchar(255)    DEFAULT '' NOT NULL,
    IsChecked              varchar(18)      DEFAULT '' NOT NULL,
    IsLockedOut            varchar(18)      DEFAULT '' NOT NULL,
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    DisplayName            nvarchar(255)    DEFAULT '' NOT NULL,
    Question               nvarchar(255)    DEFAULT '' NOT NULL,
    Answer                 nvarchar(255)    DEFAULT '' NOT NULL,
    Email                  nvarchar(255)    DEFAULT '' NOT NULL,
    Theme                  varchar(50)      DEFAULT '' NOT NULL,
    Language               varchar(50)      DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_Administrator PRIMARY KEY NONCLUSTERED (UserName)
)
go



CREATE TABLE bairong_AdministratorsInRoles(
    RoleName    nvarchar(255)    NOT NULL,
    UserName    nvarchar(255)    NOT NULL,
    CONSTRAINT PK_bairong_AInR PRIMARY KEY NONCLUSTERED (RoleName, UserName)
)
go



CREATE TABLE bairong_Cache(
    CacheKey      varchar(200)    NOT NULL,
    CacheValue    ntext           DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_Cache PRIMARY KEY NONCLUSTERED (CacheKey)
)
go



CREATE TABLE bairong_Card(
    CardID        int              IDENTITY(1,1),
    CardSN        varchar(50)      NOT NULL,
    Password      varchar(50)      DEFAULT '' NOT NULL,
    CardTypeID    int              DEFAULT 0 NOT NULL,
    CreateTime    datetime         DEFAULT getdate() NOT NULL,
    EndTime       datetime         DEFAULT getdate() NOT NULL,
    UseTime       varchar(50)      DEFAULT '' NOT NULL,
    Status        varchar(20)      NOT NULL,
    UserName      nvarchar(255)    NOT NULL,
    CONSTRAINT PK_bairong_Card PRIMARY KEY NONCLUSTERED (CardID)
)
go



CREATE TABLE bairong_CardType(
    CardTypeID     int               IDENTITY(1,1),
    NameType       nvarchar(50)      DEFAULT '' NOT NULL,
    CardCount      int               DEFAULT 0 NOT NULL,
    Price          decimal(20, 3)    DEFAULT 0 NOT NULL,
    Description    nvarchar(255)     DEFAULT '' NOT NULL,
    AddTime        datetime          DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_bairong_CardType PRIMARY KEY NONCLUSTERED (CardTypeID)
)
go



CREATE TABLE bairong_Config(
    IsInitialized           varchar(18)      DEFAULT '' NOT NULL,
    DatabaseVersion         varchar(50)      DEFAULT '' NOT NULL,
    RestrictionBlackList    nvarchar(255)    DEFAULT '' NOT NULL,
    RestrictionWhiteList    nvarchar(255)    DEFAULT '' NOT NULL,
    IsRelatedUrl            varchar(18)      DEFAULT '' NOT NULL,
    RootUrl                 varchar(200)     DEFAULT '' NOT NULL,
    UpdateDate              datetime         DEFAULT getdate() NOT NULL,
    SettingsXML             ntext            DEFAULT '' NOT NULL
)
go



CREATE TABLE bairong_ContentModel(
    ModelID        varchar(50)      NOT NULL,
    ProductID      varchar(50)      DEFAULT '' NOT NULL,
    SiteID         int              DEFAULT 0 NOT NULL,
    ModelName      nvarchar(50)     DEFAULT '' NOT NULL,
    IsSystem       varchar(18)      DEFAULT '' NOT NULL,
    TableName      varchar(200)     DEFAULT '' NOT NULL,
    TableType      varchar(50)      DEFAULT '' NOT NULL,
    IconUrl        varchar(50)      DEFAULT '' NOT NULL,
    Description    nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_ContentModel PRIMARY KEY NONCLUSTERED (ModelID)
)
go



CREATE TABLE bairong_Count(
    CountID             int              IDENTITY(1,1),
    ApplicationName     varchar(50)      DEFAULT '' NOT NULL,
    RelatedTableName    nvarchar(255)    DEFAULT '' NOT NULL,
    RelatedIdentity     nvarchar(255)    DEFAULT '' NOT NULL,
    CountType           varchar(50)      DEFAULT '' NOT NULL,
    CountNum            int              DEFAULT 0 NOT NULL,
    CONSTRAINT PK_bairong_Count PRIMARY KEY CLUSTERED (CountID)
)
go



CREATE TABLE bairong_Digg(
    DiggID                 int    IDENTITY(1,1),
    PublishmentSystemID    int    DEFAULT 0 NOT NULL,
    RelatedIdentity        int    DEFAULT 0 NOT NULL,
    Good                   int    DEFAULT 0 NOT NULL,
    Bad                    int    DEFAULT 0 NOT NULL,
    CONSTRAINT PK_bairong_Digg PRIMARY KEY NONCLUSTERED (DiggID)
)
go



CREATE TABLE bairong_IP2City(
    ID          int             IDENTITY(1,1),
    StartNum    float           DEFAULT 0 NOT NULL,
    EndNum      float           DEFAULT 0 NOT NULL,
    Province    nvarchar(50)    DEFAULT '' NOT NULL,
    City        nvarchar(50)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_IP2City PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE bairong_Log(
    ID           int              IDENTITY(1,1),
    UserName     varchar(50)      DEFAULT '' NOT NULL,
    IPAddress    varchar(50)      DEFAULT '' NOT NULL,
    AddDate      datetime         DEFAULT getdate() NOT NULL,
    Action       nvarchar(255)    DEFAULT '' NOT NULL,
    Summary      nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_Log PRIMARY KEY CLUSTERED (ID)
)
go



CREATE TABLE bairong_Module(
    ModuleID         nvarchar(50)    DEFAULT '' NOT NULL,
    DirectoryName    varchar(50)     DEFAULT '' NOT NULL,
    IsRoot           varchar(18)     DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_Module PRIMARY KEY NONCLUSTERED (ModuleID)
)
go



CREATE TABLE bairong_Payment(
    PaymentID      int              IDENTITY(1,1),
    PaymentType    varchar(50)      DEFAULT '' NOT NULL,
    PaymentName    nvarchar(50)     DEFAULT '' NOT NULL,
    Fee            int              DEFAULT 0 NOT NULL,
    IsEnabled      varchar(18)      DEFAULT '' NOT NULL,
    IsCOD          varchar(18)      DEFAULT '' NOT NULL,
    IsPayOnline    varchar(18)      DEFAULT '' NOT NULL,
    Description    nvarchar(255)    DEFAULT '' NOT NULL,
    Taxis          int              DEFAULT 0 NOT NULL,
    SettingsXML    ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_Payment PRIMARY KEY NONCLUSTERED (PaymentID)
)
go



CREATE TABLE bairong_PayRecord(
    RecordID       int               IDENTITY(1,1),
    OrderSN        varchar(50)       DEFAULT '' NOT NULL,
    UserName       nvarchar(255)     DEFAULT '' NOT NULL,
    PayTime        datetime          DEFAULT getdate() NOT NULL,
    Price          decimal(20, 2)    DEFAULT 0 NOT NULL,
    IP             varchar(50)       DEFAULT '' NOT NULL,
    SettingsXML    ntext             DEFAULT '' NOT NULL,
    ApiType        varchar(50)       DEFAULT '' NOT NULL,
    CONSTRAINT PK324 PRIMARY KEY NONCLUSTERED (RecordID)
)
go



CREATE TABLE bairong_PermissionsInRoles(
    RoleName              nvarchar(255)    NOT NULL,
    GeneralPermissions    text             DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_GPInR PRIMARY KEY CLUSTERED (RoleName)
)
go



CREATE TABLE bairong_Roles(
    RoleName           nvarchar(255)    NOT NULL,
    Modules            varchar(200)     DEFAULT '' NOT NULL,
    CreatorUserName    nvarchar(255)    DEFAULT '' NOT NULL,
    Description        nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_Roles PRIMARY KEY NONCLUSTERED (RoleName)
)
go



CREATE TABLE bairong_SSOApp(
    AppID             int              IDENTITY(1,1),
    AppType           varchar(50)      DEFAULT '' NOT NULL,
    AppName           nvarchar(50)     DEFAULT '' NOT NULL,
    Url               varchar(200)     DEFAULT '' NOT NULL,
    AuthKey           varchar(200)     DEFAULT '' NOT NULL,
    IPAddress         varchar(50)      DEFAULT '' NOT NULL,
    AccessFileName    varchar(50)      DEFAULT '' NOT NULL,
    IsSyncLogin       varchar(18)      DEFAULT '' NOT NULL,
    AddDate           datetime         DEFAULT getdate() NOT NULL,
    Summary           nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_SSOApp PRIMARY KEY NONCLUSTERED (AppID)
)
go



CREATE TABLE bairong_TableCollection(
    TableENName                  varchar(50)     NOT NULL,
    TableCNName                  nvarchar(50)    DEFAULT '' NOT NULL,
    AttributeNum                 int             DEFAULT 0 NOT NULL,
    AuxiliaryTableType           varchar(50)     DEFAULT '' NOT NULL,
    IsCreatedInDB                varchar(18)     DEFAULT '' NOT NULL,
    IsChangedAfterCreatedInDB    varchar(18)     DEFAULT '' NOT NULL,
    ProductID                    varchar(50)     DEFAULT '' NOT NULL,
    IsDefault                    varchar(18)     DEFAULT '' NOT NULL,
    Description                  ntext           DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_AT PRIMARY KEY CLUSTERED (TableENName)
)
go



CREATE TABLE bairong_TableMatch(
    TableMatchID               int             IDENTITY(1,1),
    ConnectionString           varchar(200)    DEFAULT '' NOT NULL,
    TableName                  varchar(200)    DEFAULT '' NOT NULL,
    ConnectionStringToMatch    varchar(200)    DEFAULT '' NOT NULL,
    TableNameToMatch           varchar(200)    DEFAULT '' NOT NULL,
    ColumnsMap                 ntext           DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_TableMatch PRIMARY KEY CLUSTERED (TableMatchID)
)
go



CREATE TABLE bairong_TableMetadata(
    TableMetadataID         int              IDENTITY(1,1),
    AuxiliaryTableENName    varchar(50)      NOT NULL,
    AttributeName           varchar(50)      DEFAULT '' NOT NULL,
    DataType                varchar(50)      DEFAULT '' NOT NULL,
    DataLength              int              DEFAULT 0 NOT NULL,
    CanBeNull               varchar(18)      DEFAULT '' NOT NULL,
    DBDefaultValue          nvarchar(255)    DEFAULT '' NOT NULL,
    Taxis                   int              DEFAULT 0 NOT NULL,
    IsSystem                varchar(18)      DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_ATM PRIMARY KEY CLUSTERED (TableMetadataID)
)
go



CREATE TABLE bairong_TableStyle(
    TableStyleID       int              IDENTITY(1,1),
    RelatedIdentity    int              DEFAULT 0 NOT NULL,
    TableName          varchar(50)      DEFAULT '' NOT NULL,
    AttributeName      varchar(50)      DEFAULT '' NOT NULL,
    Taxis              int              DEFAULT 0 NOT NULL,
    DisplayName        nvarchar(255)    DEFAULT '' NOT NULL,
    HelpText           varchar(255)     DEFAULT '' NOT NULL,
    IsVisible          varchar(18)      DEFAULT '' NOT NULL,
    IsVisibleInList    varchar(18)      DEFAULT '' NOT NULL,
    InputType          varchar(50)      DEFAULT '' NOT NULL,
    IsRequired         varchar(18)      DEFAULT '' NOT NULL,
    DefaultValue       varchar(255)     DEFAULT '' NOT NULL,
    IsHorizontal       varchar(18)      DEFAULT '' NOT NULL,
    ExtendValues       ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_ATS PRIMARY KEY NONCLUSTERED (TableStyleID)
)
go



CREATE TABLE bairong_TableStyleItem(
    TableStyleItemID    int             IDENTITY(1,1),
    TableStyleID        int             NOT NULL,
    ItemTitle           varchar(255)    DEFAULT '' NOT NULL,
    ItemValue           varchar(255)    DEFAULT '' NOT NULL,
    IsSelected          varchar(18)     DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_STSI PRIMARY KEY NONCLUSTERED (TableStyleItemID)
)
go



CREATE TABLE bairong_Tags(
    TagID                  int              IDENTITY(1,1),
    ProductID              varchar(50)      DEFAULT '' NOT NULL,
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    ContentIDCollection    nvarchar(255)    DEFAULT '' NOT NULL,
    Tag                    nvarchar(255)    DEFAULT '' NOT NULL,
    UseNum                 int              DEFAULT 0 NOT NULL,
    CONSTRAINT PK_bairong_Tags PRIMARY KEY NONCLUSTERED (TagID)
)
go



CREATE TABLE bairong_UserAddCard(
    CardID         int              IDENTITY(1,1),
    CardCount      int              DEFAULT 0 NOT NULL,
    BuyTime        datetime         DEFAULT getdate() NULL,
    IP             varchar(50)      DEFAULT '' NOT NULL,
    SettingsXML    ntext            DEFAULT '' NOT NULL,
    UserName       nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_UserAddCard PRIMARY KEY NONCLUSTERED (CardID)
)
go



CREATE TABLE bairong_UserBinding(
    UserName       nvarchar(255)    NOT NULL,
    BindingType    varchar(50)      DEFAULT '' NOT NULL,
    BindingID      int              DEFAULT 0 NOT NULL,
    BindingName    nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_UserBinding PRIMARY KEY NONCLUSTERED (UserName)
)
go



CREATE TABLE bairong_UserConfig(
    SettingsXML    ntext    DEFAULT '' NOT NULL
)
go



CREATE TABLE bairong_UserConsume(
    ConsumeID        int              IDENTITY(1,1),
    Consumed         varchar(50)      DEFAULT '' NOT NULL,
    ConsumeTime      datetime         DEFAULT getdate() NOT NULL,
    IP               varchar(50)      DEFAULT '' NOT NULL,
    Description      varchar(255)     DEFAULT '' NOT NULL,
    UserName         nvarchar(255)    DEFAULT '' NOT NULL,
    ConsumedCount    int              DEFAULT 0 NOT NULL,
    CONSTRAINT PK_UserConsume PRIMARY KEY NONCLUSTERED (ConsumeID)
)
go



CREATE TABLE bairong_UserCreditsLog(
    ID             int              IDENTITY(1,1),
    UserName       nvarchar(255)    DEFAULT '' NOT NULL,
    ProductID      varchar(50)      DEFAULT '' NOT NULL,
    IsIncreased    varchar(18)      DEFAULT '' NOT NULL,
    Num            int              DEFAULT 0 NOT NULL,
    Action         nvarchar(255)    DEFAULT '' NOT NULL,
    Description    nvarchar(255)    DEFAULT '' NOT NULL,
    AddDate        datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_bairong_UserCreditsLog PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE bairong_UserMessage(
    ID             int              IDENTITY(1,1),
    MessageFrom    nvarchar(255)    DEFAULT '' NOT NULL,
    MessageTo      nvarchar(255)    DEFAULT '' NOT NULL,
    MessageType    varchar(50)      DEFAULT '' NOT NULL,
    ParentID       int              DEFAULT 0 NOT NULL,
    IsViewed       varchar(18)      DEFAULT '' NOT NULL,
    AddDate        datetime         DEFAULT getdate() NOT NULL,
    Content        ntext            DEFAULT '' NOT NULL,
    LastAddDate    datetime         DEFAULT getdate() NOT NULL,
    LastContent    ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_UserMessage PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE bairong_Users(
    UserName            nvarchar(255)    NOT NULL,
    Password            nvarchar(255)    DEFAULT '' NOT NULL,
    PasswordFormat      varchar(50)      DEFAULT '' NOT NULL,
    PasswordSalt        nvarchar(128)    DEFAULT '' NOT NULL,
    CreationDate        datetime         DEFAULT getdate() NOT NULL,
    PointCount          int              DEFAULT 0 NOT NULL,
    LastActivityDate    datetime         DEFAULT getdate() NOT NULL,
    IsChecked           varchar(18)      DEFAULT '' NOT NULL,
    IsLockedOut         varchar(18)      DEFAULT '' NOT NULL,
    IsTemporary         varchar(18)      DEFAULT '' NOT NULL,
    DisplayName         nvarchar(255)    DEFAULT '' NOT NULL,
    Email               nvarchar(255)    DEFAULT '' NOT NULL,
    Mobile              varchar(20)      DEFAULT '' NOT NULL,
    TypeID              int              DEFAULT 0 NOT NULL,
    OnlineSeconds       int              DEFAULT 0 NOT NULL,
    AvatarLarge         varchar(200)     DEFAULT '' NOT NULL,
    AvatarMiddle        varchar(200)     DEFAULT '' NOT NULL,
    AvatarSmall         varchar(200)     DEFAULT '' NOT NULL,
    Signature           nvarchar(255)    DEFAULT '' NOT NULL,
    SettingsXML         ntext            DEFAULT '' NOT NULL,
    IP                  varchar(50)      DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_Users PRIMARY KEY NONCLUSTERED (UserName)
)
go



CREATE TABLE bairong_UserType(
    TypeID      int             IDENTITY(1,1),
    TypeName    nvarchar(50)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_bairong_UserType PRIMARY KEY NONCLUSTERED (TypeID)
)
go



CREATE TABLE bairong_Vote(
    VoteID              int              IDENTITY(1,1),
    VoteName            nvarchar(50)     DEFAULT '' NOT NULL,
    RelatedIdentity     nvarchar(255)    DEFAULT '' NOT NULL,
    Title               text             DEFAULT '' NOT NULL,
    VoteType            varchar(50)      DEFAULT '' NOT NULL,
    VoteItemType        varchar(50)      DEFAULT '' NOT NULL,
    MaxVoteItemNum      int              DEFAULT 0 NOT NULL,
    VoteRestrictType    varchar(50)      DEFAULT '' NOT NULL,
    AddDate             datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_bairong_Vote PRIMARY KEY CLUSTERED (VoteID)
)
go



CREATE TABLE bairong_VoteIPAddress(
    VoteIPAddressID    int              IDENTITY(1,1),
    VoteID             int              NOT NULL,
    IPAddress          varchar(50)      DEFAULT '' NOT NULL,
    UserName           nvarchar(255)    DEFAULT '' NOT NULL,
    AddDate            datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_bairong_VoteIPAddress PRIMARY KEY NONCLUSTERED (VoteIPAddressID)
)
go



CREATE TABLE bairong_VoteItem(
    VoteItemID       int              IDENTITY(1,1),
    VoteID           int              NOT NULL,
    ItemTitle        nvarchar(255)    DEFAULT '' NOT NULL,
    ItemImageUrl     varchar(200)     DEFAULT '' NOT NULL,
    NavigationUrl    varchar(200)     DEFAULT '' NOT NULL,
    DisplayColor     varchar(50)      DEFAULT '' NOT NULL,
    VoteNum          int              DEFAULT 0 NOT NULL,
    CONSTRAINT PK_bairong_VoteItem PRIMARY KEY NONCLUSTERED (VoteItemID)
)
go



CREATE INDEX IX_bairong_TM_ATE ON bairong_TableMetadata(AuxiliaryTableENName)
go
CREATE CLUSTERED INDEX IX_bairong_TSI_TSI ON bairong_TableStyleItem(TableStyleID)
go
CREATE CLUSTERED INDEX IX_bairong_VIPA_VoteID ON bairong_VoteIPAddress(VoteID)
go
CREATE CLUSTERED INDEX IX_bairong_VoteItem_VoteID ON bairong_VoteItem(VoteID)
go
ALTER TABLE bairong_AdministratorsInRoles ADD CONSTRAINT FK_bairong_AInR_A 
    FOREIGN KEY (UserName)
    REFERENCES bairong_Administrator(UserName) ON DELETE CASCADE ON UPDATE CASCADE
go

ALTER TABLE bairong_AdministratorsInRoles ADD CONSTRAINT FK_bairong_AInR_R 
    FOREIGN KEY (RoleName)
    REFERENCES bairong_Roles(RoleName) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE bairong_TableMetadata ADD CONSTRAINT FK_bairong_ATM_AT 
    FOREIGN KEY (AuxiliaryTableENName)
    REFERENCES bairong_TableCollection(TableENName) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE bairong_TableStyleItem ADD CONSTRAINT FK_bairong_ATSI_ATS 
    FOREIGN KEY (TableStyleID)
    REFERENCES bairong_TableStyle(TableStyleID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE bairong_VoteIPAddress ADD CONSTRAINT FK_bairong_VIPA_V 
    FOREIGN KEY (VoteID)
    REFERENCES bairong_Vote(VoteID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE bairong_VoteItem ADD CONSTRAINT FK_bairong_VoteItem_Vote 
    FOREIGN KEY (VoteID)
    REFERENCES bairong_Vote(VoteID) ON DELETE CASCADE ON UPDATE CASCADE
go


