USE MarketDB
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
CREATE PROCEDURE [dbo].[sm_meyve_procedur1]
@text nvarchar(200) 
AS
declare
@alis_qiymeti int,
@satis_qiymeti int

SELECT @satis_qiymeti = satis_qiymeti,@alis_qiymeti = alis_qiymeti FROM sm_meyve 

IF @alis_qiymeti> @satis_qiymeti
BEGIN
SET @text = 'Alış qiyməti satış qiymətindən böyükdü'
PRINT @text
end

--- Second approach


GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
CREATE PROCEDURE [dbo].[sm_meyve_procedure]
@text nvarchar(200) 
AS
BEGIN
SELECT CASE WHEN alis_qiymeti > satis_qiymeti THEN
 'Alis qiymeti  satis qiymetiden boyukdu.' END FROM  sm_meyve 
END

