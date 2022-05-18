tableextension 90100 "Item" extends Item
{
    fields
    {
        field(90100; "No. Editorial"; Code[20])
        {
            Caption = 'No. Editorial', Comment = 'ESP="Nº editorial"';
            TableRelation = Editoral."No.";
        }

        field(90101; "Pages"; Integer)
        {
            Caption = 'Pages', Comment = 'ESP="Nº paginas"';
            MinValue = 0;
        }
    }
}