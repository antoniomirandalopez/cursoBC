report 90101 "ImportFile"
{
    ApplicationArea = All;
    ProcessingOnly = true;
    UsageCategory = Administration;

    trigger OnPreReport()
    var
        TempCSVBuffer: Record "CSV Buffer" temporary;
        FileInstream: InStream;
        FileName: Text;
    begin

        UploadIntoStream('Seleccionar fichero...', '', '*.*|*.txt', FileName, FileInstream);
        TempCSVBuffer.LoadDataFromStream(FileInstream, ';');

        DownloadFromStream(FileInstream, '', '', '', FileName);
    end;
}