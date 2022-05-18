page 90101 "ApiPageName"
{
    APIGroup = 'bitec';
    APIPublisher = 'bitec';
    APIVersion = 'v2.0';
    Caption = 'apiPageName';
    DelayedInsert = true;
    EntityName = 'carteraDoc';
    EntitySetName = 'carteraDocs';
    ODataKeyFields = SystemId;
    PageType = API;
    SourceTable = "Cartera Doc.";
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(systemId; SystemId)
                {
                    Caption = 'hola';
                }
                field(documentType; "Document Type")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the type of document in question.';
                }
                field(collectionAgent; "Collection Agent")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the agent in which this document is settled.';
                }
            }
        }
    }
}