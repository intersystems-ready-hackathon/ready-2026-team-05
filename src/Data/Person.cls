Class Data.Person Extends %Persistent
{
    // First Name for the person
    Property FirstName As %String;
    // Last name for the person
    Property LastName As %String;
    // Family name for the person
    Property FamilyName As %String;
    // Date of Brith
    Property DOB As %Date;
    // What is the scheduling role for this person - CanDrive:1 or not CanDrive:0
    Property CanDrive As %Boolean [ InitialExpression = 0];
Storage Default
{
<Data name="PersonDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>FirstName</Value>
</Value>
<Value name="3">
<Value>LastName</Value>
</Value>
<Value name="4">
<Value>FamilyName</Value>
</Value>
<Value name="5">
<Value>DOB</Value>
</Value>
<Value name="6">
<Value>PersonRole</Value>
</Value>
<Value name="7">
<Value>CanDrive</Value>
</Value>
</Data>
<DataLocation>^Data.PersonD</DataLocation>
<DefaultData>PersonDefaultData</DefaultData>
<IdLocation>^Data.PersonD</IdLocation>
<IndexLocation>^Data.PersonI</IndexLocation>
<StreamLocation>^Data.PersonS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}