--Separation of finished products and semi-finished products from the article code list, because only within these two product classifications does waste occur

--INSERT INTO [KG].[dbo].[Artikli]
SELECT 
	MpSifra AS SifraA,
	MpNaziv AS NazivA,
	MpOsnSklad AS SkladisteA,
	MpSifKarKlj AS KKljucA,
	MpSifPlaKlj AS PKljucA,
	MpSifEnoteMere1 AS JedinicaMereA,
	MpTeza AS TezinaA,
	MpOznKlas AS KlasifikacijaA,
	MpOznTez AS KategorijaTezinaA,
	MpCena AS KategorijaCenaA
FROM MaticniPodatki
WHERE MpSifKarKlj IN ('I', 'P') 
	

--Gathering additional information from the item classification table
	
--INSERT INTO [KG].[dbo].[Klasifikacija]
SELECT 
	KLoStZapisa AS SifraKlasif,
	KLoOpis AS OpisKlasif
FROM KlasOzn

	
--Collecting data from the price list of items, in order to obtain the cost prices of items that were valid in the observed period
	
--INSERT INTO [Cenovnik]
SELECT 
	CnStZapisa AS SifraC,
	CnSifMp AS ArtiklC,
	CAST(CnDatSpremembe AS date) AS DatumC,
	CnRazTipCn AS TipCenovnika,
	CnSklad AS SkladisteC,
	CnCena AS CenaC
FROM Cenik c
WHERE c.CnRazTipCn ='4' AND c.CnDatSpremembe BETWEEN '2021-10-01' AND '2021-12-31' 
ORDER BY DatumC DESC, ArtiklC
