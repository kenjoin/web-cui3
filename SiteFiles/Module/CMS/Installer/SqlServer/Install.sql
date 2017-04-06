/*
 * ER/Studio 8.0 SQL Code Generation
 * Company :      BaiRong Software
 * Project :      BaiRong SiteServer CMS
 * Author :       BaiRong Software
 *
 * Date Created : Thursday, March 22, 2012 14:28:34
 * Target DBMS : Microsoft SQL Server 2000
 */

CREATE TABLE siteserver_Ad(
    AdName                 nvarchar(50)     NOT NULL,
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    AdType                 varchar(50)      DEFAULT '' NOT NULL,
    Code                   ntext            DEFAULT '' NOT NULL,
    TextWord               nvarchar(255)    DEFAULT '' NOT NULL,
    TextLink               varchar(200)     DEFAULT '' NOT NULL,
    TextColor              varchar(10)      DEFAULT '' NOT NULL,
    TextFontSize           int              DEFAULT 0 NOT NULL,
    ImageUrl               varchar(200)     DEFAULT '' NOT NULL,
    ImageLink              varchar(200)     DEFAULT '' NOT NULL,
    ImageWidth             int              DEFAULT 0 NOT NULL,
    ImageHeight            int              DEFAULT 0 NOT NULL,
    ImageAlt               nvarchar(50)     DEFAULT '' NOT NULL,
    IsEnabled              varchar(18)      DEFAULT '' NOT NULL,
    IsDateLimited          varchar(18)      DEFAULT '' NOT NULL,
    StartDate              datetime         DEFAULT getdate() NOT NULL,
    EndDate                datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_siteserver_Ad PRIMARY KEY NONCLUSTERED (AdName, PublishmentSystemID)
)
go



CREATE TABLE siteserver_Advertisement(
    AdvertisementName            varchar(50)      NOT NULL,
    PublishmentSystemID          int              DEFAULT 0 NOT NULL,
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
    CONSTRAINT PK_siteserver_Advertisement PRIMARY KEY CLUSTERED (AdvertisementName, PublishmentSystemID)
)
go



