tableextension 90101 "PurchaseLine" extends "Purchase Line"
{
    fields
    {

        field(90100; "Pages"; Integer)
        {
            Caption = 'Pages', Comment = 'ESP="Nº paginas"';
            Editable = false;
            MinValue = 0;
        }
    }
}