CREATE TABLE bairong_GeneralPermissionsInRoles(
    RoleName              text (255) NOT NULL DEFAULT "" ,
    GeneralPermissions    memo NOT NULL DEFAULT "" ,
    CONSTRAINT PK_bairong_GeneralPermissionsInRoles PRIMARY KEY (RoleName)
)

GO

CREATE TABLE bairong_Log(
    LogID          counter NOT NULL ,
    LogUserName    text (50) NOT NULL DEFAULT "" ,
    LogIP          text (50) NOT NULL DEFAULT "" ,
    OS             text (50) NOT NULL DEFAULT "" ,
    IsSuccessed    text (18) NOT NULL DEFAULT "" ,
    LoginDate      time NOT NULL DEFAULT Now() ,
    CONSTRAINT PK_bairong_Log PRIMARY KEY (LogID)
)

GO

CREATE TABLE bairong_UserConfig(
    CenterName      text (50) NOT NULL DEFAULT "" ,
    Copyright       text (255) NOT NULL DEFAULT "" ,
    DefaultTheme    text (50) NOT NULL DEFAULT "" ,
    SettingsXML     memo NOT NULL DEFAULT ""
)

GO

ALTER TABLE bairong_UserGroups ADD 
    UserPermissions    memo NOT NULL DEFAULT ""

GO