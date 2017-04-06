ALTER TABLE bairong_Users ADD 
    OnlineSeconds          integer       DEFAULT 0 NOT NULL,
	AvatarLarge            text(200)     DEFAULT "" NOT NULL,
    AvatarMiddle           text(200)     DEFAULT "" NOT NULL,
    AvatarSmall            text(200)     DEFAULT "" NOT NULL

GO