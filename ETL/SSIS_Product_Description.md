## DimProduct – ETL proces

This SSIS package 
Ovaj SSIS paket puni dimenziju DimArtikal iz transakcionih tabela.

### Izvori podataka
- Artikli
- Cenovnik
- Klasifikacije
- Kategorije cene i težine

### Transformacije
- Lookup za klasifikaciju artikala
- Lookup za kategorije težine
- Lookup cenovnika (match / no match)
- Union All za objedinjavanje podataka
- Replace NULL vrednosti
- Data type konverzije

### Cilj
- Popunjavanje dimenzije DimArtikal za potrebe DW analitike
