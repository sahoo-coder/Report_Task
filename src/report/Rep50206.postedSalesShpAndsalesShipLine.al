report 50206 postedSalesShpAndsalesShipLine
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './postedSalesShip&salesShipLine.rdl';
    Caption = 'Posted Sales Shipment & Sales Shipment Line Report_KSS';

    dataset
    {
        dataitem("Sales Shipment Header"; "Sales Shipment Header")
        {
            column(No_PSS; "No.") { }
            column(Sell_to_Customer_Name; "Sell-to Customer Name") { }
            column(Order_No_; "Order No.") { }

            dataitem("Sales Shipment Line"; "Sales Shipment Line")
            {

                DataItemLink = "Document No." = field("No.");
                column(ItemNumber; "No.") { }
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(Quantity_Invoiced; "Quantity Invoiced") { }
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