SELECT 
    ArtNr AS ArticleNo, 
    AnLager AS OnStock, 
    ArtBeschZeit AS ProcurementTime, 
    ArtBestellNr AS OrderNumber, 
    ArtBez AS ArticleName, 
    ArtEPreis AS Price, 
    ArtEPreisMax AS PriceMax, 
    ArtEPreisMin AS PriceMin, 
    ArtEPreisSchnitt AS PriceAvg, 
    ArtFIBUWert AS FinanceValue, 
    ArtGewicht AS Weight, 
    ArtGruppe AS ArticleGroup, 
    ArtHPreis AS ProductionPrice, 
    ArtKlasse AS ArticleClass, 
    ArtLief1 AS Supplier1, 
    
    ArtRabatt AS rebate, 
     ArtikelStatus AS ArticleStatus, 
     BeschaffungsArt AS ProcurementMethod, 
    Einheit AS Unit, 
    GeaendertAm AS ChangedDate, 
    GeaendertWer AS ChangedUser, 
    HatVPE AS HasPackingUnit, 
   InBV AS CalcInOrderProposal, 
             KTNr AS CostObjectNo, OwnerID,  SLTiefe AS BOMDepth, Sachmerkmale AS Features, 
             VerarbeitungsArt AS ProductionType, 
              ArtSkonto AS Sconto
FROM  {{ source('Pefa_hbue', 'casy_artikel') }}