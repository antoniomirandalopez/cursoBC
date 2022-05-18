table 90100 "Editoral"
{
    Caption = 'Editorial', Comment = 'ESP="Editoria"';
    DataClassification = CustomerContent;
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Code', Comment = 'ESP="Código"';
            DataClassification = CustomerContent;
            NotBlank = true;
        }
        field(2; Description; text[100])
        {
            Caption = 'Description', Comment = 'EPS="Descripción"';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }
}