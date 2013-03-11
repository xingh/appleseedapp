﻿/****** Object:  StoredProcedure [rb_UpdateComponentModule]    Script Date: 12/21/2012 11:43:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Procedure rb_UpdateComponentModule*/
ALTER PROCEDURE [rb_UpdateComponentModule]
	@ModuleID int,
	@CreatedByUser nvarchar(100),
	@Title nvarchar(100),
	@Component nvarchar(MAX)
AS
IF NOT EXISTS (
    SELECT 
        * 
    FROM 
        rb_ComponentModule
    WHERE 
        ModuleID = @ModuleID
)
    INSERT INTO rb_ComponentModule (
	ModuleID,
	CreatedByUser,
	CreatedDate,
	Title,
	Component
    ) 
    VALUES (
	@ModuleID,
	@CreatedByUser,
	GETDATE(),
	@Title,
	@Component
    )
ELSE
     UPDATE rb_ComponentModule
     SET
	CreatedByUser = @CreatedByUser,
	CreatedDate = GETDATE(),
	Title = @Title,
	Component = @Component
     WHERE
	ModuleID = @ModuleID
