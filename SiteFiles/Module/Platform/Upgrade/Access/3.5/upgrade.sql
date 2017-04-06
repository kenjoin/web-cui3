CREATE TABLE bairong_Card(
    CardID      counter    NOT NULL,
    CardSN        text(50)      NOT NULL,
    Password      text(50)      DEFAULT "" NOT NULL,
    CardTypeID    integer              DEFAULT 0 NOT NULL,
    CreateTime    time         DEFAULT Now() NOT NULL,
    EndTime       time         DEFAULT Now() NOT NULL,
    UseTime       text(50)      DEFAULT "" NOT NULL,
    Status        text(20)      NOT NULL,
    UserName      text(255)    NOT NULL,
    CONSTRAINT PK_bairong_Card PRIMARY KEY (CardID)
)
go



CREATE TABLE bairong_CardType(
    CardTypeID     counter          NOT NULL,
    NameType       text(50)      DEFAULT "" NOT NULL,
    CardCount      integer               DEFAULT 0 NOT NULL,
    Price          decimal(20, 3)    DEFAULT 0 NOT NULL,
    Description    text(255)     DEFAULT "" NOT NULL,
    AddTime        time          DEFAULT Now() NOT NULL,
    CONSTRAINT PK_bairong_CardType PRIMARY KEY (CardTypeID)
)
go

CREATE TABLE bairong_Payment(
    PaymentID    COUNTER         NOT NULL,
    PaymentType    text(50)      DEFAULT "" NOT NULL,
    PaymentName    text(50)     DEFAULT "" NOT NULL,
    Fee            integer              DEFAULT 0 NOT NULL,
    IsEnabled      text(18)      DEFAULT "" NOT NULL,
    IsCOD          text(18)      DEFAULT "" NOT NULL,
    IsPayOnline    text(18)      DEFAULT "" NOT NULL,
    Description    text(255)    DEFAULT "" NOT NULL,
    Taxis          integer              DEFAULT 0 NOT NULL,
    SettingsXML    memo            DEFAULT "" NOT NULL,
    CONSTRAINT PK_bairong_Payment PRIMARY KEY (PaymentID)
)
go



CREATE TABLE bairong_PayRecord(
    RecordID      COUNTER             NOT NULL,
    OrderSN        text(50)       DEFAULT "" NOT NULL,
    UserName       text(255)     DEFAULT "" NOT NULL,
    PayTime        time          DEFAULT Now() NOT NULL,
    Price          decimal(20, 2)    DEFAULT 0 NOT NULL,
    IP             text(50)       DEFAULT "" NOT NULL,
    SettingsXML    memo             DEFAULT "" NOT NULL,
    ApiType        text(50)       DEFAULT "" NOT NULL,
    CONSTRAINT PK_bairong_PayRecord PRIMARY KEY (RecordID)
)
go

CREATE TABLE bairong_SSOApp(
    AppID             COUNTER          NOT NULL,
    AppType           text(50)      DEFAULT "" NOT NULL,
    AppName           text(50)     DEFAULT "" NOT NULL,
    Url               text(200)     DEFAULT "" NOT NULL,
    AuthKey           text(200)     DEFAULT "" NOT NULL,
    IPAddress         text(50)      DEFAULT "" NOT NULL,
    AccessFileName    text(50)      DEFAULT "" NOT NULL,
    IsSyncLogin       text(18)      DEFAULT "" NOT NULL,
    AddDate           time         DEFAULT Now() NOT NULL,
    Summary           text(255)    DEFAULT "" NOT NULL,
    CONSTRAINT PK_bairong_SSOApp PRIMARY KEY (AppID)
)

GO

CREATE TABLE bairong_UserAddCard(
    CardID         COUNTER              NOT NULL,
    CardCount      integer              DEFAULT 0 NOT NULL,
    BuyTime        time         DEFAULT Now() NULL,
    IP             text(50)      DEFAULT "" NOT NULL,
    SettingsXML    memo            DEFAULT "" NOT NULL,
    UserName       text(255)    DEFAULT "" NOT NULL,
    CONSTRAINT PK_bairong_UserAddCard PRIMARY KEY (CardID)
)
go

CREATE TABLE bairong_UserBinding(
    UserName       text(255)    NOT NULL,
    BindingType    text(50)      DEFAULT "" NOT NULL,
    BindingID      integer              DEFAULT 0 NOT NULL,
    BindingName    text(255)    DEFAULT "" NOT NULL,
    CONSTRAINT PK_bairong_UserBinding PRIMARY KEY NONCLUSTERED (UserName)
)
go

CREATE TABLE bairong_UserConsume(
    ConsumeID      COUNTER              NOT NULL,
    Consumed       text(50)      DEFAULT "" NOT NULL,
    ConsumeTime    time         DEFAULT Now() NOT NULL,
    IP             text(50)      DEFAULT "" NOT NULL,
    Description    text(255)     DEFAULT "" NOT NULL,
    UserName       text(255)    DEFAULT "" NOT NULL,
	ConsumedCount    integer              DEFAULT 0 NOT NULL,
    CONSTRAINT PK_UserConsume PRIMARY KEY (ConsumeID)
)
go



ALTER TABLE bairong_Users ADD 
	IsTemporary         text(18)      DEFAULT "" NOT NULL,
	PointCount          integer              DEFAULT 0 NOT NULL,
	IP					text(50)      DEFAULT "" NOT NULL
GO