reportextension 90100 "SalespersonCommission" extends "Salesperson - Commission"
{
    dataset
    {
        add("Salesperson/Purchaser")
        {
            column(E_Mail; "E-Mail") { IncludeCaption = true; }
        }
    }
}