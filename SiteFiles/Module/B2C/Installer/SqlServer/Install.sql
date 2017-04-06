/*
 * ER/Studio 8.0 SQL Code Generation
 * Company :      BaiRong Software
 * Project :      BaiRong SiteServer CMS
 * Author :       BaiRong Software
 *
 * Date Created : Sunday, August 07, 2011 15:35:49
 * Target DBMS : Microsoft SQL Server 2000
 */

CREATE TABLE b2c_Ad(
    AdName           nvarchar(50)     NOT NULL,
    ShopID           int              DEFAULT 0 NOT NULL,
    AdType           varchar(50)      DEFAULT '' NOT NULL,
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
    CONSTRAINT PK_b2c_Ad PRIMARY KEY NONCLUSTERED (AdName, ShopID)
)
go



CREATE TABLE b2c_Advertisement(
    AdvertisementName            varchar(50)      NOT NULL,
    ShopID                       int              DEFAULT 0 NOT NULL,
    AdvertisementType            varchar(50)      DEFAULT '' NOT NULL,
    NavigationUrl                varchar(200)     DEFAULT '' NOT NULL,
    IsDateLimited                varchar(18)      DEFAULT '' NOT NULL,
    StartDate                    datetime         DEFAULT getdate() NOT NULL,
    EndDate                      datetime         DEFAULT getdate() NOT NULL,
    AddDate                      datetime         DEFAULT getdate() NOT NULL,
    NodeIDCollectionToChannel    nvarchar(255)    DEFAULT '' NOT NULL,
    NodeIDCollectionToContent    nvarchar(255)    DEFAULT '' NOT NULL,
    FileTemplateIDCollection     nvarchar(255)    DEFAULT '' NOT NULL,
    Settings                     ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_Advertisement PRIMARY KEY CLUSTERED (AdvertisementName, ShopID)
)
go



CREATE TABLE b2c_Brand(
    BrandID            char(10)    NULL,
    ShopID             char(10)    NULL,
    BrandName          char(10)    NULL,
    BrandUrl           char(10)    NULL,
    IconUrl            char(10)    NULL,
    Content            char(10)    NULL,
    Taxis              char(10)    NULL,
    BrandTemplateID    char(10)    NULL
)
go



CREATE TABLE b2c_Category(
    CategoryID              int              IDENTITY(1,1),
    CategoryName            nvarchar(255)    DEFAULT '' NOT NULL,
    CategoryType            varchar(50)      DEFAULT '' NOT NULL,
    ShopID                  int              DEFAULT 0 NOT NULL,
    ContentModelID          varchar(50)      DEFAULT '' NOT NULL,
    ParentID                int              DEFAULT 0 NOT NULL,
    ParentsPath             nvarchar(255)    DEFAULT '' NOT NULL,
    ParentsCount            int              DEFAULT 0 NOT NULL,
    ChildrenCount           int              DEFAULT 0 NOT NULL,
    IsLastNode              varchar(18)      DEFAULT '' NOT NULL,
    IndexName               nvarchar(255)    DEFAULT '' NOT NULL,
    CategoryGroup           nvarchar(255)    DEFAULT '' NOT NULL,
    Taxis                   int              DEFAULT 0 NOT NULL,
    AddDate                 datetime         DEFAULT getdate() NOT NULL,
    ImageUrl                varchar(200)     DEFAULT '' NOT NULL,
    Content                 ntext            DEFAULT '' NOT NULL,
    ContentNum              int              DEFAULT 0 NOT NULL,
    FilePath                varchar(200)     DEFAULT '' NOT NULL,
    CategoryFilePathRule    varchar(200)     DEFAULT '' NOT NULL,
    ContentFilePathRule     varchar(200)     DEFAULT '' NOT NULL,
    LinkUrl                 varchar(200)     DEFAULT '' NOT NULL,
    LinkType                varchar(200)     DEFAULT '' NOT NULL,
    CategoryTemplateID      int              DEFAULT 0 NOT NULL,
    ContentTemplateID       int              DEFAULT 0 NOT NULL,
    Keywords                nvarchar(255)    DEFAULT '' NOT NULL,
    Description             nvarchar(255)    DEFAULT '' NOT NULL,
    ExtendValues            ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_Category PRIMARY KEY NONCLUSTERED (CategoryID)
)
go



