
page 50121 CustomSalesOrderApi
{
    PageType = API;
    Caption = 'Custom Sales Order API';
    APIPublisher = 'unicod3';
    APIGroup = 'app1';
    APIVersion = 'v2.0';
    EntityName = 'customSalesOrders';
    EntitySetName = 'customSalesOrders';
    ODataKeyFields = "SystemId";
    SourceTable = "Sales Header";
    InsertAllowed = false;
    DeleteAllowed = false;
    ModifyAllowed = false;

    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

                field(Id; SystemId)
                {
                    ApplicationArea = All;
                }

                field(bcId; "No.")
                {
                    ApplicationArea = All;
                }
                field(poNumber; "External Document No.")
                {

                }
                field(orderDate; "Document Date")
                {

                }
                field(carrier; "Shipping Agent Code")
                {

                }
                field(shipMethod; "Shipping Agent Service Code")
                {

                }
                field(shipToName; "Ship-to Name")
                {

                }

                field(shiptoAddress1; "Ship-to Address")
                {

                }
                field(shiptoAddress2; "Ship-to Address 2")
                {

                }

                field(shiptoCity; "Ship-to City")
                {

                }
                field(shiptoState; "Ship-to County")
                {

                }

                field(shiptoZipCode; "Ship-to Post Code")
                {

                }
                field(shiptoCountry; "Ship-to Country/Region Code")
                {

                }

                field(phoneNumber; "Sell-to Phone No.")
                {
                }

                field(customerNumber; "Bill-to Customer No.")
                {

                }

                field(status; Status)
                {

                }

                part(salesOrderLines; "Sales Order Line Entity")
                {
                    SubPageLink = "Document Id" = FIELD(SystemId);


                    EntityName = 'salesOrderLine';
                    EntitySetName = 'salesOrderLines';

                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        SetRange("Document Type", "Document Type"::Order);
    end;


}
