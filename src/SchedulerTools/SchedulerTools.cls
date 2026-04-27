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
Query GetAppointments(person As Data.Person, startDate As %Date, endDate As %Date) As %SQLQuery(
    ROWSPEC = "Name:%String,Age:%Integer") [ SqlProc ]
{
    SELECT ApptName, 
        -- Calculate age at the time of appointment
        DATEDIFF(YEAR, ForPerson->DOB, GETDATE()) - CASE WHEN MONTH(ForPerson->DOB) > MONTH(GETDATE()) OR (MONTH(ForPerson->DOB) = MONTH(GETDATE()) AND DAY(ForPerson->DOB) > DAY(GETDATE())) THEN 1 ELSE 0 END AS age
    FROM Data.Appointment
    Where ForPerson->FirstName = :person.FirstName
    and ApptDate BETWEEN TO_DATE(:startDate, 'YYYY-MM-DD') and TO_DATE(:endDate, 'YYYY-MM-DD')
}

}