CREATE TABLE b2c_CategoryGroup(
    GroupName      nvarchar(255)    NOT NULL,
    ShopID         int              DEFAULT 0 NOT NULL,
    Taxis          int              DEFAULT 0 NOT NULL,
    Description    ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_CategoryGroup PRIMARY KEY CLUSTERED (GroupName, ShopID)
)
go



CREATE TABLE b2c_Configuration(
    SettingsXML    ntext    DEFAULT '' NOT NULL
)
go



CREATE TABLE b2c_ContentGroup(
    ContentGroupName    nvarchar(255)    NOT NULL,
    ShopID              int              DEFAULT 0 NOT NULL,
    Taxis               int              DEFAULT 0 NOT NULL,
    Description         ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_ContentGroup PRIMARY KEY CLUSTERED (ContentGroupName, ShopID)
)
go



CREATE TABLE b2c_ContentModel(
    ModelID        varchar(50)      NOT NULL,
    ModelName      nvarchar(50)     DEFAULT '' NOT NULL,
    ShopID         int              DEFAULT 0 NOT NULL,
    TableName      varchar(200)     DEFAULT '' NOT NULL,
    ItemName       nvarchar(50)     DEFAULT '' NOT NULL,
    ItemIcon       varchar(50)      DEFAULT '' NOT NULL,
    Description    nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_ContentModel PRIMARY KEY NONCLUSTERED (ModelID)
)
go



CREATE TABLE b2c_Goods(
    GoodsID             int               IDENTITY(1,1),
    CategoryID          int               DEFAULT 0 NOT NULL,
    ShopID              int               DEFAULT 0 NOT NULL,
    TypeID              int               DEFAULT 0 NOT NULL,
    BrandID             int               DEFAULT 0 NOT NULL,
    SupplierID          int               DEFAULT 0 NOT NULL,
    AddDate             datetime          DEFAULT getdate() NOT NULL,
    LastEditDate        int               DEFAULT getdate() NOT NULL,
    Taxis               int               DEFAULT 0 NOT NULL,
    GoodsGroup          nvarchar(255)     DEFAULT '' NOT NULL,
    ReferenceID         int               DEFAULT 0 NOT NULL,
    IsChecked           varchar(18)       DEFAULT '' NOT NULL,
    CheckedLevel        int               DEFAULT 0 NOT NULL,
    Hits                int               DEFAULT 0 NOT NULL,
    Title               nvarchar(255)     DEFAULT '' NOT NULL,
    SerialNumber        varchar(200)      DEFAULT '' NOT NULL,
    Keywords            nvarchar(255)     DEFAULT '' NOT NULL,
    Summary             nvarchar(255)     DEFAULT '' NOT NULL,
    Content             ntext             DEFAULT '' NOT NULL,
    SmallUrl            varchar(200)      DEFAULT '' NOT NULL,
    MiddleUrl           varchar(200)      DEFAULT '' NOT NULL,
    LargeUrl            varchar(200)      DEFAULT '' NOT NULL,
    PageTitle           nvarchar(255)     DEFAULT '' NOT NULL,
    PageKeywords        nvarchar(255)     DEFAULT '' NOT NULL,
    PageDescription     nvarchar(255)     DEFAULT '' NOT NULL,
    PriceCost           decimal(18, 2)    DEFAULT 0 NOT NULL,
    PriceMarket         decimal(18, 2)    DEFAULT 0 NOT NULL,
    PriceSale           decimal(18, 2)    DEFAULT 0 NOT NULL,
    PricePromote        decimal(18, 2)    DEFAULT 0 NOT NULL,
    PromoteStartDate    datetime          DEFAULT getdate() NOT NULL,
    PromoteEndDate      datetime          DEFAULT getdate() NOT NULL,
    Storage             int               DEFAULT 0 NOT NULL,
    IsPromote           varchar(18)       DEFAULT '' NOT NULL,
    IsBest              varchar(18)       DEFAULT '' NOT NULL,
    IsNew               varchar(18)       DEFAULT '' NOT NULL,
    IsHot               varchar(18)       DEFAULT '' NOT NULL,
    IsOnSale            varchar(18)       DEFAULT '' NOT NULL,
    SettingsXML         ntext             DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_Goods PRIMARY KEY NONCLUSTERED (GoodsID)
)
go



