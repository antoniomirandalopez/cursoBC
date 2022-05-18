report 90100 "MyReport"
{
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './src/myreport.rdl';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(PurchaseHeader; "Purchase Header")
        {
            column(No_; "No.") { IncludeCaption = true; }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name") { IncludeCaption = true; }

            dataitem(PurchaseLine; "Purchase Line")
            {
                DataItemLink = "Document Type" = field("Document Type"),
                                "Document No." = field("No.");

                column(ItemNo_; "No.") { IncludeCaption = true; }
                column(Description; Description) { IncludeCaption = true; }
                column(Quantity; Quantity) { IncludeCaption = true; }
                column(Unit_of_Measure; "Unit of Measure") { IncludeCaption = true; }
                column(Amount; Amount) { IncludeCaption = true; }
                column(ShowAmount; ShowAmount) { }
            }
        }

    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options', Comment = 'ESP="Opciones"';
                    field(ShowAmountRp; ShowAmount)
                    {
                        ApplicationArea = All;
                        Caption = 'Show amount', Comment = 'ESP="Mostrar opciones"';
                        ToolTip = 'Show amount', Comment = 'ESP="Mostrar opciones"';
                    }
                }
            }
        }
    }

    var
        ShowAmount: Boolean;
}