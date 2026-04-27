Class Data.Person Extends %Persistent
{
    Property FirstName As %String;
    Property LastName As %String;
    Property FamilyName As %String;
    Property DOB As %Date;
    Property PersonRole As Data.SchedulerRole;
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
</Data>
<DataLocation>^Data.PersonD</DataLocation>
<DefaultData>PersonDefaultData</DefaultData>
<IdLocation>^Data.PersonD</IdLocation>
<IndexLocation>^Data.PersonI</IndexLocation>
<StreamLocation>^Data.PersonS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}