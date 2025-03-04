report 50205 purchaseHeaderAndpurchaseLine
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './purchaseHeader&purchaseLineReport.rdl';
    Caption = 'Purchase Header & Purchase Line Report_KSS';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            column(Vendor_Invoice_No_Purchase_Header; "Vendor Invoice No.") { }
            column(Buy_from_Vendor_Name_Purchase_Header; "Buy-from Vendor Name") { }
            column(Due_Date_Purchase_Header; "Due Date") { }

            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                column(itemNumber; "No.") { }
                column(Quantity; Quantity) { }
                column(Unit_Cost; "Unit Cost") { }
            }
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