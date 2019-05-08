CREATE TABLE [dbo].[test]
(
[id] [int] NULL,
[a] [int] NULL,
[b] [int] NULL,
[c] [int] NULL,
[d] [int] NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED COLUMNSTORE INDEX [ncidx_dbo_test_cols] ON [dbo].[test] ([a], [b], [c], [id] DESC) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [cidx_dbo_test_id] ON [dbo].[test] ([id] DESC) ON [PRIMARY]
GO
