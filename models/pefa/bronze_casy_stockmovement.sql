select  
    BewegungsNr AS StockmovementNo, 
    ArtCNr AS BatchNo, 
    ArtNr AS ArticleNo, 
    AuftNr AS OrderNo, 
    BestNr AS PONo, 
    BestPosNr AS POPosNo, 
    BestellMenge AS Quantity, 
    BestellPreis AS Price, 
    BewArtCd AS MovementCode, 
    BewegungsCd AS MovementType, 
    BuchDatum AS Date, 
    KPNr AS CostplaceNo, 
    KSTNr AS CostcenterNo, 
    KredNr AS SupplierNo, 
    LagerOrt AS StorageNo, 
    PosNr AS OrderPosNo, 
    RechNr AS InvoiceNo, 
    Stamp, 
    StampPreis AS StampPrice, 
    StaoNr AS LocationNo, 
    TeilLfdNr AS SequenceNo, 
    UserName, 
    UserNamePreis AS UserNamePrice, 
    VPEMenge AS QuantityPackingUnit, 
    VPEPreis AS PricePackingUnit, 
    VPEinheit AS PackingUnit

from {{ source('Pefa_hbue', 'casy_lagerbewegung') }}