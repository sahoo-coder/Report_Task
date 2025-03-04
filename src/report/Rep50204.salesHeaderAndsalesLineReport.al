report 50204 salesHeaderAndsalesLineReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './salesHeader&salesLineReport.rdl';
    Caption = 'Sales Header & Sales Line Report_KSS';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            column(No_; "No.") { }
            column(Sell_to_Customer_No_sales_Header; "Sell-to Customer No.") { }
            column(Sell_to_Customer_Name_Sales_header; "Sell-to Customer Name") { }

            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                column(ItemNumber; "No.") { }
                column(Location_Code; "Location Code") { }
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