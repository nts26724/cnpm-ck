CREATE DATABASE [ArticleDB]
USE [ArticleDB]





/****** Object:  Table [dbo].[Khoa]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [varchar](10) NOT NULL,
	[TenKhoa] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[MonHoc]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [varchar](10) NOT NULL,
	[TenMH] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[BaiBao]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiBao](
	[MaBB] [int] IDENTITY(1,1) NOT NULL,
	[NoiDangBai] [nvarchar](100) NULL,
	[TenBB] [nvarchar](100) NULL,
	[MaKhoa] [varchar](10) NULL,
	[SoPH] [int] NULL,
	[STBD] [int] NULL,
	[STKT] [int] NULL,
	[NgayXB] [date] NULL,
	[LinkBB] [varchar](255) NULL,
	[MaMH] [varchar](10) NULL,
	[DOI] [varchar](100) NULL,
	[TrangThai] [nvarchar](15) NULL,
	[GhiChu] [nvarchar](255) NULL,
	[MinhChung] VARBINARY(MAX) NULL
PRIMARY KEY CLUSTERED 
(
	[MaBB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaND] [varchar](10) NOT NULL,
	[MatKhau] [varchar](255) NOT NULL,
	[Loai] [int] NOT NULL,
	--[TrangThai] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
) ON [PRIMARY]



/****** Object:  Table [dbo].[GiangVien]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[MaGV] [varchar](10) NOT NULL,
	[HoTenGV] [nvarchar](100) NOT NULL,
	[SLBB] [int] NULL,
	[SoGio] [FLOAT] NULL,
	[HocVi] [nvarchar](30) NOT NULL,
	[HocHam] [nvarchar](30) NOT NULL,
	[ADD] [VARBINARY](MAX),
	[NgayVaoTruong] [date] NULL
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[GV_BB]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV_BB](
	[MaGV] [varchar](10) NOT NULL,
	[MaBB] [int] NOT NULL,
	[VaiTro] [nvarchar](30)
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC, [MaBB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[NGS]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGS](
	[MaNGS] [varchar](10) NOT NULL,
	[HoTenNGS] [nvarchar](100) NOT NULL,
	[ADD] [VARBINARY](MAX),
PRIMARY KEY CLUSTERED 
(
	[MaNGS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[NKD]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NKD](
	[MaNKD] [VARCHAR](10) NOT NULL,
	[HoTenNKD] [nvarchar](100) NOT NULL,
	[ADD] [VARBINARY](MAX),
PRIMARY KEY CLUSTERED 
(
	[MaNKD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO












GO
ALTER TABLE [dbo].[BaiBao] ADD  DEFAULT (getdate()) FOR [NgayXB]
GO
ALTER TABLE [dbo].[GiangVien] ADD  DEFAULT ((0)) FOR [SLBB]
GO
ALTER TABLE [dbo].[GiangVien] ADD  DEFAULT ((0)) FOR [SoGio]
GO
ALTER TABLE [dbo].[GiangVien] ADD  DEFAULT (getdate()) FOR [NgayVaoTruong]
GO






ALTER TABLE [dbo].[BaiBao]  WITH CHECK ADD FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[BaiBao]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[GV_BB]  WITH CHECK ADD FOREIGN KEY([MaBB])
REFERENCES [dbo].[BaiBao] ([MaBB])
GO
ALTER TABLE [dbo].[GV_BB]  WITH CHECK ADD FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiangVien] ([MaGV])
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD FOREIGN KEY([MaGV])
REFERENCES [dbo].[TaiKhoan] ([MaND])
GO
ALTER TABLE [dbo].[NGS]  WITH CHECK ADD FOREIGN KEY([MaNGS])
REFERENCES [dbo].[TaiKhoan] ([MaND])
GO
ALTER TABLE [dbo].[NKD]  WITH CHECK ADD FOREIGN KEY([MaNKD])
REFERENCES [dbo].[TaiKhoan] ([MaND])
GO











-- ham insert
CREATE FUNCTION dbo.GetNextMaGV()
RETURNS VARCHAR(10)
AS
BEGIN
    DECLARE @NextMaGV VARCHAR(10)
    DECLARE @MaxMaGV VARCHAR(10)

    SELECT @MaxMaGV = MAX(MaGV) FROM dbo.GiangVien

    IF @MaxMaGV IS NULL
    BEGIN
        SET @NextMaGV = 'GV1'
    END
    ELSE
    BEGIN
        SET @NextMaGV = 'GV' + CAST(CAST(SUBSTRING(@MaxMaGV, 3, LEN(@MaxMaGV)) AS INT) + 1 AS VARCHAR(10))
    END
    
    RETURN @NextMaGV
END;
GO



CREATE PROCEDURE AddGV
	@MaGV VARCHAR(10),
    @HoTenGV NVARCHAR(100),
    @HocVi NVARCHAR(30),
    @HocHam NVARCHAR(30)
AS
BEGIN
	INSERT INTO GiangVien (MaGV, HoTenGV, HocVi, HocHam)
    VALUES (@MaGV, @HoTenGV, @HocVi, @HocHam);
END;
GO




CREATE PROCEDURE [dbo].[sp_SubmitReportByGiangVien]
    @TenBaiBao NVARCHAR(100),
    @NoiDangBai NVARCHAR(100),
    @TacGiaChinh VARCHAR(10),
    @TacGiaHoTro VARCHAR(255), -- Increased length to accommodate multiple IDs
    @LinkBB VARCHAR(255),
    @MaKhoa VARCHAR(20),
    @SoPH INT,
    @SoTrang INT,
    @NgayXB DATE,
    @DOI VARCHAR(255),
    @MaMH VARCHAR(10),
    @MinhChung VARBINARY(MAX)
AS
BEGIN
    -- Start a transaction
    BEGIN TRANSACTION;

    -- Insert the new report into the BaiBao table
    INSERT INTO BaiBao (TenBB, NoiDangBai, LinkBB, MaKhoa, SoPH, STKT, NgayXB, MaMH, DOI, TrangThai, MinhChung)
    VALUES (@TenBaiBao, @NoiDangBai, @LinkBB, @MaKhoa, @SoPH, @SoTrang, @NgayXB, @MaMH, @DOI, 'submitted', @MinhChung);

    -- Get the ID of the newly inserted report
    DECLARE @newReportId INT;
    SET @newReportId = SCOPE_IDENTITY();

    -- Insert the link between the GiangVien and the new report into the GV_BB table
    INSERT INTO GV_BB (MaGV, MaBB, VaiTro)
    VALUES (@TacGiaChinh, @newReportId, N'Chính');

    -- Split @TacGiaHoTro into individual MaGV values and insert them into GV_BB
    DECLARE @TacGiaHoTroList TABLE (MaGV VARCHAR(10));
    DECLARE @Pos INT;
    DECLARE @NextPos INT;
    DECLARE @Value VARCHAR(10);

    SET @Pos = 1;
    SET @NextPos = CHARINDEX(',', @TacGiaHoTro, @Pos);

    WHILE @NextPos > 0
    BEGIN
        SET @Value = LTRIM(RTRIM(SUBSTRING(@TacGiaHoTro, @Pos, @NextPos - @Pos)));
        INSERT INTO @TacGiaHoTroList (MaGV) VALUES (@Value);
        SET @Pos = @NextPos + 1;
        SET @NextPos = CHARINDEX(',', @TacGiaHoTro, @Pos);
    END;

    -- Insert the last value
    SET @Value = LTRIM(RTRIM(SUBSTRING(@TacGiaHoTro, @Pos, LEN(@TacGiaHoTro) - @Pos + 1)));
    INSERT INTO @TacGiaHoTroList (MaGV) VALUES (@Value);
    -- Insert each MaGV from the list into GV_BB
    INSERT INTO GV_BB (MaGV, MaBB, VaiTro)
    SELECT MaGV, @newReportId, N'Hỗ trợ'
    FROM @TacGiaHoTroList;

    -- Commit the transaction
    COMMIT TRANSACTION;
END
GO



CREATE PROCEDURE AddBB
    @NoiDangBai NVARCHAR(100),
    @TenBB NVARCHAR(100),
    @MaKhoa VARCHAR(10),
    @SoPH INT,
    @STBD INT,
    @STKT INT,
    @NgayXB DATE,
    @LinkBB VARCHAR(255),
    @MaMH VARCHAR(10),
    @DOI VARCHAR(100),
    @MinhChung VARBINARY(MAX)
AS
BEGIN
	IF @NgayXB > GETDATE()
	BEGIN
		SELECT N'Ngày xuất bản không hợp lệ'
		RETURN 
	END

	IF @STBD > @STKT
	BEGIN
		SELECT N'Số trang không hợp lệ'
		RETURN
	END

	DECLARE @TrangThai NVARCHAR(15)
	SELECT @TrangThai = N'Đã nộp'

	INSERT INTO BaiBao (NoiDangBai, TenBB, MaKhoa, SoPH, STBD, STKT, NgayXB, LinkBB, MaMH, DOI, TrangThai, MinhChung)
	VALUES (@NoiDangBai, @TenBB, @MaKhoa, @SoPH, @STBD, @STKT, @NgayXB, @LinkBB, @MaMH, @DOI, @TrangThai, @MinhChung);
END;
GO



CREATE PROCEDURE AddGV_BB
	@MaGV VARCHAR(10),
	@MaBB INT,
	@VaiTro NVARCHAR(30)
AS
BEGIN
	INSERT INTO GV_BB(MaGV, MaBB, VaiTro) 
	VALUES (@MaGV, @MaBB, @VaiTro);
END;
GO










INSERT INTO TaiKhoan (MaND, MatKhau, Loai)
VALUES 
('GV1', 'password', 1),
('GV2', 'password', 1),
('GV3', 'password', 1),
('NKD1', 'password', 2),
('NGS1', 'password', 3);


INSERT INTO Khoa (MaKhoa, TenKhoa)
VALUES
('CNTT', N'Khoa Công nghệ thông tin'),
('KTe', N'Khoa Kinh tế'),
('YD', N'Khoa Y học'),
('LAW', N'Khoa Luật'),
('KThuat', N'Khoa Kỹ thuật');



EXEC AddGV @MaGV = 'GV1', @HoTenGV = N'Nguyễn Văn A', @HocVi = N'Tiến Sĩ', @HocHam = N'Giáo sư';
EXEC AddGV @MaGV = 'GV2', @HoTenGV = N'Trần Thị B', @HocVi = N'Thạc Sĩ', @HocHam = N'Phó giáo sư';
EXEC AddGV @MaGV = 'GV3', @HoTenGV = N'Lê Văn C', @HocVi = N'Thạc Sĩ', @HocHam = N'';




INSERT INTO MonHoc (MaMH, TenMH)
VALUES 
('MH1', N'Lập trình C++'),
('MH2', N'Kinh tế vi mô'),
('MH3', N'Giải phẫu học');

-- bai 1 do gv 1 viet
EXEC AddBB 
    @NoiDangBai = N'Tạp chí Khoa Học Công Nghệ', 
    @TenBB = N'Ứng dụng AI trong chăm sóc sức khỏe', 
    @MaKhoa = 'CNTT', 
    @SoPH = 25, 
    @STBD = 1, 
    @STKT = 10, 
    @NgayXB = '2024-11-15', 
    @LinkBB = 'https://example.com/bai1', 
    @MaMH = 'MH1',
    @DOI = '10.1000/journal.2024.001', 
    @MinhChung = NULL;

DECLARE @MaxMaBB1 VARCHAR(10)
SELECT @MaxMaBB1 = MAX(MaBB) FROM BaiBao

EXEC AddGV_BB
	@MaGV = 'GV1',
	@MaBB = @MaxMaBB1,
	@VaiTro = N'Chính';



-- bai bao 2 do gv1 va gv2 viet
EXEC AddBB 
    @NoiDangBai = N'Tạp chí Y học', 
    @TenBB = N'Nghiên cứu về virus SARS-CoV-2', 
    @MaKhoa = 'YD', 
    @SoPH = 30, 
    @STBD = 1, 
    @STKT = 15, 
    @NgayXB = '2024-11-17', 
    @LinkBB = 'https://example.com/bai2', 
    @MaMH = 'MH2', 
    @DOI = '10.1000/journal.2024.002', 
    @MinhChung = NULL;

DECLARE @MaxMaBB2 VARCHAR(10)
SELECT @MaxMaBB2 = MAX(MaBB) FROM BaiBao

EXEC AddGV_BB
	@MaGV = 'GV2',
	@MaBB = @MaxMaBB2,
	@VaiTro = N'Chính';

EXEC AddGV_BB
	@MaGV = 'GV1',
	@MaBB = @MaxMaBB2,
	@VaiTro = N'Hỗ trợ';


-- bb3 do gv1,2,3 viet
EXEC AddBB 
    @NoiDangBai = N'Tạp chí Kinh tế', 
    @TenBB = N'Phân tích tác động của chính sách tiền tệ', 
    @MaKhoa = 'KTe', 
    @SoPH = 40, 
    @STBD = 10, 
    @STKT = 20, 
    @NgayXB = '2024-11-20', 
    @LinkBB = 'https://example.com/bai3', 
    @MaMH = 'MH3', 
    @DOI = '10.1000/journal.2024.003', 
    @MinhChung = NULL;

DECLARE @MaxMaBB3 VARCHAR(10)
SELECT @MaxMaBB3 = MAX(MaBB) FROM BaiBao

EXEC AddGV_BB
	@MaGV = 'GV3',
	@MaBB = @MaxMaBB3,
	@VaiTro = N'Chính';

EXEC AddGV_BB
	@MaGV = 'GV2',
	@MaBB = @MaxMaBB3,
	@VaiTro = N'Hỗ trợ';

EXEC AddGV_BB
	@MaGV = 'GV1',
	@MaBB = @MaxMaBB3,
	@VaiTro = N'Hỗ trợ';

INSERT INTO NKD(MaNKD, HoTenNKD, [ADD])
VALUES ('NKD1', N'Người Kiểm Duyệt 1', NULL)

INSERT INTO NGS(MaNGS, HoTenNGS, [ADD])
VALUES ('NGS1', N'Người Giám Sát 1', NULL)











/****** Object:  StoredProcedure [dbo].[sp_CheckLogin]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CheckLogin] 
	@MaND VARCHAR(10), @MatKhau VARCHAR(255)
AS
BEGIN
	SELECT * FROM TaiKhoan WHERE MaND = @MaND AND MatKhau = @MatKhau
END;
GO

/****** Object:  StoredProcedure [dbo].[sp_GetAccountById]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAccountById]
    @id VARCHAR(10)
AS
BEGIN
    SELECT 
        MaND,
		Loai
    FROM 
        TaiKhoan
    WHERE 
        MaND = @id;
END;
GO

/****** Object:  StoredProcedure [dbo].[sp_GetAccountById]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].sp_GetGiangVienInfoById
    @id VARCHAR(10)
AS
BEGIN
    SELECT 
        *
    FROM 
        GiangVien
    INNER JOIN TaiKhoan
	ON TaiKhoan.MaND = GiangVien.MaGV
	WHERE GiangVien.MaGV = @id
END;
GO

--exec sp_GetGiangVienInfoById 'GV1'

/****** Object:  StoredProcedure [dbo].[sp_GetReportStatisticByYear]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_GetReportStatisticByYear] 
    @year INT,
	@GV_ID VARCHAR(10)
AS
BEGIN
    SELECT 
        MONTH(NgayXB) AS Month,
        COUNT(*) AS TotalReports
    FROM 
        BaiBao bb
	INNER JOIN 
        GV_BB gvb ON bb.MaBB = gvb.MaBB
    WHERE 
        YEAR(NgayXB) = @year AND gvb.MaGV = @GV_ID 
    GROUP BY 
        MONTH(NgayXB)
    ORDER BY 
        Month;
END
GO



CREATE PROCEDURE [dbo].[sp_GetGiangVienReportsById] 
    @Id VARCHAR(30)
AS
BEGIN
    BEGIN
        -- Select reports associated with the user
        SELECT 
            bb.MaBB AS ReportID,
            bb.TenBB AS JournalTitle,
            bb.NoiDangBai AS ReportTitle,
            bb.MaKhoa AS DepartmentCode,
            bb.SoPH AS IssueNumber,
            bb.STBD AS StartPage,
            bb.STKT AS EndPage,
            bb.NgayXB AS PublicationYear,
            bb.LinkBB AS ReportLink,
            bb.MaMH AS SubjectCode,
            bb.DOI AS DOI,
            bb.TrangThai AS Status,
            bb.GhiChu AS Notes,
			bb.MinhChung AS MinhChung
        FROM 
            BaiBao bb
        INNER JOIN 
            GV_BB gvb ON bb.MaBB = gvb.MaBB
        INNER JOIN 
            GiangVien gv ON gvb.MaGV = gv.MaGV
        WHERE 
            gv.MaGV = @Id;
    END
END
GO

--exec sp_GetGiangVienReportsById 'GV1'



/****** Object:  StoredProcedure [dbo].[sp_GetDashboardStatisticsForGiangVien]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetDashboardStatisticsForGiangVien]
    @Id VARCHAR(10)
AS
BEGIN
    SELECT 
        (SELECT COUNT(*) 
         FROM BaiBao bb
         INNER JOIN GV_BB gvb ON bb.MaBB = gvb.MaBB
         WHERE gvb.MaGV = @Id AND bb.TrangThai = N'Đã xử lý') AS PublishedReports,
        
        (SELECT SUM(gv.sogio) 
         FROM GiangVien gv
         WHERE gv.MaGV = @Id) AS TotalTime,
        
        (SELECT COUNT(*) 
         FROM BaiBao bb
         INNER JOIN GV_BB gvb ON bb.MaBB = gvb.MaBB
         WHERE gvb.MaGV = @Id AND bb.TrangThai = N'Đang xử lý') AS ProcessingReports,
        
        (SELECT COUNT(*) 
         FROM BaiBao bb
         INNER JOIN GV_BB gvb ON bb.MaBB = gvb.MaBB
         WHERE gvb.MaGV = @Id AND bb.TrangThai not in (N'Đã xử lý', N'Đang xử lý')) AS ProcessedReports;
END
GO

/****** Object:  StoredProcedure [dbo].[sp_GetReportById]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetReportById]
	@Id INT
AS
BEGIN
	SELECT * FROM BaiBao WHERE MaBB = @Id
END;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetGiangVienByReportId]
	@Id INT
AS
BEGIN
	SELECT GiangVien.MaGV, VaiTro, HoTenGV FROM GV_BB INNER JOIN GiangVien ON GiangVien.MaGV = GV_BB.MaGV
	WHERE MaBB = @Id
END;
GO

--exec sp_GetGiangVienByReportId 5








-- TRIGGER
CREATE TRIGGER trg_UpdateTrangThaiBaiBao
ON dbo.BaiBao
AFTER UPDATE
AS
BEGIN
    DECLARE @NewTrangThai NVARCHAR(15);
    
    SELECT @NewTrangThai = TrangThai FROM inserted;
    
    IF @NewTrangThai = N'Duyệt'
    BEGIN
        DECLARE @MaBB INT;
        SELECT @MaBB = MaBB FROM inserted;

        DECLARE @SoGV INT;
        SELECT @SoGV = COUNT(*) FROM dbo.GV_BB WHERE MaBB = @MaBB;

        UPDATE gv
		SET gv.SoGio = 600 / @SoGV
		FROM dbo.GiangVien gv
		JOIN dbo.GV_BB gvbb ON gv.MaGV = gvbb.MaGV
		WHERE gvbb.MaBB = @MaBB;


        UPDATE gv
        SET SLBB = gv.SLBB + 1
        FROM dbo.GiangVien gv
        JOIN dbo.GV_BB gvbb ON gv.MaGV = gvbb.MaGV
        WHERE gvbb.MaBB = @MaBB;
    END
END;
GO








CREATE PROC GetSLBBByMaGV
    @MaGV VARCHAR(10)
AS
BEGIN
    SELECT SLBB
    FROM GiangVien
    WHERE MaGV = @MaGV;
END;
GO


CREATE PROC GetSoGioByMaGV
    @MaGV VARCHAR(10)
AS
BEGIN
    SELECT SoGio
    FROM GiangVien
    WHERE MaGV = @MaGV;
END;
GO



CREATE PROC GetQuantityReportsProcessingByMaGV
    @MaGV VARCHAR(10)
AS
BEGIN
    DECLARE @Quantity INT;

    SELECT @Quantity = COUNT(*)
    FROM dbo.BaiBao bb
    JOIN dbo.GV_BB gvbb ON bb.MaBB = gvbb.MaBB
    WHERE gvbb.MaGV = @MaGV
    AND bb.TrangThai = N'Đang xử lý';  

    SELECT @Quantity AS QuantityReportsProcessing;
END;
GO



CREATE PROC GetQuantityReportsProcessedByMaGV
    @MaGV VARCHAR(10)
AS
BEGIN
    DECLARE @Quantity INT;

    SELECT @Quantity = COUNT(*)
    FROM dbo.BaiBao bb
    JOIN dbo.GV_BB gvbb ON bb.MaBB = gvbb.MaBB
    WHERE gvbb.MaGV = @MaGV
    AND bb.TrangThai = N'Duyệt';  

    SELECT @Quantity AS QuantityReportsProcessed;
END;
GO



CREATE PROC GetReportsProcessedByMaGV
    @MaGV VARCHAR(10)
AS
BEGIN
    SELECT bb.MaBB, bb.TenBB, bb.TrangThai, bb.GhiChu
    FROM dbo.BaiBao bb
    JOIN dbo.GV_BB gvbb ON bb.MaBB = gvbb.MaBB
    WHERE gvbb.MaGV = @MaGV
	AND bb.TrangThai = N'Duyệt';
END;
GO

--UPDATE BaiBao
--SET [MinhChung] = (SELECT BulkColumn FROM OPENROWSET(BULK 'D:\MH\CNPM\AM_mergecode\images.jpg', SINGLE_BLOB) AS FileData);



CREATE PROCEDURE sp_UpdateInforGV
    @MaGV VARCHAR(10),
    @HoTen NVARCHAR(100),
    @HocHam NVARCHAR(30),
    @HocVi NVARCHAR(30)
AS
BEGIN
    UPDATE dbo.GiangVien
    SET HoTenGV = @HoTen,
        HocHam = @HocHam,
        HocVi = @HocVi
    WHERE MaGV = @MaGV;
END;
GO





CREATE PROC GetReportsProcessingByMaGV
    @MaGV VARCHAR(10)
AS
BEGIN
    SELECT bb.MaBB, bb.TenBB, bb.NoiDangBai
    FROM dbo.BaiBao bb
    JOIN dbo.GV_BB gvbb ON bb.MaBB = gvbb.MaBB
    WHERE gvbb.MaGV = @MaGV
	AND bb.TrangThai = N'Đang xử lý';
END;
GO



CREATE PROC GetReportsSubmittedByMaGV
    @MaGV VARCHAR(10)
AS
BEGIN
    SELECT bb.MaBB, bb.TenBB, bb.NoiDangBai
    FROM dbo.BaiBao bb
    JOIN dbo.GV_BB gvbb ON bb.MaBB = gvbb.MaBB
    WHERE gvbb.MaGV = @MaGV
	AND bb.TrangThai = N'Đã nộp';
END;
GO



CREATE PROC GetInforReportByMaBB
    @MaBB INT
AS
BEGIN
    SELECT *
    FROM dbo.BaiBao
    WHERE MaBB = @MaBB;
END;
GO



CREATE PROC GetInforByMaGV
    @MaGV VARCHAR(10)
AS
BEGIN
    SELECT 
		MaGV,
		HoTenGV,
		HocHam,
		HocVi,
		SLBB,
		SoGio
    FROM dbo.GiangVien
    WHERE MaGV = @MaGV;
END;
GO



CREATE PROC GetHoTenGVByMaGV
    @MaGV VARCHAR(10)
AS
BEGIN
    SELECT HoTenGV
    FROM dbo.GiangVien
    WHERE MaGV = @MaGV;
END;
GO



CREATE PROC GetQuantityReportsSubmitted
AS
BEGIN
    SELECT COUNT(*) AS SoLuongBaiBaoDaNop
    FROM dbo.BaiBao
    WHERE TrangThai = N'Đã nộp';
END;
GO



CREATE PROC GetQuantityReportsProcessed
AS
BEGIN
    SELECT COUNT(*) AS SoLuongBaiBaoDaXuLy
    FROM dbo.BaiBao
    WHERE TrangThai = N'Duyệt' OR TrangThai = N'Từ chối';
END;
GO



CREATE PROC GetQuantityReportsProcessing
AS
BEGIN
    SELECT COUNT(*) AS SoLuongBaiBaoDangXuLy
    FROM dbo.BaiBao
    WHERE TrangThai = N'Đang xử lý';
END;
GO



CREATE PROC GetListReportsSubmittedForNKD
AS
BEGIN
    SELECT 
        BB.MaBB, 
        BB.TenBB, 
        GV.HoTenGV, 
        YEAR(BB.NgayXB) AS NamXB
    FROM dbo.BaiBao AS BB
    INNER JOIN dbo.GV_BB AS GVBB ON BB.MaBB = GVBB.MaBB
    INNER JOIN dbo.GiangVien AS GV ON GVBB.MaGV = GV.MaGV
    WHERE BB.TrangThai = N'Đã nộp'
	AND GVBB.VaiTro = 'Chính';
END;
GO



CREATE PROC GetListReportsProcessingForNKD
AS
BEGIN
    SELECT 
        BB.MaBB, 
        BB.TenBB, 
        GV.HoTenGV, 
        YEAR(BB.NgayXB) AS NamXB
    FROM dbo.BaiBao AS BB
    INNER JOIN dbo.GV_BB AS GVBB ON BB.MaBB = GVBB.MaBB
    INNER JOIN dbo.GiangVien AS GV ON GVBB.MaGV = GV.MaGV
    WHERE BB.TrangThai = N'Đang xử lý'
	AND GVBB.VaiTro = 'Chính';
END;
GO



CREATE PROC GetListReportsProcessedForNKD
AS
BEGIN
    SELECT 
        BB.MaBB, 
        BB.TenBB, 
        GV.HoTenGV, 
        BB.TrangThai,
		BB.GhiChu
    FROM dbo.BaiBao AS BB
    INNER JOIN dbo.GV_BB AS GVBB ON BB.MaBB = GVBB.MaBB
    INNER JOIN dbo.GiangVien AS GV ON GVBB.MaGV = GV.MaGV
    WHERE (BB.TrangThai = N'Duyệt' OR BB.TrangThai = N'Từ chối')
	AND GVBB.VaiTro = 'Chính';
END;
GO



CREATE PROC GetInforByMaNKD
    @MaNKD VARCHAR(10)
AS
BEGIN
    SELECT 
		MaNKD,
		HoTenNKD
    FROM dbo.NKD
    WHERE @MaNKD = @MaNKD;
END;
GO



CREATE PROC GetQuantityGV
AS
BEGIN
    SELECT COUNT(*) AS TotalGiangVien
    FROM dbo.GiangVien;
END;
GO



CREATE PROC GetQuantityReportsReceived
AS
BEGIN
    SELECT COUNT(*) AS QuantityReportsReceived
    FROM dbo.BaiBao BB
	WHERE BB.TrangThai = N'Đã nộp' 
	OR BB.TrangThai = N'Đang xử lý';
END;
GO



CREATE PROC GetQuantityReports
AS
BEGIN
    SELECT COUNT(*) AS TotalReports
    FROM dbo.BaiBao;
END;
GO



CREATE PROC GetListGV
AS
BEGIN
    SELECT 
        MaGV,
        HoTenGV,
        HocVi,
        HocHam,
        YEAR(NgayVaoTruong) AS NamVaoTruong
    FROM dbo.GiangVien;
END;
GO



CREATE PROC GetListStatisticSoGio
AS
BEGIN
    SELECT 
        MaGV,
        HoTenGV,
		SLBB,
        SoGio,
        YEAR(NgayVaoTruong) AS NamVaoTruong
    FROM dbo.GiangVien;
END;
GO



CREATE PROC GetInforByMaNGS
	@MaNGS VARCHAR(10)
AS
BEGIN
    SELECT 
        @MaNGS,
        HoTenNGS
    FROM dbo.NGS;
END;
GO



CREATE PROC GetQuantityReportsApproved
AS
BEGIN
    SELECT COUNT(*) AS QuantityReportsApproved
    FROM dbo.BaiBao
    WHERE TrangThai = N'Duyệt';
END;
GO



CREATE PROC GetQuantityReportsRejected
AS
BEGIN
    SELECT COUNT(*) AS QuantityReportsRejected
    FROM dbo.BaiBao
    WHERE TrangThai = N'Từ chối';
END;
GO



CREATE PROC SetApproved
    @MaBB INT
AS
BEGIN
    UPDATE dbo.BaiBao
    SET TrangThai = N'Duyệt'
    WHERE MaBB = @MaBB;
END;
GO



CREATE PROC SetReject
    @MaBB INT
AS
BEGIN
    UPDATE dbo.BaiBao
    SET TrangThai = N'Từ chối'
    WHERE MaBB = @MaBB;
END;
GO




CREATE PROC SetProcessing
    @MaBB INT
AS
BEGIN
    UPDATE dbo.BaiBao
    SET TrangThai = N'Đang xử lý'
    WHERE MaBB = @MaBB;
END;
GO



CREATE PROCEDURE ChangeAvatarGV
    @MaGV VARCHAR(10),
    @NewAvatar VARBINARY(MAX)
AS
BEGIN
    UPDATE dbo.GiangVien
    SET [ADD] = @NewAvatar
    WHERE MaGV = @MaGV;
END;
GO



CREATE PROCEDURE UpdateInforGV
    @MaGV VARCHAR(10),
    @HoTen NVARCHAR(100),
    @HocHam NVARCHAR(30),
    @HocVi NVARCHAR(30)
AS
BEGIN
    UPDATE dbo.GiangVien
    SET HoTenGV = @HoTen,
        HocHam = @HocHam,
        HocVi = @HocVi
    WHERE MaGV = @MaGV;
END;
GO



CREATE PROCEDURE UpdateInforNKD
    @MaNKD VARCHAR(10),
    @HoTen NVARCHAR(100)
AS
BEGIN
    UPDATE dbo.NKD
    SET HoTenNKD = @HoTen
    WHERE MaNKD = @MaNKD;
END;
GO




CREATE PROCEDURE UpdateInforNGS
    @MaNGS VARCHAR(10),
    @HoTen NVARCHAR(100)
AS
BEGIN
    UPDATE dbo.NKD
    SET HoTenNKD = @HoTen
    WHERE MaNKD = @MaNGS;
END;
GO



CREATE PROCEDURE ChangeAvatarNKD
    @MaNKD VARCHAR(10),
    @NewAvatar VARBINARY(MAX)
AS
BEGIN
    UPDATE dbo.GiangVien
    SET [ADD] = @NewAvatar
    WHERE MaGV = @MaNKD;
END;
GO

select * from GiangVien

CREATE PROCEDURE ChangeAvatarNGS
    @MaNGS VARCHAR(10),
    @NewAvatar VARBINARY(MAX)
AS
BEGIN
    UPDATE dbo.GiangVien
    SET [ADD] = @NewAvatar
    WHERE MaGV = @MaNGS;
END;
GO

