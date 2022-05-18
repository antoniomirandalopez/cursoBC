pageextension 90100 "ItemCard" extends "Item Card"
{
    layout
    {
        addlast(content)
        {
            group(Book)
            {
                Caption = 'book', Comment = 'ESP="Libro"';
                field("No. Editorial"; Rec."No. Editorial")
                {
                    ApplicationArea = All;
                    ToolTip = 'Indicate no editorial field value';
                }
                field("Page"; Rec.Pages)
                {
                    ApplicationArea = All;
                    ToolTip = 'Indicate no editorial field value';
                }
            }
        }
    }
}