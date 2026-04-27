Class SchedulerTools.SchedulerTools Extends %AI.Tool
{

/// Tool to add a person to the database
Method AddPerson(firstname As %String, lastname As %String, dob As %Date, candrive As %Boolean, familyName As %String){
    Set person = ##class(Data.Person).%New()
    Set person.FirstName = firstname
    Set person.LastName = lastname
    Set person.DOB = dob
    Set person.CanDrive = 1
    Set person.FamilyName = 1
    Do person.%Save()
}
/// Tool query database for list of appointment for a person
Query GetPeopleYoungerThan(age As %Integer) As %SQLQuery(
    ROWSPEC = "Name:%String,Age:%Integer") [ SqlProc ]
{
    SELECT Name, Age From Sample.Person Where Age < :age
}

}
