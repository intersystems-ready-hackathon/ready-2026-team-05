Class Data.SchedulerRole Extends %Persistent
{
Property RoleName As %String;
Property CanDrive As %Boolean [ InitialExpression = 0];
Storage Default
{
<Data name="SchedulerRoleDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>RoleName</Value>
</Value>
<Value name="3">
<Value>CanDrive</Value>
</Value>
</Data>
<DataLocation>^Data.SchedulerRoleD</DataLocation>
<DefaultData>SchedulerRoleDefaultData</DefaultData>
<IdLocation>^Data.SchedulerRoleD</IdLocation>
<IndexLocation>^Data.SchedulerRoleI</IndexLocation>
<StreamLocation>^Data.SchedulerRoleS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}