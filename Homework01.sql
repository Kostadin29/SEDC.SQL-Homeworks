USE [master]
GO

DROP DATABASE IF EXISTS [SEDCACADEMYDB]
GO

CREATE DATABASE [SEDCACADEMYDB]
GO

USE [SEDCACADEMYDB]
GO

CREATE TABLE [Students](
		[Id] int IDENTITY(1,1) NOT NULL,
		[FirstName] nvarchar(100) NOT NULL,
		[LastName] nvarchar(100) NOT NULL,
		[DateOfBirth] date NOT NULL,
		[EnrolledDate] date NOT NULL,
		[Gender] nchar(1) NULL, -- 'F' / 'M'
		[NationalIdNumber] nvarchar(20) NULL,
		[StudentCardNumber] nvarchar(20) NULL,
		CONSTRAINT [PK_Students] PRIMARY KEY (Id)
);

CREATE TABLE [Teacher](
		[Id] int IDENTITY(1,1) NOT NULL,
		[FirstName] nvarchar(100) NOT NULL,
		[LastName] nvarchar(100) NOT NULL,
		[DateOfBirth] date NOT NULL,
		[AcademicRank] int NOT NULL,
		[HireDate] date NOT NULL,
		CONSTRAINT [PK_Teacher] PRIMARY KEY (Id)
);

CREATE TABLE [Grade](
		[Id] int IDENTITY(1,1) NOT NULL,
		[StudentID] int NOT NULL,
		[TeacherID] int NOT NULL,
		[Grade] decimal(4,2) NOT NULL,
		[Comment] nvarchar(max) NULL,
		[CreatedDate] [datetime] NOT NULL,
		CONSTRAINT [PK_Grade] PRIMARY KEY (Id)
);

CREATE TABLE [Course](
		[Id] int IDENTITY(1,1) NOT NULL,
		[Name] nvarchar(100) NOT NULL,
		[Credit] int NOT NULL,
		[AcademicYear] date NOT NULL,
		[Semester] nvarchar(50) NOT NULL,
		CONSTRAINT [PK_Course] PRIMARY KEY (Id) 
);

CREATE TABLE [GradeDetails](
		[Id] int IDENTITY(1,1) NOT NULL,
		[GradeID] int NOT NULL,
		[AchievementTypeID] int NOT NULL,
		[AchievementPoints] int NOT NULL,
		[AchievementMaxPoints] int  NULL,
		[AchievementDate] date NOT NULL,
		CONSTRAINT [PK_GradeDetails] PRIMARY KEY (Id)
);

CREATE TABLE [AchievementType](
		[Id] int IDENTITY(1,1) NOT NULL,
		[Name] nvarchar(20) NOT NULL,
		[Description] nvarchar(max) NULL,
		[ParticipationRate] int NULL,
		CONSTRAINT [PK_AchievementType] PRIMARY KEY CLUSTERED([Id] ASC)
);





