codeunit 50100 "Open Page Cod"
{
    procedure OpenTestList()
    var
        TestListP: Page "Test List";
    begin
        TestListP.SetForgetfulBooleanForTestTable(true);
        TestListP.Run();
    end;
}