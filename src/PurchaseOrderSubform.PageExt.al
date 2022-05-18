pageextension 90101 "PurchaseOrderSubform" extends "Purchase Order Subform"
{
    layout
    {
        addafter(Description)
        {
            field(Pages; Rec.Pages)
            {
                ApplicationArea = All;
                ToolTip = 'Indicate pages value';
            }
        }
    }
}