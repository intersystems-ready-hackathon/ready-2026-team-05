Class Data.Appointment Extends %Persistent
{
    // What is the appointment name
    Property ApptName As %String;
    // Appointment description
    Property ApptDesc As %String;
    // Who is this appointment for
    Property ForPerson As Data.Person;
    // Who is the person that can drive
    Property DrivingPerson As Data.Person;
    // What is appointment Date and Time
    Property ApptDateTime As %TimeStamp;
    // What is the duration for the appointment in minutes
    Property Duration As %Integer;
    // What is the location name for appointment
    Property Location As %String;
    // How long does it to take to drive there
    Property DrivingTime As %Integer;
Storage Default
{
<Data name="AppointmentDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ForPerson</Value>
</Value>
<Value name="3">
<Value>DrivingPerson</Value>
</Value>
<Value name="4">
<Value>ApptDate</Value>
</Value>
<Value name="5">
<Value>ApptTime</Value>
</Value>
<Value name="6">
<Value>Duration</Value>
</Value>
<Value name="7">
<Value>Location</Value>
</Value>
<Value name="8">
<Value>DrivingTime</Value>
</Value>
<Value name="9">
<Value>ApptName</Value>
</Value>
<Value name="10">
<Value>ApptDesc</Value>
</Value>
<Value name="11">
<Value>ApptDateTime</Value>
</Value>
</Data>
<DataLocation>^Data.AppointmentD</DataLocation>
<DefaultData>AppointmentDefaultData</DefaultData>
<IdLocation>^Data.AppointmentD</IdLocation>
<IndexLocation>^Data.AppointmentI</IndexLocation>
<StreamLocation>^Data.AppointmentS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}