query 90102 "Suma movimento producto"
{
    APIGroup = 'bitec';
    APIPublisher = 'bitec';
    APIVersion = 'v2.0';
    EntityName = 'itemLedger';
    EntitySetName = 'itemLedgers';
    QueryType = API;

    elements
    {
        dataitem(DataItemName; "Item Ledger Entry")
        {
            column(itemNo; "Item No.")
            {

            }
            column(totalMov; Quantity)
            {
                Method = Sum;
            }
        }
    }
}