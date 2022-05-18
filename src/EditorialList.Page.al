page 90100 "Editorial List"
{
    ApplicationArea = All;
    LinksAllowed = true;
    PageType = List;
    SourceTable = Editoral;
    UsageCategory = Lists;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Indicate No. field value', Comment = 'ESP="Indica el valor del campo no."';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Indicate description field value', Comment = 'ESP="Indica el valor del campo description"';
                }
            }
        }
        area(Factboxes)
        {
            part(adj; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
        }
    }
}