pageextension 50100 "TestListPagActToSOList" extends "Sales Order List"
{
    actions
    {
        addlast("O&rder")
        {
            action("Open Test List")
            {
                ApplicationArea = All;
                trigger OnAction()
                var
                    OpenPageCodL: Codeunit "Open Page Cod";
                begin
                    OpenPageCodL.OpenTestList();
                end;
            }
        }
    }
}