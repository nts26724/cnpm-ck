-- CREATE DATABASE ArticleDB
CREATE DATABASE [ArticleDB]
USE [ArticleDB]



/****** Object:  Table [dbo].[MonHoc]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[id] [varchar](10) NOT NULL,
	[TenMonHoc] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TenMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[Khoa]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[id] [varchar](10) NOT NULL,
	[TenKhoa] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TenKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[loai] [int] NOT NULL,
	[status] [varchar](20) NOT NULL,
	[phone] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[BaiBao]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiBao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TieuDeTC] [nvarchar](100) NULL,
	[TieuDeBB] [nvarchar](100) NULL,
	[MaKhoa] [varchar](10) NULL,
	[SoPH] [varchar](20) NULL,
	[STBD] [varchar](20) NULL,
	[STKT] [varchar](20) NULL,
	[NamXB] [date] NULL,
	[NgayNop] [date] NULL,
	[NgayXuLy] [date] NULL,
	[LinkBB] [varchar](255) NULL,
	[MaMH] [varchar](10) NULL,
	[DOI] [varchar](100) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[GiangVien]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[id] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[slbb] [int] NULL,
	[sogio] [int] NULL,
	[hocvi] [nvarchar](30) NOT NULL,
	[join_date] [date] NULL,
	[faculty] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[NGS]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGS](
	[id] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[DDHA] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[NKD]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NKD](
	[id] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[DDHA] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[GV_BB]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV_BB](
	[MaGV] [int] NOT NULL,
	[MaBB] [int] NOT NULL
) ON [PRIMARY]
GO











ALTER TABLE [dbo].[BaiBao] ADD  DEFAULT (getdate()) FOR [NamXB]
GO
ALTER TABLE [dbo].[BaiBao] ADD  DEFAULT (getdate()) FOR [NgayNop]
GO
ALTER TABLE [dbo].[BaiBao] ADD  DEFAULT (getdate()) FOR [NgayXuLy]
GO
ALTER TABLE [dbo].[GiangVien] ADD  DEFAULT ((0)) FOR [slbb]
GO
ALTER TABLE [dbo].[GiangVien] ADD  DEFAULT ((0)) FOR [sogio]
GO
ALTER TABLE [dbo].[GiangVien] ADD  DEFAULT (getdate()) FOR [join_date]
GO
ALTER TABLE [dbo].[BaiBao]  WITH CHECK ADD FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([id])
GO
ALTER TABLE [dbo].[BaiBao]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([id])
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD FOREIGN KEY([faculty])
REFERENCES [dbo].[Khoa] ([id])
GO
--ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD FOREIGN KEY([id])
--REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[GV_BB]  WITH CHECK ADD FOREIGN KEY([MaBB])
REFERENCES [dbo].[BaiBao] ([id])
GO
ALTER TABLE [dbo].[GV_BB]  WITH CHECK ADD FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiangVien] ([id])
GO
ALTER TABLE [dbo].[NGS]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[NKD]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[TaiKhoan] ([id])
GO















INSERT INTO [dbo].[MonHoc] ([id], [TenMonHoc])
VALUES ('MH001', N'Môn học 1'),
       ('MH002', N'Môn học 2'),
       ('MH003', N'Môn học 3');

INSERT INTO [dbo].[Khoa] ([id], [TenKhoa])
VALUES ('CNTT', N'Khoa Công Nghệ Thông Tin'),
       ('TH', N'Khoa Toán Học'),
       ('VL', N'Khoa Vật Lý');

INSERT INTO [dbo].[TaiKhoan] ([email], [password], [loai], [status], [phone])
VALUES ('user1@example.com', 'password', 1, N'Active', '0901234561'),
       --('user2@example.com', 'password', 1, N'Active', '0902345672'),
	   --('user3@example.com', 'password', 1, N'Active', '0901234563'),
	   ('user4@example.com', 'password', 2, N'Active', '0901234564'),
	   ('user5@example.com', 'password', 3, N'Active', '0901234565'),
	   ('user6@example.com', 'password', 1, N'Inactive', '0901234566'),
	   ('le.van.c@gmail.com', 'myPassword789', 3, 'Active', '0901234560');

INSERT INTO [dbo].[BaiBao] ([TieuDeTC], [TieuDeBB], [MaKhoa], [SoPH], [STBD], [STKT], [NamXB], [NgayNop], [NgayXuLy], [LinkBB], [MaMH], [DOI], [TrangThai], [GhiChu])
VALUES (N'Tiêu đề tạp chí 1', N'Tiêu đề bài báo 1', 'CNTT', 'PH001', '1', '1', '01-01-2024', '01-01-2024', '01-01-2024', 'link1.com', 'MH001', 'DOI001', N'Duyệt', N'Ghi chú 1'),
       (N'Tiêu đề tạp chí 2', N'Tiêu đề bài báo 2', 'TH', 'PH002', '2', '2', '02-01-2024', '02-01-2024', '02-01-2024', 'link2.com', 'MH002', 'DOI002', N'Từ chối', N'Ghi chú 2'),
       (N'Tiêu đề tạp chí 3', N'Tiêu đề bài báo 3', 'VL', 'PH003', '3', '2', '03-01-2024', '03-01-2024', '03-01-2024', 'link3.com', 'MH003', 'DOI002', N'Cần xác minh lại', N'Ghi chú 3');

INSERT INTO [dbo].[GiangVien] ([id], [name], [hocvi], [join_date], [faculty])
VALUES (1, N'Giảng viên 1', N'Phó Giáo Sư', '01-01-2020', 'CNTT'),
       (2, N'Giảng viên 2', N'Tiến Sĩ', '06-15-2019', 'TH'),
	   (3, N'Giảng viên 3', N'Tiến Sĩ', '06-15-2019', 'VL'),
	   (4, N'Giảng viên 4', N'Tiến Sĩ', '06-15-2019', 'VL'),
	   (5, N'Giảng viên 5', N'Tiến Sĩ', '06-15-2019', 'VL');

INSERT INTO [dbo].[GV_BB] ([MaGV], [MaBB])
VALUES (1, 1),
       (2, 2),
	   (2, 3);

INSERT INTO [dbo].[NGS] ([id], [name], [DDHA])
VALUES (1, N'Nguyễn Văn A', 'abc/abc');

INSERT INTO [dbo].[NKD] ([id], [name], [DDHA])
VALUES (1, N'Nguyễn Đức C', 'abc/abc');


UPDATE [dbo].[TaiKhoan]
SET [loai] = 1
WHERE [email] = 'le.van.c@gmail.com'; 

--select loai from TaiKhoan where email = 'le.van.c@gmail.com'

--DELETE FROM [dbo].[MonHoc];
--DELETE FROM [dbo].[Khoa];
--DELETE FROM [dbo].[TaiKhoan];
--DELETE FROM [dbo].[BaiBao];
--DELETE FROM [dbo].[GiangVien];
--DELETE FROM [dbo].[GV_BB];
--DELETE FROM [dbo].[NGS];
--DELETE FROM [dbo].[NKD];

--DROP TABLE [dbo].[MonHoc];
--DROP TABLE [dbo].[Khoa];
--DROP TABLE [dbo].[TaiKhoan];
--DROP TABLE [dbo].[BaiBao];
--DROP TABLE [dbo].[GiangVien];
--DROP TABLE [dbo].[GV_BB];
--DROP TABLE [dbo].[NGS];
--DROP TABLE [dbo].[NKD];







SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAccountRoleByEmail]
	@email VARCHAR(30)
AS
BEGIN
	SELECT loai FROM TaiKhoan WHERE email = @email
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckLogin]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CheckLogin] 
	@email VARCHAR(30), @password VARCHAR(50)
AS
BEGIN
	SELECT * FROM TaiKhoan WHERE email = @email AND password = @password
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAccountById]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAccountById]
    @id INT
AS
BEGIN
    SELECT 
        id,
        email,
        password,
        loai,
        status,
        phone
    FROM 
        TaiKhoan
    WHERE 
        id = @id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDashboardStatisticsForGiangVien]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetDashboardStatisticsForGiangVien]
    @giangVienId INT
AS
BEGIN
    SELECT 
        (SELECT SLBB
         FROM GiangVien gv
         WHERE gv.id = @giangVienId) AS PublishedReports,
        
        (SELECT SUM(gv.sogio) 
         FROM GiangVien gv
         WHERE gv.id = @giangVienId) AS TotalTime,
        
        (SELECT COUNT(*) 
         FROM BaiBao bb
         INNER JOIN GV_BB gvb ON bb.id = gvb.MaBB
         WHERE gvb.MaGV = @giangVienId AND bb.TrangThai = N'Đang xử lý') AS ProcessingReports,
        
        (SELECT COUNT(*) 
         FROM BaiBao bb
         INNER JOIN GV_BB gvb ON bb.id = gvb.MaBB
         WHERE gvb.MaGV = @giangVienId AND bb.TrangThai = N'Đã xử lý') AS ProcessedReports;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDashboardStatisticsForKiemDuyet]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetDashboardStatisticsForKiemDuyet]
AS
BEGIN
    SELECT 
        (SELECT COUNT(*) 
         FROM BaiBao bb
         WHERE bb.TrangThai = N'Đã xuất bản') AS PublishedReports,
        
        (SELECT COUNT(*) 
         FROM BaiBao bb
         WHERE bb.TrangThai = N'Đang xử lý') AS ProcessingReports,
        
        (SELECT COUNT(*) 
         FROM BaiBao bb
         WHERE bb.TrangThai = N'Đã xử lý') AS ProcessedReports;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDeniedReportDashboard]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetDeniedReportDashboard]
    @Year INT
AS
BEGIN
    SELECT 
        MONTH(NgayXuLy) AS Month,
        COUNT(*) AS TotalDeniedReports
    FROM 
        BaiBao
    WHERE 
        YEAR(NgayXuLy) = @Year AND TrangThai = 'Denied'
    GROUP BY 
        MONTH(NgayXuLy)
    ORDER BY 
        Month;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetGiamSatDashboard]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetGiamSatDashboard]
AS
BEGIN
    SELECT 
        (SELECT COUNT(*) FROM GiangVien) AS TotalGiangVien,
        (SELECT COUNT(*) FROM BaiBao) AS TotalReports;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetGiamSatDashboardStatisticByYear]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetGiamSatDashboardStatisticByYear]
    @Year INT
AS
BEGIN
    SELECT 
        MONTH(bb.NgayNop) AS Month,
        COUNT(DISTINCT gvb.MaGV) AS TotalGiangVien,
        COUNT(bb.id) AS TotalReports,
        SUM(gv.sogio) AS TotalSoGio
    FROM 
        BaiBao bb
    INNER JOIN 
        GV_BB gvb ON bb.id = gvb.MaBB
    INNER JOIN 
        GiangVien gv ON gvb.MaGV = gv.id
    WHERE 
        YEAR(bb.NgayNop) = @Year
    GROUP BY 
        MONTH(bb.NgayNop)
    ORDER BY 
        Month;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetGiamSatInfoByEmail]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetGiamSatInfoByEmail]
    @Email VARCHAR(30)
AS
BEGIN
    SELECT 
        NGS.id,
        NGS.name,
        NGS.DDHA,
        TaiKhoan.email,
        TaiKhoan.phone,
        TaiKhoan.status
    FROM 
        NGS
    INNER JOIN 
        TaiKhoan ON NGS.id = TaiKhoan.id
    WHERE 
        Taikhoan.email = @Email;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetGiangVienInfoByEmail]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetGiangVienInfoByEmail]
    @Email VARCHAR(50)
AS
BEGIN
    SELECT
		gv.id AS Id,
        gv.name AS Name,
		gv.faculty AS Faculty,
        gv.hocvi AS HocVi,
        k.TenKhoa AS Khoa,
        tk.email AS Email,
        tk.phone AS PhoneNumber
    FROM 
        GiangVien gv
    INNER JOIN 
        TaiKhoan tk ON gv.id = tk.id
    INNER JOIN 
        Khoa k ON gv.faculty = k.id
    WHERE 
        tk.email = @Email;
END

-- exec sp_GetGiangVienInfoByEmail @email = 'le.van.c@gmail.com'

GO
/****** Object:  StoredProcedure [dbo].[sp_GetGiangVienInfoById]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetGiangVienInfoById]
    @Id INT
AS
BEGIN
    SELECT
		gv.id AS Id,
        gv.name AS Name,
		gv.faculty AS Faculty,
        gv.hocvi AS HocVi,
        k.TenKhoa AS Khoa,
        tk.email AS Email,
        tk.phone AS PhoneNumber
    FROM 
        GiangVien gv
    INNER JOIN 
        TaiKhoan tk ON gv.id = tk.id
    INNER JOIN 
        Khoa k ON gv.faculty = k.id
    WHERE 
        tk.id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetGiangVienList]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetGiangVienList]
AS
BEGIN
    SELECT 
        gv.id,
        gv.name,
        gv.slbb,
        gv.sogio,
        gv.hocvi,
        gv.join_date,
        k.TenKhoa AS Faculty
    FROM 
        GiangVien gv
    INNER JOIN 
        Khoa k ON gv.faculty = k.id
    ORDER BY 
        gv.id ASC;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetGiangVienReportsByEmail]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetGiangVienReportsByEmail] 
    @email VARCHAR(30)
AS
BEGIN
    -- Declare a variable to store the user ID
    DECLARE @userId INT;

    -- Get the user ID based on the provided email
    SELECT @userId = id
    FROM TaiKhoan
    WHERE email = @email;

    -- Check if the user exists
    IF @userId IS NOT NULL
    BEGIN
        -- Select reports associated with the user
        SELECT 
            bb.id AS ReportID,
            bb.TieuDeTC AS JournalTitle,
            bb.TieuDeBB AS ReportTitle,
            bb.MaKhoa AS DepartmentCode,
            bb.SoPH AS IssueNumber,
            bb.STBD AS StartPage,
            bb.STKT AS EndPage,
            bb.NamXB AS PublicationYear,
			bb.NgayNop AS SubmittedDay,
			bb.NgayXuLy AS ProcessedDay,
            bb.LinkBB AS ReportLink,
            bb.MaMH AS SubjectCode,
            bb.DOI AS DOI,
            bb.TrangThai AS Status,
            bb.GhiChu AS Notes
        FROM 
            BaiBao bb
        INNER JOIN 
            GV_BB gvb ON bb.id = gvb.MaBB
        INNER JOIN 
            GiangVien gv ON gvb.MaGV = gv.id
        WHERE 
            gv.id = @userId;
    END
    ELSE
    BEGIN
        -- If the user does not exist, return an error message
        PRINT 'User not found';
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetKiemDuyetInfoByEmail]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetKiemDuyetInfoByEmail]
    @Email VARCHAR(50)
AS
BEGIN
    SELECT
		kd.id AS Id,
        kd.name AS Name,
        tk.email AS Email,
        tk.phone AS PhoneNumber
    FROM 
        NKD kd
    INNER JOIN 
        TaiKhoan tk ON kd.id = tk.id
    WHERE 
        tk.email = @Email AND tk.loai = 2;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPublishedReportDashboard]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetPublishedReportDashboard]
    @Year INT
AS
BEGIN
    SELECT 
        MONTH(NamXB) AS Month,
        COUNT(*) AS TotalPublishedReports
    FROM 
        BaiBao
    WHERE 
        YEAR(NamXB) = @Year AND TrangThai = 'Published'
    GROUP BY 
        MONTH(NamXB)
    ORDER BY 
        Month;
END;
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
	SELECT * FROM BaiBao WHERE id = @Id
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetReportDashboardByFaculty]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetReportDashboardByFaculty]
AS
BEGIN
    SELECT 
        k.TenKhoa AS FacultyName,
        COUNT(bb.id) AS TotalReports,
        SUM(CASE WHEN bb.TrangThai = 'Đã xử lý' THEN 1 ELSE 0 END) AS TotalProcessedReports,
        SUM(CASE WHEN bb.TrangThai = 'Đang xử lý' THEN 1 ELSE 0 END) AS TotalProcessingReports
    FROM 
        BaiBao bb
    INNER JOIN 
        Khoa k ON bb.MaKhoa = k.id
    GROUP BY 
        k.TenKhoa;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetReports]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetReports]
AS
BEGIN
	SELECT * FROM BaiBao
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetReportStatisticByMonth]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetReportStatisticByMonth] 
    @date DATE
AS
BEGIN
    -- Declare variables to store the start and end dates of the month
    DECLARE @startDate DATE;
    DECLARE @endDate DATE;

    -- Calculate the start and end dates of the month
    SET @startDate = DATEFROMPARTS(YEAR(@date), MONTH(@date), 1);
    SET @endDate = EOMONTH(@date);

    -- Select report statistics within the specified month
    SELECT 
        COUNT(*) AS TotalReports,
        SUM(CASE WHEN TrangThai = 'Đã xuất bản' THEN 1 ELSE 0 END) AS PublishedReports,
        SUM(CASE WHEN TrangThai = 'Đang xử lý' THEN 1 ELSE 0 END) AS ProcessingReports,
        SUM(CASE WHEN TrangThai = 'Chờ duyệt' THEN 1 ELSE 0 END) AS PendingReports
    FROM 
        BaiBao
    WHERE 
        NgayNop BETWEEN @startDate AND @endDate;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetReportStatisticByYear]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetReportStatisticByYear] 
    @year INT,
	@GV_ID INT
AS
BEGIN
    SELECT 
        MONTH(NgayNop) AS Month,
        COUNT(*) AS TotalReports
    FROM 
        BaiBao bb
	INNER JOIN 
        GV_BB gvb ON bb.id = gvb.MaBB
    WHERE 
        YEAR(NgayNop) = @year AND gvb.MaGV = @GV_ID 
    GROUP BY 
        MONTH(NgayNop)
    ORDER BY 
        Month;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSubmittedReportDashboard]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetSubmittedReportDashboard]
    @Year INT
AS
BEGIN
    SELECT 
        MONTH(NgayNop) AS Month,
        COUNT(*) AS TotalSubmittedReports
    FROM 
        BaiBao
    WHERE 
        YEAR(NgayNop) = @Year
    GROUP BY 
        MONTH(NgayNop)
    ORDER BY 
        Month;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchGiangVienReports]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SearchGiangVienReports]
    @SearchTerm NVARCHAR(255),
	@GiangVienId INT
AS
BEGIN
    -- Select the Giang Vien reports based on the provided search term
    SELECT 
        bb.id AS ReportID,
            bb.TieuDeTC AS JournalTitle,
            bb.TieuDeBB AS ReportTitle,
            bb.MaKhoa AS DepartmentCode
    FROM 
        BaiBao bb
	INNER JOIN GV_BB gvbb ON gvbb.MaBB = bb.id
	WHERE 
        TieuDeBB LIKE '%' + @SearchTerm + '%' OR
        TieuDeTC LIKE '%' + @SearchTerm + '%'
	ORDER BY id
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SubmitReportByGiangVien]    Script Date: 11/18/2024 1:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SubmitReportByGiangVien]
    @giangVienId INT,
    @TieuDeTC NVARCHAR(100),
    @TieuDeBB NVARCHAR(100),
    @MaKhoa VARCHAR(10),
    @SoPH VARCHAR(20),
    @STBD VARCHAR(20),
    @STKT VARCHAR(20),
    @NamXB DATE,
    @NgayNop DATE,
    @NgayXuLy DATE,
    @LinkBB VARCHAR(255),
    @MaMH VARCHAR(10),
    @DOI VARCHAR(100),
    @TrangThai NVARCHAR(15),
    @GhiChu NVARCHAR(255)
AS
BEGIN
    -- Start a transaction
    BEGIN TRANSACTION;

    -- Insert the new report into the BaiBao table
    INSERT INTO BaiBao (TieuDeTC, TieuDeBB, MaKhoa, SoPH, STBD, STKT, NamXB, NgayNop, NgayXuLy, LinkBB, MaMH, DOI, TrangThai, GhiChu)
    VALUES (@TieuDeTC, @TieuDeBB, @MaKhoa, @SoPH, @STBD, @STKT, @NamXB, @NgayNop, @NgayXuLy, @LinkBB, @MaMH, @DOI, @TrangThai, @GhiChu);

    -- Get the ID of the newly inserted report
    DECLARE @newReportId INT;
    SET @newReportId = SCOPE_IDENTITY();

    -- Insert the link between the GiangVien and the new report into the GV_BB table
    INSERT INTO GV_BB (MaGV, MaBB)
    VALUES (@giangVienId, @newReportId);

    -- Commit the transaction
    COMMIT TRANSACTION;
END
GO
