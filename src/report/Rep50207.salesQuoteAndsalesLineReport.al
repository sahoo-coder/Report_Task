report 50207 salesQuoteAndsalesLineReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './salesQuoteAndsalesLineReport.rdl';
    Caption = 'Sales Quote & Sales Line Report_KSS';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            column(Quote_Number; "No.") { }
            column(Customer_Name; "Sell-to Customer Name") { }
            dataitem("Sales Line"; "Sales Line")
            {

                DataItemLink = "Document No." = field("No."), "Document Type" = field("Document Type");
                column(Item_Number; "No.") { }
                column(Description; Description) { }
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