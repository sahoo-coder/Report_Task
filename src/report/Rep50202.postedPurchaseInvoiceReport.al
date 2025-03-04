report 50202 postedPurchaseInvoiceReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './postedPurchaseInvoiceReport.rdl';
    Caption = 'Posted Purchase Invoice Report_KSS';

    dataset
    {
        dataitem("Purch. Inv. Header"; "Purch. Inv. Header")
        {
            column(No_; "No.")
            {
            }
            column(Vendor_Invoice_No_; "Vendor Invoice No.") { }
            column(Buy_from_Vendor_No_; "Buy-from Vendor No.") { }
            column(Amount; Amount) { }
            column(Due_Date; "Due Date") { }
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }
}