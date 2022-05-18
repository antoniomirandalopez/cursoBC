query 90101 "Purchases"
{
    APIGroup = 'bitec';
    APIPublisher = 'bitec';
    APIVersion = 'v2.0';
    EntityName = 'purchase';
    EntitySetName = 'purchases';
    QueryType = API;
    elements
    {
        dataitem(purchase_Header; "Purchase Header")
        {
            column(orderNo; "No.")
            {

            }

            column(vendorNo; "Buy-from Vendor No.")
            {

            }
            filter(Posting_Date; "Posting Date")
            {

            }
            dataitem(Purchase_Line; "Purchase Line")
            {
                DataItemLink = "Document Type" = purchase_header."Document Type", "Document No." = purchase_header."No.";

                column(itemNo; "No.")
                {

                }
                column(description; Description)
                {

                }
                column(quantity; Quantity)
                {

                }

                dataitem(Vendor; Vendor)
                {
                    DataItemLink = "No." = purchase_line."Buy-from Vendor No.";

                    column(name; Name)
                    {

                    }
                }

            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}