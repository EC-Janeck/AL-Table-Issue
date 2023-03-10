codeunit 50100 "Open Page Cod"
{
    procedure OpenTestList()
    var
        TestListP: Page "Test List";
    begin
        TestListP.SetForgetfulBooleanOnPage(true);
        TestListP.Run();
    end;
}