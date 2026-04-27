Class SchedulerTools.SchedulerTools Extends %AI.Tool
{

/// Tool to add a person to the database
Method AddPerson(firstname As %String, lastname As %String, dob As %Date, candrive As %Boolean, familyname As %String){
    Set person = ##class(Data.Person).%New()
    Set person.FirstName = firstname
    Set person.LastName = lastname
    Set person.DOB = dob
    Set person.CanDrive = candrive
    Set person.FamilyName = familyname
    Do person.%Save()
}

/// Tool query database for list of appointment for a person
Query GetAppointmentsForPerson(person As Data.Person, startDate As %Date, endDate As %Date) As %SQLQuery(
    ROWSPEC = "Name:%String,Age:%Integer") [ SqlProc ]
{
    SELECT FirstName, LastName, ApptName, ApptDesc, ApptDate, ApptTime, Location, Duration, DrivingTime, CanDrive 
    FROM Data.Appointments
    Where ForPerson = person
    and ApptDate BETWEEN startDate and endDate
}

/// Tool query database for list of appointment for a person
Query GetAppointmentsForFamily(startDate As %Date, endDate As %Date) As %SQLQuery(
    ROWSPEC = "Name:%String,Age:%Integer") [ SqlProc ]
{
    SELECT FirstName, LastName, ApptName, ApptDesc, ApptDate, ApptTime, Location, Duration, DrivingTime, CanDrive 
    FROM Data.Appointments
    Where ApptDate BETWEEN startDate and endDate
}

}