CREATE TABLE siteserver_Comment(
    ID                     int              IDENTITY(1,1),
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    NodeID                 int              DEFAULT 0 NOT NULL,
    ContentID              int              DEFAULT 0 NOT NULL,
    ReferenceID            int              DEFAULT 0 NOT NULL,
    Good                   int              DEFAULT 0 NOT NULL,
    Bad                    int              DEFAULT 0 NOT NULL,
    UserName               nvarchar(255)    DEFAULT '' NOT NULL,
    IPAddress              varchar(50)      DEFAULT '' NOT NULL,
    Location               nvarchar(255)    DEFAULT '' NOT NULL,
    AddDate                datetime         DEFAULT getdate() NOT NULL,
    Taxis                  int              DEFAULT 0 NOT NULL,
    IsChecked              varchar(18)      DEFAULT '' NOT NULL,
    Title                  nvarchar(255)    DEFAULT '' NOT NULL,
    Content                ntext            DEFAULT '' NOT NULL,
    SettingsXML            ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_Comment PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE siteserver_Configuration(
    SettingsXML    ntext    DEFAULT '' NOT NULL
)
go



CREATE TABLE siteserver_ContentGroup(
    ContentGroupName       nvarchar(255)    NOT NULL,
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    Taxis                  int              DEFAULT 0 NOT NULL,
    Description            ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_ContentGroup PRIMARY KEY CLUSTERED (ContentGroupName, PublishmentSystemID)
)
go



CREATE TABLE siteserver_GatherDatabaseRule(
    GatherRuleName         nvarchar(50)     NOT NULL,
    PublishmentSystemID    int              NOT NULL,
    DatabaseType           varchar(50)      DEFAULT '' NOT NULL,
    ConnectionString       varchar(255)     DEFAULT '' NOT NULL,
    RelatedTableName       varchar(255)     DEFAULT '' NOT NULL,
    RelatedIdentity        varchar(255)     DEFAULT '' NOT NULL,
    RelatedOrderBy         varchar(255)     DEFAULT '' NOT NULL,
    WhereString            nvarchar(255)    DEFAULT '' NOT NULL,
    TableMatchID           int              DEFAULT 0 NOT NULL,
    NodeID                 int              DEFAULT 0 NOT NULL,
    GatherNum              int              DEFAULT 0 NOT NULL,
    IsChecked              varchar(18)      DEFAULT '' NOT NULL,
    IsOrderByDesc          varchar(18)      DEFAULT '' NOT NULL,
    LastGatherDate         datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_siteserver_GatherDR PRIMARY KEY CLUSTERED (GatherRuleName, PublishmentSystemID)
)
go



CREATE TABLE siteserver_GatherFileRule(
    GatherRuleName                nvarchar(50)     NOT NULL,
    PublishmentSystemID           int              NOT NULL,
    GatherUrl                     nvarchar(255)    DEFAULT '' NOT NULL,
    Charset                       varchar(50)      DEFAULT '' NOT NULL,
    LastGatherDate                datetime         DEFAULT getdate() NOT NULL,
    IsToFile                      varchar(18)      DEFAULT '' NOT NULL,
    FilePath                      nvarchar(255)    DEFAULT '' NOT NULL,
    IsSaveRelatedFiles            varchar(18)      DEFAULT '' NOT NULL,
    IsRemoveScripts               varchar(18)      DEFAULT '' NOT NULL,
    StyleDirectoryPath            nvarchar(255)    DEFAULT '' NOT NULL,
    ScriptDirectoryPath           nvarchar(255)    DEFAULT '' NOT NULL,
    ImageDirectoryPath            nvarchar(255)    DEFAULT '' NOT NULL,
    NodeID                        int              DEFAULT 0 NOT NULL,
    IsSaveImage                   varchar(18)      DEFAULT '' NOT NULL,
    IsChecked                     varchar(18)      DEFAULT '' NOT NULL,
    ContentExclude                ntext            DEFAULT '' NOT NULL,
    ContentHtmlClearCollection    nvarchar(255)    DEFAULT '' NOT NULL,
    ContentTitleStart             ntext            DEFAULT '' NOT NULL,
    ContentTitleEnd               ntext            DEFAULT '' NOT NULL,
    ContentContentStart           ntext            DEFAULT '' NOT NULL,
    ContentContentEnd             ntext            DEFAULT '' NOT NULL,
    ContentAttributes             ntext            DEFAULT '' NOT NULL,
    ContentAttributesXML          ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_GatherFileRule PRIMARY KEY NONCLUSTERED (GatherRuleName, PublishmentSystemID)
)
go



CREATE TABLE siteserver_GatherRule(
    GatherRuleName                nvarchar(50)     NOT NULL,
    PublishmentSystemID           int              NOT NULL,
    CookieString                  text             DEFAULT '' NOT NULL,
    GatherUrlIsCollection         varchar(18)      DEFAULT '' NOT NULL,
    GatherUrlCollection           text             DEFAULT '' NOT NULL,
    GatherUrlIsSerialize          varchar(18)      DEFAULT '' NOT NULL,
    GatherUrlSerialize            varchar(200)     DEFAULT '' NOT NULL,
    SerializeFrom                 int              DEFAULT 0 NOT NULL,
    SerializeTo                   int              DEFAULT 0 NOT NULL,
    SerializeInterval             int              DEFAULT 0 NOT NULL,
    SerializeIsOrderByDesc        varchar(18)      DEFAULT '' NOT NULL,
    SerializeIsAddZero            varchar(18)      DEFAULT '' NOT NULL,
    NodeID                        int              DEFAULT 0 NOT NULL,
    Charset                       varchar(50)      DEFAULT '' NOT NULL,
    UrlInclude                    varchar(200)     DEFAULT '' NOT NULL,
    TitleInclude                  nvarchar(255)    DEFAULT '' NOT NULL,
    ContentExclude                ntext            DEFAULT '' NOT NULL,
    ContentHtmlClearCollection    nvarchar(255)    DEFAULT '' NOT NULL,
    LastGatherDate                datetime         DEFAULT getdate() NOT NULL,
    ListAreaStart                 ntext            DEFAULT '' NOT NULL,
    ListAreaEnd                   ntext            DEFAULT '' NOT NULL,
    ContentChannelStart           ntext            DEFAULT '' NOT NULL,
    ContentChannelEnd             ntext            DEFAULT '' NOT NULL,
    ContentTitleStart             ntext            DEFAULT '' NOT NULL,
    ContentTitleEnd               ntext            DEFAULT '' NOT NULL,
    ContentContentStart           ntext            DEFAULT '' NOT NULL,
    ContentContentEnd             ntext            DEFAULT '' NOT NULL,
    ContentNextPageStart          ntext            DEFAULT '' NOT NULL,
    ContentNextPageEnd            ntext            DEFAULT '' NOT NULL,
    ContentAttributes             ntext            DEFAULT '' NOT NULL,
    ContentAttributesXML          ntext            DEFAULT '' NOT NULL,
    ExtendValues                  ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_GatherRule PRIMARY KEY CLUSTERED (GatherRuleName, PublishmentSystemID)
)
go



CREATE TABLE siteserver_InnerLink(
    InnerLinkName          nvarchar(255)    NOT NULL,
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    LinkUrl                varchar(200)     DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_InnerLink PRIMARY KEY NONCLUSTERED (InnerLinkName, PublishmentSystemID)
)
go



CREATE TABLE siteserver_Input(
    InputID                int             IDENTITY(1,1),
    InputName              nvarchar(50)    DEFAULT '' NOT NULL,
    PublishmentSystemID    int             DEFAULT 0 NOT NULL,
    AddDate                datetime        DEFAULT getdate() NOT NULL,
    IsChecked              varchar(18)     DEFAULT '' NOT NULL,
    IsReply                varchar(18)     DEFAULT '' NOT NULL,
    Taxis                  int             DEFAULT 0 NOT NULL,
    IsTemplate             varchar(18)     DEFAULT '' NOT NULL,
    StyleTemplate          ntext           DEFAULT '' NOT NULL,
    ScriptTemplate         ntext           DEFAULT '' NOT NULL,
    ContentTemplate        ntext           DEFAULT '' NOT NULL,
    SettingsXML            ntext           DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_Input PRIMARY KEY NONCLUSTERED (InputID)
)
go



CREATE TABLE siteserver_InputContent(
    ID             int              IDENTITY(1,1),
    InputID        int              NOT NULL,
    Taxis          int              DEFAULT 0 NOT NULL,
    IsChecked      varchar(18)      DEFAULT '' NOT NULL,
    UserName       nvarchar(255)    DEFAULT '' NOT NULL,
    IPAddress      varchar(50)      DEFAULT '' NOT NULL,
    Location       nvarchar(50)     DEFAULT '' NOT NULL,
    AddDate        datetime         DEFAULT getdate() NOT NULL,
    Reply          ntext            DEFAULT '' NOT NULL,
    SettingsXML    ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_InputContent PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE siteserver_Log(
    ID                     int              IDENTITY(1,1),
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    ChannelID              int              DEFAULT 0 NOT NULL,
    ContentID              int              DEFAULT 0 NOT NULL,
    UserName               varchar(50)      DEFAULT '' NOT NULL,
    IPAddress              varchar(50)      DEFAULT '' NOT NULL,
    AddDate                datetime         DEFAULT getdate() NOT NULL,
    Action                 nvarchar(255)    DEFAULT '' NOT NULL,
    Summary                nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_Log PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE siteserver_Machine(
    MachineName             nvarchar(50)    DEFAULT '' NOT NULL,
    PublishmentSystemID     int             DEFAULT 0 NOT NULL,
    ConnectionType          varchar(50)     DEFAULT '' NOT NULL,
    ServiceType             varchar(50)     DEFAULT '' NOT NULL,
    IsEnabled               varchar(18)     DEFAULT '' NOT NULL,
    FtpServer               varchar(200)    DEFAULT '' NOT NULL,
    FtpPort                 int             DEFAULT 0 NOT NULL,
    FtpUserName             varchar(200)    DEFAULT '' NOT NULL,
    FtpPassword             varchar(200)    DEFAULT '' NOT NULL,
    FtpHomeDirectory        varchar(200)    DEFAULT '' NOT NULL,
    NetworkDirectoryPath    varchar(200)    DEFAULT '' NOT NULL,
    LocalDirectoryPath      varchar(200)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_Machine PRIMARY KEY NONCLUSTERED (MachineName)
)
go



CREATE TABLE siteserver_MailSendLog(
    ID                     int              IDENTITY(1,1),
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    ChannelID              int              DEFAULT 0 NOT NULL,
    ContentID              int              DEFAULT 0 NOT NULL,
    Title                  nvarchar(255)    DEFAULT '' NOT NULL,
    PageUrl                varchar(200)     DEFAULT '' NOT NULL,
    Receiver               nvarchar(255)    DEFAULT '' NOT NULL,
    Mail                   nvarchar(255)    DEFAULT '' NOT NULL,
    Sender                 nvarchar(255)    DEFAULT '' NOT NULL,
    IPAddress              varchar(50)      DEFAULT '' NOT NULL,
    AddDate                datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_siteserver_MailSendLog PRIMARY KEY CLUSTERED (ID)
)
go



CREATE TABLE siteserver_MailSubscribe(
    ID                     int              IDENTITY(1,1),
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    Receiver               nvarchar(255)    DEFAULT '' NOT NULL,
    Mail                   nvarchar(255)    DEFAULT '' NOT NULL,
    IPAddress              varchar(50)      DEFAULT '' NOT NULL,
    AddDate                datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_siteserver_MailSubscribe PRIMARY KEY CLUSTERED (ID)
)
go



CREATE TABLE siteserver_MenuDisplay(
    MenuDisplayID          int             IDENTITY(1,1),
    PublishmentSystemID    int             NOT NULL,
    MenuDisplayName        varchar(50)     DEFAULT '' NOT NULL,
    Vertical               varchar(50)     DEFAULT '' NOT NULL,
    FontFamily             varchar(200)    DEFAULT '' NOT NULL,
    FontSize               int             DEFAULT 0 NOT NULL,
    FontWeight             varchar(50)     DEFAULT '' NOT NULL,
    FontStyle              varchar(50)     DEFAULT '' NOT NULL,
    MenuItemHAlign         varchar(50)     DEFAULT '' NOT NULL,
    MenuItemVAlign         varchar(50)     DEFAULT '' NOT NULL,
    FontColor              varchar(50)     DEFAULT '' NOT NULL,
    MenuItemBgColor        varchar(50)     DEFAULT '' NOT NULL,
    FontColorHilite        varchar(50)     DEFAULT '' NOT NULL,
    MenuHiliteBgColor      varchar(50)     DEFAULT '' NOT NULL,
    XPosition              varchar(50)     DEFAULT '' NOT NULL,
    YPosition              varchar(50)     DEFAULT '' NOT NULL,
    HideOnMouseOut         varchar(50)     DEFAULT '' NOT NULL,
    MenuWidth              int             DEFAULT 0 NOT NULL,
    MenuItemHeight         int             DEFAULT 0 NOT NULL,
    MenuItemPadding        int             DEFAULT 0 NOT NULL,
    MenuItemSpacing        int             DEFAULT 0 NOT NULL,
    MenuItemIndent         int             DEFAULT 0 NOT NULL,
    HideTimeout            int             DEFAULT 0 NOT NULL,
    MenuBgOpaque           varchar(50)     DEFAULT '' NOT NULL,
    MenuBorder             int             DEFAULT 0 NOT NULL,
    BGColor                varchar(50)     DEFAULT '' NOT NULL,
    MenuBorderBgColor      varchar(50)     DEFAULT '' NOT NULL,
    MenuLiteBgColor        varchar(50)     DEFAULT '' NOT NULL,
    ChildMenuIcon          varchar(200)    DEFAULT '' NOT NULL,
    AddDate                datetime        DEFAULT getdate() NOT NULL,
    IsDefault              varchar(18)     DEFAULT '' NOT NULL,
    Description            ntext           DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_MenuDisplay PRIMARY KEY CLUSTERED (MenuDisplayID)
)
go



CREATE TABLE siteserver_Node(
    NodeID                     int              IDENTITY(1,1),
    NodeName                   nvarchar(255)    DEFAULT '' NOT NULL,
    NodeType                   varchar(50)      DEFAULT '' NOT NULL,
    PublishmentSystemID        int              DEFAULT 0 NOT NULL,
    ContentModelID             varchar(50)      DEFAULT '' NOT NULL,
    ParentID                   int              DEFAULT 0 NOT NULL,
    ParentsPath                nvarchar(255)    DEFAULT '' NOT NULL,
    ParentsCount               int              DEFAULT 0 NOT NULL,
    ChildrenCount              int              DEFAULT 0 NOT NULL,
    IsLastNode                 varchar(18)      DEFAULT '' NOT NULL,
    NodeIndexName              nvarchar(255)    DEFAULT '' NOT NULL,
    NodeGroupNameCollection    nvarchar(255)    DEFAULT '' NOT NULL,
    Taxis                      int              DEFAULT 0 NOT NULL,
    AddDate                    datetime         DEFAULT getdate() NOT NULL,
    ImageUrl                   varchar(200)     DEFAULT '' NOT NULL,
    Content                    ntext            DEFAULT '' NOT NULL,
    ContentNum                 int              DEFAULT 0 NOT NULL,
    CommentNum                 int              DEFAULT 0 NOT NULL,
    FilePath                   varchar(200)     DEFAULT '' NOT NULL,
    ChannelFilePathRule        varchar(200)     DEFAULT '' NOT NULL,
    ContentFilePathRule        varchar(200)     DEFAULT '' NOT NULL,
    LinkUrl                    varchar(200)     DEFAULT '' NOT NULL,
    LinkType                   varchar(200)     DEFAULT '' NOT NULL,
    ChannelTemplateID          int              DEFAULT 0 NOT NULL,
    ContentTemplateID          int              DEFAULT 0 NOT NULL,
    Keywords                   nvarchar(255)    DEFAULT '' NOT NULL,
    Description                nvarchar(255)    DEFAULT '' NOT NULL,
    ExtendValues               ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_Node PRIMARY KEY NONCLUSTERED (NodeID)
)
go



CREATE TABLE siteserver_NodeGroup(
    NodeGroupName          nvarchar(255)    NOT NULL,
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    Taxis                  int              DEFAULT 0 NOT NULL,
    Description            ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_NodeGroup PRIMARY KEY CLUSTERED (NodeGroupName, PublishmentSystemID)
)
go



CREATE TABLE siteserver_PagePermissions(
    UserGroupID               int     NOT NULL,
    NodeID                    int     NOT NULL,
    ChannelPagePermissions    text    DEFAULT '' NOT NULL,
    ContentPagePermissions    text    DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_PagePermissions PRIMARY KEY CLUSTERED (NodeID, UserGroupID)
)
go



CREATE TABLE siteserver_PhotoContent(
    ID                     int              IDENTITY(1,1),
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    ContentID              int              DEFAULT 0 NOT NULL,
    PreviewUrl             varchar(200)     DEFAULT '' NOT NULL,
    ImageUrl               varchar(200)     DEFAULT '' NOT NULL,
    Taxis                  int              DEFAULT 0 NOT NULL,
    Title                  nvarchar(255)    DEFAULT '' NOT NULL,
    Description            varchar(255)     DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_PhotoContent PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE siteserver_PublishmentSystem(
    PublishmentSystemID          int             NOT NULL,
    PublishmentSystemName        nvarchar(50)    DEFAULT '' NOT NULL,
    AuxiliaryTableForContent     varchar(50)     DEFAULT '' NOT NULL,
    AuxiliaryTableForJob         varchar(50)     DEFAULT '' NOT NULL,
    IsCheckContentUseLevel       varchar(18)     DEFAULT '' NOT NULL,
    CheckContentLevel            int             DEFAULT 0 NOT NULL,
    PublishmentSystemDir         varchar(50)     DEFAULT '' NOT NULL,
    PublishmentSystemUrl         varchar(200)    DEFAULT '' NOT NULL,
    IsHeadquarters               varchar(18)     DEFAULT '' NOT NULL,
    ParentPublishmentSystemID    int             DEFAULT 0 NOT NULL,
    Taxis                        int             DEFAULT 0 NOT NULL,
    IsRelatedUrl                 varchar(18)     DEFAULT '' NOT NULL,
    SettingsXML                  ntext           DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_PS PRIMARY KEY CLUSTERED (PublishmentSystemID)
)
go



CREATE TABLE siteserver_RelatedField(
    RelatedFieldID         int              IDENTITY(1,1),
    RelatedFieldName       nvarchar(50)     DEFAULT '' NOT NULL,
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    TotalLevel             int              DEFAULT 0 NOT NULL,
    Prefixes               nvarchar(255)    DEFAULT '' NOT NULL,
    Suffixes               nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_RelatedField PRIMARY KEY NONCLUSTERED (RelatedFieldID)
)
go



CREATE TABLE siteserver_RelatedFieldItem(
    ID                int              IDENTITY(1,1),
    RelatedFieldID    int              NOT NULL,
    ItemName          nvarchar(255)    DEFAULT '' NOT NULL,
    ItemValue         nvarchar(255)    DEFAULT '' NOT NULL,
    ParentID          int              DEFAULT 0 NOT NULL,
    Taxis             int              DEFAULT 0 NOT NULL,
    CONSTRAINT PK_siteserver_RelatedFieldItem PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE siteserver_ResumeContent(
    ID                       int              IDENTITY(1,1),
    StyleID                  int              DEFAULT 0 NOT NULL,
    PublishmentSystemID      int              DEFAULT 0 NOT NULL,
    JobContentID             int              DEFAULT 0 NOT NULL,
    UserName                 nvarchar(255)    DEFAULT '' NOT NULL,
    IsView                   varchar(18)      DEFAULT '' NOT NULL,
    AddDate                  datetime         DEFAULT getdate() NOT NULL,
    RealName                 nvarchar(50)     DEFAULT '' NOT NULL,
    Nationality              nvarchar(50)     DEFAULT '' NOT NULL,
    Gender                   nvarchar(50)     DEFAULT '' NOT NULL,
    Email                    varchar(50)      DEFAULT '' NOT NULL,
    MobilePhone              varchar(50)      DEFAULT '' NOT NULL,
    HomePhone                varchar(50)      DEFAULT '' NOT NULL,
    LastSchoolName           nvarchar(50)     DEFAULT '' NOT NULL,
    Education                nvarchar(50)     DEFAULT '' NOT NULL,
    IDCardType               nvarchar(50)     DEFAULT '' NOT NULL,
    IDCardNo                 varchar(50)      DEFAULT '' NOT NULL,
    Birthday                 varchar(50)      DEFAULT '' NOT NULL,
    Marriage                 nvarchar(50)     DEFAULT '' NOT NULL,
    WorkYear                 nvarchar(50)     DEFAULT '' NOT NULL,
    Profession               nvarchar(50)     DEFAULT '' NOT NULL,
    ExpectSalary             nvarchar(50)     DEFAULT '' NOT NULL,
    AvailabelTime            nvarchar(50)     DEFAULT '' NOT NULL,
    Location                 nvarchar(50)     DEFAULT '' NOT NULL,
    ImageUrl                 varchar(200)     DEFAULT '' NOT NULL,
    Summary                  nvarchar(255)    DEFAULT '' NOT NULL,
    Exp_Count                int              DEFAULT 0 NOT NULL,
    Exp_FromYear             nvarchar(50)     DEFAULT '' NOT NULL,
    Exp_FromMonth            nvarchar(50)     DEFAULT '' NOT NULL,
    Exp_ToYear               nvarchar(50)     DEFAULT '' NOT NULL,
    Exp_ToMonth              nvarchar(50)     DEFAULT '' NOT NULL,
    Exp_EmployerName         nvarchar(255)    DEFAULT '' NOT NULL,
    Exp_Department           nvarchar(255)    DEFAULT '' NOT NULL,
    Exp_EmployerPhone        nvarchar(255)    DEFAULT '' NOT NULL,
    Exp_WorkPlace            nvarchar(255)    DEFAULT '' NOT NULL,
    Exp_PositionTitle        nvarchar(255)    DEFAULT '' NOT NULL,
    Exp_Industry             nvarchar(255)    DEFAULT '' NOT NULL,
    Exp_Summary              ntext            DEFAULT '' NOT NULL,
    Exp_Score                ntext            DEFAULT '' NOT NULL,
    Pro_Count                int              DEFAULT 0 NOT NULL,
    Pro_FromYear             nvarchar(50)     DEFAULT '' NOT NULL,
    Pro_FromMonth            nvarchar(50)     DEFAULT '' NOT NULL,
    Pro_ToYear               nvarchar(50)     DEFAULT '' NOT NULL,
    Pro_ToMonth              nvarchar(50)     DEFAULT '' NOT NULL,
    Pro_ProjectName          nvarchar(255)    DEFAULT '' NOT NULL,
    Pro_Summary              ntext            DEFAULT '' NOT NULL,
    Edu_Count                int              DEFAULT 0 NOT NULL,
    Edu_FromYear             nvarchar(50)     DEFAULT '' NOT NULL,
    Edu_FromMonth            nvarchar(50)     DEFAULT '' NOT NULL,
    Edu_ToYear               nvarchar(50)     DEFAULT '' NOT NULL,
    Edu_ToMonth              nvarchar(50)     DEFAULT '' NOT NULL,
    Edu_SchoolName           nvarchar(255)    DEFAULT '' NOT NULL,
    Edu_Education            nvarchar(255)    DEFAULT '' NOT NULL,
    Edu_Profession           nvarchar(255)    DEFAULT '' NOT NULL,
    Edu_Summary              ntext            DEFAULT '' NOT NULL,
    Tra_Count                int              DEFAULT 0 NOT NULL,
    Tra_FromYear             nvarchar(50)     DEFAULT '' NOT NULL,
    Tra_FromMonth            nvarchar(50)     DEFAULT '' NOT NULL,
    Tra_ToYear               nvarchar(50)     DEFAULT '' NOT NULL,
    Tra_ToMonth              nvarchar(50)     DEFAULT '' NOT NULL,
    Tra_TrainerName          nvarchar(255)    DEFAULT '' NOT NULL,
    Tra_TrainerAddress       nvarchar(255)    DEFAULT '' NOT NULL,
    Tra_Lesson               nvarchar(255)    DEFAULT '' NOT NULL,
    Tra_Centification        nvarchar(255)    DEFAULT '' NOT NULL,
    Tra_Summary              nvarchar(255)    DEFAULT '' NOT NULL,
    Lan_Count                int              DEFAULT 0 NOT NULL,
    Lan_Language             nvarchar(255)    DEFAULT '' NOT NULL,
    Lan_Level                nvarchar(255)    DEFAULT '' NOT NULL,
    Ski_Count                int              DEFAULT 0 NOT NULL,
    Ski_SkillName            nvarchar(255)    DEFAULT '' NOT NULL,
    Ski_UsedTimes            nvarchar(255)    DEFAULT '' NOT NULL,
    Ski_Ability              nvarchar(255)    DEFAULT '' NOT NULL,
    Cer_Count                int              DEFAULT 0 NOT NULL,
    Cer_CertificationName    nvarchar(255)    DEFAULT '' NOT NULL,
    Cer_EffectiveDate        nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_ResumeContent PRIMARY KEY NONCLUSTERED (ID)
)
go



CREATE TABLE siteserver_SeoMeta(
    SeoMetaID              int              IDENTITY(1,1),
    PublishmentSystemID    int              NOT NULL,
    SeoMetaName            varchar(50)      DEFAULT '' NOT NULL,
    IsDefault              varchar(18)      DEFAULT '' NOT NULL,
    PageTitle              nvarchar(80)     DEFAULT '' NOT NULL,
    Keywords               nvarchar(100)    DEFAULT '' NOT NULL,
    Description            nvarchar(200)    DEFAULT '' NOT NULL,
    Copyright              nvarchar(255)    DEFAULT '' NOT NULL,
    Author                 nvarchar(50)     DEFAULT '' NOT NULL,
    Email                  nvarchar(50)     DEFAULT '' NOT NULL,
    Language               varchar(50)      DEFAULT '' NOT NULL,
    Charset                varchar(50)      DEFAULT '' NOT NULL,
    Distribution           varchar(50)      DEFAULT '' NOT NULL,
    Rating                 varchar(50)      DEFAULT '' NOT NULL,
    Robots                 varchar(50)      DEFAULT '' NOT NULL,
    RevisitAfter           varchar(50)      DEFAULT '' NOT NULL,
    Expires                varchar(50)      DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_SeoMeta PRIMARY KEY CLUSTERED (SeoMetaID)
)
go



CREATE TABLE siteserver_SeoMetasInNodes(
    NodeID                 int            NOT NULL,
    IsChannel              varchar(18)    DEFAULT '' NOT NULL,
    SeoMetaID              int            NOT NULL,
    PublishmentSystemID    int            NOT NULL,
    CONSTRAINT PK_siteserver_SeoMetasInNodes PRIMARY KEY CLUSTERED (NodeID, IsChannel, SeoMetaID)
)
go



CREATE TABLE siteserver_Star(
    StarID                 int              IDENTITY(1,1),
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    ChannelID              int              DEFAULT 0 NOT NULL,
    ContentID              int              DEFAULT 0 NOT NULL,
    UserName               nvarchar(255)    DEFAULT '' NOT NULL,
    Point                  int              DEFAULT 0 NOT NULL,
    Message                nvarchar(255)    DEFAULT '' NOT NULL,
    AddDate                datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_siteserver_Star PRIMARY KEY NONCLUSTERED (StarID)
)
go



CREATE TABLE siteserver_StarSetting(
    StarSettingID          int               IDENTITY(1,1),
    PublishmentSystemID    int               DEFAULT 0 NOT NULL,
    ChannelID              int               DEFAULT 0 NOT NULL,
    ContentID              int               DEFAULT 0 NOT NULL,
    TotalCount             int               DEFAULT 0 NOT NULL,
    PointAverage           decimal(18, 1)    DEFAULT 0 NOT NULL,
    CONSTRAINT PK_siteserver_StarSetting PRIMARY KEY NONCLUSTERED (StarSettingID)
)
go



CREATE TABLE siteserver_StlTag(
    TagName                nvarchar(50)     NOT NULL,
    PublishmentSystemID    int              NOT NULL,
    TagDescription         nvarchar(255)    DEFAULT '' NOT NULL,
    TagContent             ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_StlTag PRIMARY KEY NONCLUSTERED (TagName, PublishmentSystemID)
)
go



CREATE TABLE siteserver_SystemPermissions(
    RoleName               nvarchar(255)    NOT NULL,
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    NodeIDCollection       text             DEFAULT '' NOT NULL,
    ChannelPermissions     text             DEFAULT '' NOT NULL,
    WebsitePermissions     text             DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_SP PRIMARY KEY CLUSTERED (RoleName, PublishmentSystemID)
)
go



CREATE TABLE siteserver_TagStyle(
    StyleID                int             IDENTITY(1,1),
    StyleName              nvarchar(50)    DEFAULT '' NOT NULL,
    ElementName            varchar(50)     DEFAULT '' NOT NULL,
    PublishmentSystemID    int             DEFAULT 0 NOT NULL,
    IsTemplate             varchar(18)     DEFAULT '' NOT NULL,
    StyleTemplate          ntext           DEFAULT '' NOT NULL,
    ScriptTemplate         ntext           DEFAULT '' NOT NULL,
    ContentTemplate        ntext           DEFAULT '' NOT NULL,
    SettingsXML            ntext           DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_TagStyle PRIMARY KEY CLUSTERED (StyleID)
)
go



CREATE TABLE siteserver_Task(
    TaskName                nvarchar(50)     NOT NULL,
    PublishmentSystemID     int              DEFAULT 0 NOT NULL,
    ServiceType             varchar(50)      DEFAULT '' NOT NULL,
    ServiceParameters       ntext            DEFAULT '' NOT NULL,
    FrequencyType           varchar(50)      DEFAULT '' NOT NULL,
    PeriodIntervalMinute    int              DEFAULT 0 NOT NULL,
    StartDay                int              DEFAULT 0 NOT NULL,
    StartWeekday            int              DEFAULT 0 NOT NULL,
    StartHour               int              DEFAULT 0 NOT NULL,
    IsEnabled               varchar(18)      DEFAULT '' NOT NULL,
    AddDate                 datetime         DEFAULT getdate() NOT NULL,
    LastExecuteDate         datetime         DEFAULT getdate() NOT NULL,
    Description             nvarchar(255)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_Task PRIMARY KEY NONCLUSTERED (TaskName)
)
go



CREATE TABLE siteserver_TaskLog(
    ID                     int              IDENTITY(1,1),
    TaskName               nvarchar(50)     DEFAULT '' NOT NULL,
    PublishmentSystemID    int              DEFAULT 0 NOT NULL,
    ServiceType            varchar(50)      DEFAULT '' NOT NULL,
    IsSuccess              varchar(18)      DEFAULT '' NOT NULL,
    Action                 nvarchar(50)     DEFAULT '' NOT NULL,
    Message                nvarchar(255)    DEFAULT '' NOT NULL,
    StackTrace             ntext            DEFAULT '' NOT NULL,
    AddDate                datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_siteserver_TaskLog PRIMARY KEY CLUSTERED (ID)
)
go



CREATE TABLE siteserver_Template(
    TemplateID             int             IDENTITY(1,1),
    PublishmentSystemID    int             NOT NULL,
    TemplateName           nvarchar(50)    DEFAULT '' NOT NULL,
    TemplateType           varchar(50)     DEFAULT '' NOT NULL,
    RelatedFileName        nvarchar(50)    DEFAULT '' NOT NULL,
    CreatedFileFullName    nvarchar(50)    DEFAULT '' NOT NULL,
    CreatedFileExtName     varchar(50)     DEFAULT '' NOT NULL,
    RuleID                 int             DEFAULT 0 NOT NULL,
    Charset                varchar(50)     DEFAULT '' NOT NULL,
    IsDefault              varchar(18)     DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_Template PRIMARY KEY CLUSTERED (TemplateID)
)
go



CREATE TABLE siteserver_TemplateMatch(
    NodeID                 int             NOT NULL,
    RuleID                 int             NOT NULL,
    PublishmentSystemID    int             DEFAULT 0 NOT NULL,
    ChannelTemplateID      int             DEFAULT 0 NOT NULL,
    ContentTemplateID      int             DEFAULT 0 NOT NULL,
    FilePath               varchar(200)    DEFAULT '' NOT NULL,
    ChannelFilePathRule    varchar(200)    DEFAULT '' NOT NULL,
    ContentFilePathRule    varchar(200)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_TemplateMatch PRIMARY KEY NONCLUSTERED (RuleID, NodeID)
)
go



CREATE TABLE siteserver_TemplateRule(
    RuleID                 int             IDENTITY(1,1),
    RuleName               nvarchar(50)    DEFAULT '' NOT NULL,
    PublishmentSystemID    int             DEFAULT 0 NOT NULL,
    IsCreateChannels       varchar(18)     DEFAULT '' NOT NULL,
    IsCreateContents       varchar(18)     DEFAULT '' NOT NULL,
    IndexTemplateID        int             DEFAULT 0 NOT NULL,
    ChannelTemplateID      int             DEFAULT 0 NOT NULL,
    ContentTemplateID      int             DEFAULT 0 NOT NULL,
    ChannelFilePathRule    varchar(200)    DEFAULT '' NOT NULL,
    ContentFilePathRule    varchar(200)    DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_TemplateRule PRIMARY KEY NONCLUSTERED (RuleID)
)
go



CREATE TABLE siteserver_Tracking(
    TrackingID             int              IDENTITY(1,1),
    PublishmentSystemID    int              NOT NULL,
    UserName               nvarchar(255)    DEFAULT '' NOT NULL,
    TrackerType            varchar(50)      DEFAULT '' NOT NULL,
    LastAccessDateTime     datetime         DEFAULT getdate() NOT NULL,
    PageUrl                varchar(200)     DEFAULT '' NOT NULL,
    PageNodeID             int              DEFAULT 0 NOT NULL,
    PageContentID          int              DEFAULT 0 NOT NULL,
    Referrer               varchar(200)     DEFAULT '' NOT NULL,
    IPAddress              varchar(200)     DEFAULT '' NOT NULL,
    OperatingSystem        varchar(200)     DEFAULT '' NOT NULL,
    Browser                varchar(200)     DEFAULT '' NOT NULL,
    AccessDateTime         datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_siteserver_Tracking PRIMARY KEY CLUSTERED (TrackingID)
)
go



CREATE TABLE siteserver_UserGroup(
    GroupID            int             IDENTITY(1,1),
    GroupName          nvarchar(50)    DEFAULT '' NOT NULL,
    IsCredits          varchar(18)     DEFAULT '' NOT NULL,
    CreditsFrom        int             DEFAULT 0 NOT NULL,
    CreditsTo          int             DEFAULT 0 NOT NULL,
    Stars              int             DEFAULT 0 NOT NULL,
    Color              varchar(10)     DEFAULT '' NOT NULL,
    Rank               int             DEFAULT 0 NOT NULL,
    UserPermissions    ntext           DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_UserGroup PRIMARY KEY NONCLUSTERED (GroupID)
)
go



CREATE TABLE siteserver_Users(
    UserName       nvarchar(255)    NOT NULL,
    GroupID        int              DEFAULT 0 NOT NULL,
    Credits        int              DEFAULT 0 NOT NULL,
    SettingsXML    ntext            DEFAULT '' NOT NULL,
    CONSTRAINT PK_siteserver_Users PRIMARY KEY NONCLUSTERED (UserName)
)
go



CREATE INDEX IX_siteserver_MD_N ON siteserver_MenuDisplay(PublishmentSystemID)
go
CREATE CLUSTERED INDEX IX_siteserver_Node_Taxis ON siteserver_Node(Taxis)
go
CREATE INDEX IX_siteserver_Node_P ON siteserver_Node(PublishmentSystemID)
go
CREATE INDEX IX_siteserver_SM_N ON siteserver_SeoMeta(PublishmentSystemID)
go
CREATE INDEX IX_siteserver_Template_Node ON siteserver_Template(PublishmentSystemID)
go
CREATE INDEX IX_siteserver_Template_TT ON siteserver_Template(TemplateType)
go
CREATE INDEX IX_siteserver_Tracking_P ON siteserver_Tracking(PublishmentSystemID)
go
CREATE INDEX IX_siteserver_Tracking_Page ON siteserver_Tracking(PageNodeID, PageContentID)
go
ALTER TABLE siteserver_GatherDatabaseRule ADD CONSTRAINT FK_siteserver_GDR_N 
    FOREIGN KEY (PublishmentSystemID)
    REFERENCES siteserver_Node(NodeID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE siteserver_GatherFileRule ADD CONSTRAINT FK_siteserver_GFR_N 
    FOREIGN KEY (PublishmentSystemID)
    REFERENCES siteserver_Node(NodeID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE siteserver_GatherRule ADD CONSTRAINT FK_siteserver_GR_N 
    FOREIGN KEY (PublishmentSystemID)
    REFERENCES siteserver_Node(NodeID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE siteserver_InputContent ADD CONSTRAINT FK_siteserver_IC_I 
    FOREIGN KEY (InputID)
    REFERENCES siteserver_Input(InputID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE siteserver_MenuDisplay ADD CONSTRAINT FK_siteserver_MD_N 
    FOREIGN KEY (PublishmentSystemID)
    REFERENCES siteserver_Node(NodeID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE siteserver_PagePermissions ADD CONSTRAINT FK_siteserver_PP_N 
    FOREIGN KEY (NodeID)
    REFERENCES siteserver_Node(NodeID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE siteserver_PublishmentSystem ADD CONSTRAINT FK_siteserver_PS_N 
    FOREIGN KEY (PublishmentSystemID)
    REFERENCES siteserver_Node(NodeID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE siteserver_RelatedFieldItem ADD CONSTRAINT FK_siteserver_RFI_RF 
    FOREIGN KEY (RelatedFieldID)
    REFERENCES siteserver_RelatedField(RelatedFieldID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE siteserver_SeoMeta ADD CONSTRAINT FK_siteserver_SM_N 
    FOREIGN KEY (PublishmentSystemID)
    REFERENCES siteserver_Node(NodeID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE siteserver_SeoMetasInNodes ADD CONSTRAINT FK_siteserver_SMInN_SM 
    FOREIGN KEY (SeoMetaID)
    REFERENCES siteserver_SeoMeta(SeoMetaID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE siteserver_SystemPermissions ADD CONSTRAINT FK_siteserver_SP_N 
    FOREIGN KEY (PublishmentSystemID)
    REFERENCES siteserver_Node(NodeID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE siteserver_Template ADD CONSTRAINT FK_siteserver_Template_Node 
    FOREIGN KEY (PublishmentSystemID)
    REFERENCES siteserver_Node(NodeID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE siteserver_TemplateMatch ADD CONSTRAINT FK_siteserver_TM_N 
    FOREIGN KEY (NodeID)
    REFERENCES siteserver_Node(NodeID) ON DELETE CASCADE ON UPDATE CASCADE
go

ALTER TABLE siteserver_TemplateMatch ADD CONSTRAINT FK_siteserver_TM_TR 
    FOREIGN KEY (RuleID)
    REFERENCES siteserver_TemplateRule(RuleID) ON DELETE CASCADE ON UPDATE CASCADE
go


ALTER TABLE siteserver_Tracking ADD CONSTRAINT FK_siteserver_Tracking_Node 
    FOREIGN KEY (PublishmentSystemID)
    REFERENCES siteserver_Node(NodeID) ON DELETE CASCADE ON UPDATE CASCADE
go


