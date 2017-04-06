CREATE TABLE liveserver_Activity(
    ActivityID         int              IDENTITY(1,1),
    ActivityType       varchar(50)      DEFAULT '' NOT NULL,
    ActiveUserName     nvarchar(255)    DEFAULT '' NOT NULL,
    PassiveUserName    nvarchar(255)    DEFAULT '' NOT NULL,
    RelatedIdentity    int              DEFAULT 0 NOT NULL,
    RelatedTitle       nvarchar(255)    DEFAULT '' NOT NULL,
    RelatedContent     ntext            DEFAULT '' NOT NULL,
    AddDate            datetime         DEFAULT getdate() NOT NULL,
    CONSTRAINT PK_liveserver_Activity PRIMARY KEY NONCLUSTERED (ActivityID)
)

GO

exec sp_rename 'liveserver_BlogCategory.UserID','UserName','column'

GO

exec sp_rename 'liveserver_BlogContent.UserID','UserName','column'

GO

ALTER TABLE liveserver_BlogContent ADD 
    CheckedLevel     int              DEFAULT 0 NOT NULL

GO

ALTER TABLE liveserver_Comment DROP COLUMN Title

GO

ALTER TABLE liveserver_Comment DROP COLUMN UserName

GO

ALTER TABLE liveserver_Comment DROP COLUMN Email

GO

exec sp_rename 'liveserver_Comment.RelatedUserID','RelatedUserName','column'

GO

exec sp_rename 'liveserver_Comment.AddUserID','AddUserName','column'

GO

exec sp_rename 'liveserver_Favorite.UserID','UserName','column'

GO

exec sp_rename 'liveserver_Friends.UserID','UserName','column'

GO

exec sp_rename 'liveserver_Friends.FriendUserID','FriendUserName','column'

GO

exec sp_rename 'liveserver_Message.RelatedUserID','RelatedUserName','column'

GO

exec sp_rename 'liveserver_Message.AddUserID','AddUserName','column'

GO

exec sp_rename 'liveserver_MyWeb.UserID','UserName','column'

GO

exec sp_rename 'liveserver_PhotoContent.UserID','UserName','column'

GO

ALTER TABLE liveserver_PhotoContent ADD 
    CheckedLevel     int              DEFAULT 0 NOT NULL

GO

exec sp_rename 'liveserver_PhotoSet.UserID','UserName','column'

GO

exec sp_rename 'liveserver_Tag.UserID','UserName','column'

GO

exec sp_rename 'liveserver_UserContent.UserID','UserName','column'

GO

exec sp_rename 'liveserver_Users.UserID','UserName','column'

GO

exec sp_rename 'liveserver_Visitors.UserID','UserName','column'

GO

exec sp_rename 'liveserver_Visitors.BeVisitedUserID','BeVisitedUserName','column'

GO

exec sp_rename 'liveserver_Word.RelatedUserID','RelatedUserName','column'

GO

exec sp_rename 'liveserver_Word.AddUserID','AddUserName','column'

GO

ALTER TABLE liveserver_Word ADD 
    IsChecked          varchar(18)      DEFAULT '' NOT NULL,
    CheckedLevel     int              DEFAULT 0 NOT NULL

GO
