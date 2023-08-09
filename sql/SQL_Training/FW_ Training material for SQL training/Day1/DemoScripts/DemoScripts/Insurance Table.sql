USE [SQLTrainingDB]

GO



CREATE TABLE [Insurance](

[Empid] [int] NULL,

[PlanName] [varchar](50) NULL,

[Amount] [int] NULL

)

GO

INSERT [Sales].[Insurance] ([Empid], [PlanName], [Amount]) VALUES (1, 'CP', 3000)

INSERT [Sales].[Insurance] ([Empid], [PlanName], [Amount]) VALUES (1, 'PP', 4000)

INSERT [Sales].[Insurance] ([Empid], [PlanName], [Amount]) VALUES (2, 'CP', 2000)

INSERT [Sales].[Insurance] ([Empid], [PlanName], [Amount]) VALUES (2, 'CP', 3000)

INSERT [Sales].[Insurance] ([Empid], [PlanName], [Amount]) VALUES (1, 'PP', 3000)

INSERT [Sales].[Insurance] ([Empid], [PlanName], [Amount]) VALUES (2, 'PP', 5000)

INSERT [Sales].[Insurance] ([Empid], [PlanName], [Amount]) VALUES (2, 'CP', 3000)