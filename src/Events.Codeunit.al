codeunit 90100 "Events"
{

    #region Tabla

    #region PurchaseLine

    [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterValidateEvent', 'No.', false, false)]
    local procedure GetItemValue_OnAfterValidateEvent_PurchaseLine_No(var Rec: Record "Purchase Line"; var xRec: Record "Purchase Line")
    begin
        if Rec."No." = xRec."No." then
            exit;

        if Item.Get(Rec."No.") then
            Rec.Validate(Pages, Item.Pages);

    end;

    #endregion PurchaseLine

    #endregion Tabla


    #region Codeunit

    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', false, false)]
    local procedure sustituteReport_OnAfterSubstituteReport(ReportId: Integer; var NewReportId: Integer)
    begin
        // case ReportId of
        //     Report::"Salesperson - Commission":
        //         NewReportId := Report::MyReport;
        //  end
    end;

    #endregion Codeunit



    var
        Item: Record Item;
}