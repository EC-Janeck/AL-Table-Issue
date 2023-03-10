table 50100 "Test Tab"
{
    fields
    {
        field(1; "Primary Key"; Code[20])
        {

        }
        field(20; "Description"; Text[250])
        {
            Caption = 'Description';
            trigger OnValidate()
            begin
                if not ForgetfulBooleanG then
                    Message('I forgot')
                else
                    Message('A true miracle has happend!');
            end;
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        ForgetfulBooleanG: Boolean;

    procedure SetForgetfulBoolean(NewForgetfulBooleanP: Boolean)
    begin
        ForgetfulBooleanG := NewForgetfulBooleanP;
    end;
}