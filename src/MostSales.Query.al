query 90100 "MostSales"
{
    APIGroup = 'bitecCurso';
    APIPublisher = 'bitec';
    APIVersion = 'v2.0';
    Caption = 'Most Sales', comment = 'ESP="Ventas principales"';
    EntityCaption = 'itemLedgerEntry';
    EntityName = 'itemLedgerEntry';
    EntitySetCaption = 'itemLedgerEntries';
    EntitySetName = 'itemLedgerEntries';
    OrderBy = ascending(ItemNo), descending(Quantity);
    QueryType = API;
    elements
    {
        dataitem(ItemLedgerEntry; "Item Ledger Entry")
        {
            DataItemTableFilter = "Entry Type" = const(Sale);

            column(itemNo; "Item No.") { }
            column(quantity; Quantity)
            {
                Method = Sum;
            }
            filter(PostingDate; "Posting Date") { }
            dataitem(Item; Item)
            {
                DataItemLink = "No." = ItemLedgerEntry."Item No.";
                column(no; "No.") { }
                column(description; Description) { }
                column(sales_Unit_of_Measure; "Sales Unit of Measure") { }
            }
        }
    }
}
