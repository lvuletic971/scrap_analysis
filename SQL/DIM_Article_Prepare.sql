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
