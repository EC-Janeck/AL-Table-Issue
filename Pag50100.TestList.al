page 50100 "Test List"
{
    ApplicationArea = All;
    Caption = 'Test List';
    PageType = List;
    SourceTable = "Test Tab";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Primary Key"; Rec."Primary Key")
                {
                    ToolTip = 'Specifies the value of the Primary Key field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
            }
        }
    }
    var
        ForgefulBooleanForPageTableG: Boolean;

    trigger OnAfterGetCurrRecord()
    begin
        Rec.SetForgetfulBoolean(ForgefulBooleanForPageTableG);
    end;

    procedure SetForgetfulBooleanOnPage(NewForgetfulBoolean: Boolean)
    begin
        ForgefulBooleanForPageTableG := NewForgetfulBoolean;
    end;
}
