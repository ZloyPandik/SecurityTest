USE [master]
GO
/****** Object:  Database [SecurityTestV2]    Script Date: 22.12.2022 1:57:31 ******/
CREATE DATABASE [SecurityTestV2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SecurityTestV2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SecurityTestV2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SecurityTestV2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SecurityTestV2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SecurityTestV2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SecurityTestV2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SecurityTestV2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SecurityTestV2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SecurityTestV2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SecurityTestV2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SecurityTestV2] SET ARITHABORT OFF 
GO
ALTER DATABASE [SecurityTestV2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SecurityTestV2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SecurityTestV2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SecurityTestV2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SecurityTestV2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SecurityTestV2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SecurityTestV2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SecurityTestV2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SecurityTestV2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SecurityTestV2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SecurityTestV2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SecurityTestV2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SecurityTestV2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SecurityTestV2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SecurityTestV2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SecurityTestV2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SecurityTestV2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SecurityTestV2] SET RECOVERY FULL 
GO
ALTER DATABASE [SecurityTestV2] SET  MULTI_USER 
GO
ALTER DATABASE [SecurityTestV2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SecurityTestV2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SecurityTestV2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SecurityTestV2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SecurityTestV2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SecurityTestV2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SecurityTestV2', N'ON'
GO
ALTER DATABASE [SecurityTestV2] SET QUERY_STORE = OFF
GO
USE [SecurityTestV2]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[idAnswer(pk)] [int] IDENTITY(1,1) NOT NULL,
	[contentOfresponses] [nchar](1000) NULL,
	[truAnswer] [bit] NOT NULL,
	[сontentInTheAnswerOfAdditionalContent] [bit] NOT NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[idAnswer(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriesOfQuestionsForTests]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriesOfQuestionsForTests](
	[CategoriesOfQuestionsForTests] [int] IDENTITY(1,1) NOT NULL,
	[idQuestionCategory(fk)] [int] NOT NULL,
	[idNameTest(fk)] [int] NOT NULL,
 CONSTRAINT [PK_CategoriesOfQuestionsForTests] PRIMARY KEY CLUSTERED 
(
	[CategoriesOfQuestionsForTests] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesSpecialty]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesSpecialty](
	[idEmployeesSpecialty(pk)] [int] IDENTITY(1,1) NOT NULL,
	[nameEmployeesSpecialty] [nchar](200) NOT NULL,
	[SpecialtyCodeAccordingToTheRegisterOfTheMinistryOfLaborOfTheRussianFederation] [nchar](10) NULL,
 CONSTRAINT [PK_EmployeesSpecialty] PRIMARY KEY CLUSTERED 
(
	[idEmployeesSpecialty(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilesForAnswer]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilesForAnswer](
	[idFilesForAnswer(pk)] [int] IDENTITY(1,1) NOT NULL,
	[pathFilleAnswer] [nchar](1000) NOT NULL,
 CONSTRAINT [PK_FilesForAnswer] PRIMARY KEY CLUSTERED 
(
	[idFilesForAnswer(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilesForQuestions]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilesForQuestions](
	[idFilesForQuestions(pk)] [int] IDENTITY(1,1) NOT NULL,
	[pathFilleQuestions] [nchar](100) NOT NULL,
 CONSTRAINT [PK_FilesForQuestions] PRIMARY KEY CLUSTERED 
(
	[idFilesForQuestions(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginAndPasswordUsers]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginAndPasswordUsers](
	[idLoginAndPasswordUsers(pk)] [int] IDENTITY(1,1) NOT NULL,
	[loginUsers] [nchar](20) NOT NULL,
	[passwordUsers] [varbinary](66) NOT NULL,
 CONSTRAINT [PK_LoginAndPasswordUsers] PRIMARY KEY CLUSTERED 
(
	[idLoginAndPasswordUsers(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameTest]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameTest](
	[idNameTest(pk)] [int] IDENTITY(1,1) NOT NULL,
	[nameTest] [nchar](200) NOT NULL,
 CONSTRAINT [PK_NameTest] PRIMARY KEY CLUSTERED 
(
	[idNameTest(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[idQuestion(pk)] [int] IDENTITY(1,1) NOT NULL,
	[theContentOfTheQuestion] [nchar](1000) NOT NULL,
	[questionWeight] [int] NOT NULL,
	[сontentInTheQuesionOfAdditionalContent] [bit] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[idQuestion(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionAndQuestionCategory]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionAndQuestionCategory](
	[idQuestionAndQuestionCategory(pk)] [int] IDENTITY(1,1) NOT NULL,
	[idQuestionCategory(fk)] [int] NOT NULL,
	[idQuestion(fk)] [int] NOT NULL,
 CONSTRAINT [PK_QuestionAndQuestionCategory] PRIMARY KEY CLUSTERED 
(
	[idQuestionAndQuestionCategory(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionCategory]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionCategory](
	[idQuestionCategory(pk)] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nchar](200) NOT NULL,
 CONSTRAINT [PK_QuestionCategory] PRIMARY KEY CLUSTERED 
(
	[idQuestionCategory(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionsInTheTestsOnAndTheirEvaluation]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionsInTheTestsOnAndTheirEvaluation](
	[idQuestionsInTheTestsOnAndTheirEvaluation(pk)] [int] IDENTITY(1,1) NOT NULL,
	[idQuestion(fk)] [int] NOT NULL,
	[idUser(fk)] [int] NOT NULL,
	[theResultOfTheQuestionThatTheUserAnswered] [int] NOT NULL,
	[idNameTest(fk)] [int] NULL,
 CONSTRAINT [PK_QuestionsInTheTestsOnAndTheirEvaluation] PRIMARY KEY CLUSTERED 
(
	[idQuestionsInTheTestsOnAndTheirEvaluation(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecialtieEmployeesUser]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialtieEmployeesUser](
	[idSpecialtieEmployeesUser] [int] IDENTITY(1,1) NOT NULL,
	[idEmployeesSpecialty(fk)] [int] NOT NULL,
	[idUser(fk)] [int] NOT NULL,
 CONSTRAINT [PK_SpecialtieEmployeesUser] PRIMARY KEY CLUSTERED 
(
	[idSpecialtieEmployeesUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[idTest(pk)] [int] IDENTITY(1,1) NOT NULL,
	[idQuestion(fk)] [int] NOT NULL,
	[idAnswers(fk)] [int] NOT NULL,
	[numberQuestionsForTest] [int] NOT NULL,
	[idNameTest(fk)] [int] NOT NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[idTest(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheAnswerAndTheFilesInIt]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheAnswerAndTheFilesInIt](
	[idTheAnswerAndTheFilesInIt(pk)] [int] IDENTITY(1,1) NOT NULL,
	[idAnswer(fk)] [int] NOT NULL,
	[idFilesForAnswer(fk)] [int] NOT NULL,
 CONSTRAINT [PK_TheAnswerAndTheFilesInIt] PRIMARY KEY CLUSTERED 
(
	[idTheAnswerAndTheFilesInIt(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheConditionOfTheUser]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheConditionOfTheUser](
	[idtheConditionOfTheUser(pk)] [int] IDENTITY(1,1) NOT NULL,
	[nameOfTheStatus] [nchar](200) NOT NULL,
 CONSTRAINT [PK_TheConditionOfTheUser] PRIMARY KEY CLUSTERED 
(
	[idtheConditionOfTheUser(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheQuestionAndTheFilesInIt]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheQuestionAndTheFilesInIt](
	[idTheQuestionAndTheFilesInIt(pk)] [int] IDENTITY(1,1) NOT NULL,
	[idQuestion(fk)] [int] NOT NULL,
	[idFilesForQuestions(fk)] [int] NOT NULL,
 CONSTRAINT [PK_TheQuestionAndTheFilesInIt] PRIMARY KEY CLUSTERED 
(
	[idTheQuestionAndTheFilesInIt(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesOfEmployeeSpecialtiesForTests]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesOfEmployeeSpecialtiesForTests](
	[idTypesOfEmployeeSpecialtiesForTests(pk)] [int] IDENTITY(1,1) NOT NULL,
	[idEmployeesSpecialty(fk)] [int] NOT NULL,
	[idNameTest(fk)] [int] NOT NULL,
 CONSTRAINT [PK_TypesOfEmployeeSpecialtiesForTests] PRIMARY KEY CLUSTERED 
(
	[idTypesOfEmployeeSpecialtiesForTests(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[idUser(pk)] [int] IDENTITY(1,1) NOT NULL,
	[idLoginAndPassword(fk)] [int] NOT NULL,
	[idUserСategory(fk)] [int] NOT NULL,
	[idtheConditionOfThe(fk)] [int] NOT NULL,
	[nameUser] [nchar](100) NOT NULL,
	[patronymicUser] [nchar](100) NOT NULL,
	[surnameUser] [nchar](100) NOT NULL,
	[dateOfCreationOfTheUser] [datetime] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[idUser(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTests]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTests](
	[idUserTests(pk)] [int] IDENTITY(1,1) NOT NULL,
	[idUser(fk)] [int] NOT NULL,
	[idNameTest(fk)] [int] NOT NULL,
	[dateOfTestAppointment] [datetime] NOT NULL,
	[dateOfPassingTheTest] [datetime] NULL,
	[endDate] [datetime] NOT NULL,
	[generalAssessment] [int] NULL,
 CONSTRAINT [PK_UserTests] PRIMARY KEY CLUSTERED 
(
	[idUserTests(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserСategory]    Script Date: 22.12.2022 1:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserСategory](
	[idUserСategory(pk)] [int] IDENTITY(1,1) NOT NULL,
	[nameUserСategory(pk)] [nchar](100) NOT NULL,
 CONSTRAINT [PK_UserСategory] PRIMARY KEY CLUSTERED 
(
	[idUserСategory(pk)] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CategoriesOfQuestionsForTests]  WITH CHECK ADD  CONSTRAINT [FK_CategoriesOfQuestionsForTests_NameTest] FOREIGN KEY([idNameTest(fk)])
REFERENCES [dbo].[NameTest] ([idNameTest(pk)])
GO
ALTER TABLE [dbo].[CategoriesOfQuestionsForTests] CHECK CONSTRAINT [FK_CategoriesOfQuestionsForTests_NameTest]
GO
ALTER TABLE [dbo].[CategoriesOfQuestionsForTests]  WITH CHECK ADD  CONSTRAINT [FK_CategoriesOfQuestionsForTests_QuestionCategory] FOREIGN KEY([idQuestionCategory(fk)])
REFERENCES [dbo].[QuestionCategory] ([idQuestionCategory(pk)])
GO
ALTER TABLE [dbo].[CategoriesOfQuestionsForTests] CHECK CONSTRAINT [FK_CategoriesOfQuestionsForTests_QuestionCategory]
GO
ALTER TABLE [dbo].[QuestionAndQuestionCategory]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAndQuestionCategory_Question] FOREIGN KEY([idQuestion(fk)])
REFERENCES [dbo].[Question] ([idQuestion(pk)])
GO
ALTER TABLE [dbo].[QuestionAndQuestionCategory] CHECK CONSTRAINT [FK_QuestionAndQuestionCategory_Question]
GO
ALTER TABLE [dbo].[QuestionAndQuestionCategory]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAndQuestionCategory_QuestionCategory] FOREIGN KEY([idQuestionCategory(fk)])
REFERENCES [dbo].[QuestionCategory] ([idQuestionCategory(pk)])
GO
ALTER TABLE [dbo].[QuestionAndQuestionCategory] CHECK CONSTRAINT [FK_QuestionAndQuestionCategory_QuestionCategory]
GO
ALTER TABLE [dbo].[QuestionsInTheTestsOnAndTheirEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_QuestionsInTheTestsOnAndTheirEvaluation_NameTest] FOREIGN KEY([idNameTest(fk)])
REFERENCES [dbo].[NameTest] ([idNameTest(pk)])
GO
ALTER TABLE [dbo].[QuestionsInTheTestsOnAndTheirEvaluation] CHECK CONSTRAINT [FK_QuestionsInTheTestsOnAndTheirEvaluation_NameTest]
GO
ALTER TABLE [dbo].[QuestionsInTheTestsOnAndTheirEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_QuestionsInTheTestsOnAndTheirEvaluation_Question] FOREIGN KEY([idQuestion(fk)])
REFERENCES [dbo].[Question] ([idQuestion(pk)])
GO
ALTER TABLE [dbo].[QuestionsInTheTestsOnAndTheirEvaluation] CHECK CONSTRAINT [FK_QuestionsInTheTestsOnAndTheirEvaluation_Question]
GO
ALTER TABLE [dbo].[QuestionsInTheTestsOnAndTheirEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_QuestionsInTheTestsOnAndTheirEvaluation_User] FOREIGN KEY([idUser(fk)])
REFERENCES [dbo].[User] ([idUser(pk)])
GO
ALTER TABLE [dbo].[QuestionsInTheTestsOnAndTheirEvaluation] CHECK CONSTRAINT [FK_QuestionsInTheTestsOnAndTheirEvaluation_User]
GO
ALTER TABLE [dbo].[SpecialtieEmployeesUser]  WITH CHECK ADD  CONSTRAINT [FK_SpecialtieEmployeesUser_EmployeesSpecialty] FOREIGN KEY([idEmployeesSpecialty(fk)])
REFERENCES [dbo].[EmployeesSpecialty] ([idEmployeesSpecialty(pk)])
GO
ALTER TABLE [dbo].[SpecialtieEmployeesUser] CHECK CONSTRAINT [FK_SpecialtieEmployeesUser_EmployeesSpecialty]
GO
ALTER TABLE [dbo].[SpecialtieEmployeesUser]  WITH CHECK ADD  CONSTRAINT [FK_SpecialtieEmployeesUser_User] FOREIGN KEY([idUser(fk)])
REFERENCES [dbo].[User] ([idUser(pk)])
GO
ALTER TABLE [dbo].[SpecialtieEmployeesUser] CHECK CONSTRAINT [FK_SpecialtieEmployeesUser_User]
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD  CONSTRAINT [FK_Test_Answer] FOREIGN KEY([idAnswers(fk)])
REFERENCES [dbo].[Answer] ([idAnswer(pk)])
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_Answer]
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD  CONSTRAINT [FK_Test_NameTest] FOREIGN KEY([idNameTest(fk)])
REFERENCES [dbo].[NameTest] ([idNameTest(pk)])
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_NameTest]
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD  CONSTRAINT [FK_Test_Question] FOREIGN KEY([idQuestion(fk)])
REFERENCES [dbo].[Question] ([idQuestion(pk)])
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_Question]
GO
ALTER TABLE [dbo].[TheAnswerAndTheFilesInIt]  WITH CHECK ADD  CONSTRAINT [FK_TheAnswerAndTheFilesInIt_Answer] FOREIGN KEY([idAnswer(fk)])
REFERENCES [dbo].[Answer] ([idAnswer(pk)])
GO
ALTER TABLE [dbo].[TheAnswerAndTheFilesInIt] CHECK CONSTRAINT [FK_TheAnswerAndTheFilesInIt_Answer]
GO
ALTER TABLE [dbo].[TheAnswerAndTheFilesInIt]  WITH CHECK ADD  CONSTRAINT [FK_TheAnswerAndTheFilesInIt_FilesForAnswer] FOREIGN KEY([idFilesForAnswer(fk)])
REFERENCES [dbo].[FilesForAnswer] ([idFilesForAnswer(pk)])
GO
ALTER TABLE [dbo].[TheAnswerAndTheFilesInIt] CHECK CONSTRAINT [FK_TheAnswerAndTheFilesInIt_FilesForAnswer]
GO
ALTER TABLE [dbo].[TheQuestionAndTheFilesInIt]  WITH CHECK ADD  CONSTRAINT [FK_TheQuestionAndTheFilesInIt_FilesForQuestions] FOREIGN KEY([idFilesForQuestions(fk)])
REFERENCES [dbo].[FilesForQuestions] ([idFilesForQuestions(pk)])
GO
ALTER TABLE [dbo].[TheQuestionAndTheFilesInIt] CHECK CONSTRAINT [FK_TheQuestionAndTheFilesInIt_FilesForQuestions]
GO
ALTER TABLE [dbo].[TheQuestionAndTheFilesInIt]  WITH CHECK ADD  CONSTRAINT [FK_TheQuestionAndTheFilesInIt_Question] FOREIGN KEY([idQuestion(fk)])
REFERENCES [dbo].[Question] ([idQuestion(pk)])
GO
ALTER TABLE [dbo].[TheQuestionAndTheFilesInIt] CHECK CONSTRAINT [FK_TheQuestionAndTheFilesInIt_Question]
GO
ALTER TABLE [dbo].[TypesOfEmployeeSpecialtiesForTests]  WITH CHECK ADD  CONSTRAINT [FK_TypesOfEmployeeSpecialtiesForTests_EmployeesSpecialty] FOREIGN KEY([idEmployeesSpecialty(fk)])
REFERENCES [dbo].[EmployeesSpecialty] ([idEmployeesSpecialty(pk)])
GO
ALTER TABLE [dbo].[TypesOfEmployeeSpecialtiesForTests] CHECK CONSTRAINT [FK_TypesOfEmployeeSpecialtiesForTests_EmployeesSpecialty]
GO
ALTER TABLE [dbo].[TypesOfEmployeeSpecialtiesForTests]  WITH CHECK ADD  CONSTRAINT [FK_TypesOfEmployeeSpecialtiesForTests_NameTest] FOREIGN KEY([idNameTest(fk)])
REFERENCES [dbo].[NameTest] ([idNameTest(pk)])
GO
ALTER TABLE [dbo].[TypesOfEmployeeSpecialtiesForTests] CHECK CONSTRAINT [FK_TypesOfEmployeeSpecialtiesForTests_NameTest]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_LoginAndPasswordUsers] FOREIGN KEY([idLoginAndPassword(fk)])
REFERENCES [dbo].[LoginAndPasswordUsers] ([idLoginAndPasswordUsers(pk)])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_LoginAndPasswordUsers]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_TheConditionOfTheUser] FOREIGN KEY([idtheConditionOfThe(fk)])
REFERENCES [dbo].[TheConditionOfTheUser] ([idtheConditionOfTheUser(pk)])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_TheConditionOfTheUser]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserСategory] FOREIGN KEY([idUserСategory(fk)])
REFERENCES [dbo].[UserСategory] ([idUserСategory(pk)])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserСategory]
GO
ALTER TABLE [dbo].[UserTests]  WITH CHECK ADD  CONSTRAINT [FK_UserTests_NameTest] FOREIGN KEY([idNameTest(fk)])
REFERENCES [dbo].[NameTest] ([idNameTest(pk)])
GO
ALTER TABLE [dbo].[UserTests] CHECK CONSTRAINT [FK_UserTests_NameTest]
GO
ALTER TABLE [dbo].[UserTests]  WITH CHECK ADD  CONSTRAINT [FK_UserTests_User] FOREIGN KEY([idUser(fk)])
REFERENCES [dbo].[User] ([idUser(pk)])
GO
ALTER TABLE [dbo].[UserTests] CHECK CONSTRAINT [FK_UserTests_User]
GO
USE [master]
GO
ALTER DATABASE [SecurityTestV2] SET  READ_WRITE 
GO
