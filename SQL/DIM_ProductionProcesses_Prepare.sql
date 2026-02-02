--Select for dwarehouse

--INSERT INTO [KG].[dbo].[Skladiste]
SELECT 
	SkSifra AS SifraSK,
	SkNaziv AS NazivSK 
FROM Sklad	