CREATE TABLE b2c_GoodsLink(
    GoodsID          char(10)    NULL,
    ShopID           char(10)    NULL,
    GoodsIDLinked    char(10)    NULL,
    IsTwoWay         char(10)    NULL
)
go



CREATE TABLE b2c_GoodsPhoto(
    ID             int             IDENTITY(1,1),
    ShopID         int             DEFAULT 0 NOT NULL,
    GoodsID        int             DEFAULT 0 NOT NULL,
    SmallUrl       char(10)        NULL,
    MiddleUrl      varchar(200)    DEFAULT '' NOT NULL,
    LargeUrl       varchar(200)    DEFAULT '' NOT NULL,
    Taxis          int             DEFAULT 0 NOT NULL,
    Description    varchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_PhotoContent PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE b2c_GoodsType(
    TypeID      char(10)    NULL,
    ShopID      char(10)    NULL,
    TypeName    char(10)    NULL
)
go



CREATE TABLE b2c_Log(
    ID           int              IDENTITY(1,1),
    ShopID       int              DEFAULT 0 NOT NULL,
    ChannelID    int              DEFAULT 0 NOT NULL,
    ContentID    int              DEFAULT 0 NOT NULL,
    UserName     varchar(50)      DEFAULT '' NOT NULL,
    IPAddress    varchar(50)      DEFAULT '' NOT NULL,
    AddDate      datetime         DEFAULT getdate() NOT NULL,
    Action       nvarchar(255)    DEFAULT '' NOT NULL,
    Summary      nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_Log PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE b2c_RelatedField(
    RelatedFieldID      int              IDENTITY(1,1),
    RelatedFieldName    nvarchar(50)     DEFAULT '' NOT NULL,
    ShopID              int              DEFAULT 0 NOT NULL,
    TotalLevel          int              DEFAULT 0 NOT NULL,
    Prefixes            nvarchar(255)    DEFAULT '' NOT NULL,
    Suffixes            nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_RelatedField PRIMARY KEY NONCLUSTERED (RelatedFieldID)
)
go



CREATE TABLE b2c_RelatedFieldItem(
    ID                int              IDENTITY(1,1),
    RelatedFieldID    int              NOT NULL,
    ItemName          nvarchar(255)    DEFAULT '' NOT NULL,
    ItemValue         nvarchar(255)    DEFAULT '' NOT NULL,
    ParentID          int              DEFAULT 0 NOT NULL,
    Taxis             int              DEFAULT 0 NOT NULL,
    CONSTRAINT PK_b2c_RelatedFieldItem PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE b2c_Shop(
    ShopID                      int             NOT NULL,
    ShopName                    nvarchar(50)    DEFAULT '' NOT NULL,
    AuxiliaryTableForContent    varchar(50)     DEFAULT '' NOT NULL,
    AuxiliaryTableForComment    varchar(50)     DEFAULT '' NOT NULL,
    IsCheckContentUseLevel      varchar(18)     DEFAULT '' NOT NULL,
    CheckContentLevel           int             DEFAULT 0 NOT NULL,
    ShopDir                     varchar(50)     DEFAULT '' NOT NULL,
    ShopUrl                     varchar(200)    DEFAULT '' NOT NULL,
    IsHeadquarters              varchar(18)     DEFAULT '' NOT NULL,
    Taxis                       int             DEFAULT 0 NOT NULL,
    IsRelatedUrl                varchar(18)     DEFAULT '' NOT NULL,
    SettingsXML                 ntext           DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_Shop PRIMARY KEY CLUSTERED (ShopID)
)
go



CREATE TABLE b2c_Star(
    StarID       int              IDENTITY(1,1),
    ShopID       int              DEFAULT 0 NOT NULL,
    ChannelID    int              DEFAULT 0 NOT NULL,
    ContentID    int              DEFAULT 0 NOT NULL,
    UserName     nvarchar(255)    DEFAULT '' NOT NULL,
    Point        int              DEFAULT 0 NOT NULL,
    Message      nvarchar(255)    DEFAULT '' NOT NULL,
    AddDate      datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_b2c_Star PRIMARY KEY NONCLUSTERED (StarID)
)
go



CREATE TABLE b2c_StarSetting(
    StarSettingID    int               IDENTITY(1,1),
    ShopID           int               DEFAULT 0 NOT NULL,
    ChannelID        int               DEFAULT 0 NOT NULL,
    ContentID        int               DEFAULT 0 NOT NULL,
    TotalCount       int               DEFAULT 0 NOT NULL,
    PointAverage     decimal(18, 1)    DEFAULT 0 NOT NULL,
    CONSTRAINT PK_b2c_StarSetting PRIMARY KEY NONCLUSTERED (StarSettingID)
)
go



CREATE TABLE b2c_StlTag(
    TagName           nvarchar(50)     NOT NULL,
    ShopID            int              NOT NULL,
    TagDescription    nvarchar(255)    DEFAULT '' NOT NULL,
    TagContent        ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_StlTag PRIMARY KEY NONCLUSTERED (TagName, ShopID)
)
go



CREATE TABLE b2c_Supplier(
    SupplierID      char(10)    NULL,
    ShopID          char(10)    NULL,
    SupplierName    char(10)    NULL
)
go



CREATE TABLE b2c_SystemPermissions(
    RoleName                nvarchar(255)    NOT NULL,
    CategoryID              int              DEFAULT 0 NOT NULL,
    CategoryIDCollection    text             DEFAULT '' NOT NULL,
    CategoryPermissions     text             DEFAULT '' NOT NULL,
    WebsitePermissions      text             DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_SystemPermissions PRIMARY KEY CLUSTERED (RoleName, CategoryID)
)
go



CREATE TABLE b2c_Tag(
    TagID        int              IDENTITY(1,1),
    TagName      nvarchar(255)    DEFAULT '' NOT NULL,
    ShopID       int              DEFAULT 0 NOT NULL,
    ContentID    int              DEFAULT 0 NOT NULL,
    CONSTRAINT PK_b2c_Tag PRIMARY KEY NONCLUSTERED (TagID)
)
go



CREATE TABLE b2c_TagStyle(
    StyleID            int             IDENTITY(1,1),
    StyleName          nvarchar(50)    DEFAULT '' NOT NULL,
    ElementName        varchar(50)     DEFAULT '' NOT NULL,
    ShopID             int             DEFAULT 0 NOT NULL,
    IsTemplate         varchar(18)     DEFAULT '' NOT NULL,
    StyleTemplate      ntext           DEFAULT '' NOT NULL,
    ScriptTemplate     ntext           DEFAULT '' NOT NULL,
    ContentTemplate    ntext           DEFAULT '' NOT NULL,
    SettingsXML        ntext           DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_TagStyle PRIMARY KEY CLUSTERED (StyleID)
)
go



CREATE TABLE b2c_Template(
    TemplateID             int             IDENTITY(1,1),
    ShopID                 int             NOT NULL,
    TemplateName           nvarchar(50)    DEFAULT '' NOT NULL,
    TemplateType           varchar(50)     DEFAULT '' NOT NULL,
    RelatedFileName        nvarchar(50)    DEFAULT '' NOT NULL,
    CreatedFileFullName    nvarchar(50)    DEFAULT '' NOT NULL,
    CreatedFileExtName     varchar(50)     DEFAULT '' NOT NULL,
    RuleID                 int             DEFAULT 0 NOT NULL,
    Charset                varchar(50)     DEFAULT '' NOT NULL,
    IsDefault              varchar(18)     DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_Template PRIMARY KEY CLUSTERED (TemplateID)
)
go



CREATE TABLE b2c_TemplateMatch(
    CategoryID             int             NOT NULL,
    ShopID                 int             DEFAULT 0 NOT NULL,
    ChannelTemplateID      int             DEFAULT 0 NOT NULL,
    ContentTemplateID      int             DEFAULT 0 NOT NULL,
    FilePath               varchar(200)    DEFAULT '' NOT NULL,
    ChannelFilePathRule    varchar(200)    DEFAULT '' NOT NULL,
    ContentFilePathRule    varchar(200)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_TemplateMatch PRIMARY KEY NONCLUSTERED (CategoryID)
)
go



CREATE TABLE b2c_UserGroup(
    GroupID            int             IDENTITY(1,1),
    GroupName          nvarchar(50)    DEFAULT '' NOT NULL,
    IsCredits          varchar(18)     DEFAULT '' NOT NULL,
    CreditsFrom        int             DEFAULT 0 NOT NULL,
    CreditsTo          int             DEFAULT 0 NOT NULL,
    Stars              int             DEFAULT 0 NOT NULL,
    Color              varchar(10)     DEFAULT '' NOT NULL,
    Rank               int             DEFAULT 0 NOT NULL,
    UserPermissions    ntext           DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_UserGroup PRIMARY KEY NONCLUSTERED (GroupID)
)
go



CREATE TABLE b2c_Users(
    UserName       nvarchar(255)    NOT NULL,
    GroupID        int              DEFAULT 0 NOT NULL,
    Credits        int              DEFAULT 0 NOT NULL,
    SettingsXML    ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_b2c_Users PRIMARY KEY NONCLUSTERED (UserName)
)
go



CREATE CLUSTERED INDEX IX_b2c_Category_Taxis ON b2c_Category(Taxis)
go
CREATE INDEX IX_b2c_Category_ShopID ON b2c_Category(ShopID)
go
CREATE INDEX IX_b2c_Template_ShopID ON b2c_Template(ShopID)
go
CREATE INDEX IX_b2c_Template_TT ON b2c_Template(TemplateType)
go
ALTER TABLE b2c_RelatedFieldItem ADD CONSTRAINT FK_b2c_RFI_RF 
    FOREIGN KEY (RelatedFieldID)
    REFERENCES b2c_RelatedField(RelatedFieldID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE b2c_Shop ADD CONSTRAINT FK_b2c_Shop_Category 
    FOREIGN KEY (ShopID)
    REFERENCES b2c_Category(CategoryID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE b2c_SystemPermissions ADD CONSTRAINT FK_b2c_SP_Category 
    FOREIGN KEY (CategoryID)
    REFERENCES b2c_Category(CategoryID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE b2c_Template ADD CONSTRAINT FK_b2c_Template_Category 
    FOREIGN KEY (ShopID)
    REFERENCES b2c_Category(CategoryID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE b2c_TemplateMatch ADD CONSTRAINT FK_b2c_TM_Category 
    FOREIGN KEY (CategoryID)
    REFERENCES b2c_Category(CategoryID) ON DELETE CASCADE ON UPDATE CASCADE
go


