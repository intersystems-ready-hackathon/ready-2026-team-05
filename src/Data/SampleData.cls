Class Data.SampleData Extends %RegisteredObject
{
    /// Create 2 adults and 2 kids for testing
    ClassMethod CreateFamily() As %Status
    {
        Set sc = $$$OK
        set person = ##class(Data.Person).%New()
        Set person.FirstName = "John"
        Set person.LastName = "Smith"
        Set person.FamilyName = "Smith"
        Set person.DOB = "1980-01-01"
        Set person.CanDrive = 1
        $$$ThrowOnError(person.%Save())

        set person = ##class(Data.Person).%New()
        Set person.FirstName = "Jane"
        Set person.LastName = "Smith"
        Set person.FamilyName = "Smith"
        Set person.DOB = "1985-01-01"
        set person.CanDrive = 1
        $$$ThrowOnError(person.%Save())

        set person = ##class(Data.Person).%New()
        Set person.FirstName = "David"
        Set person.LastName = "Smith"
        Set person.FamilyName = "Smith"
        Set person.DOB = "2010-01-01"
        set person.CanDrive = 0
        $$$ThrowOnError(person.%Save())

        set person = ##class(Data.Person).%New()
        Set person.FirstName = "Emily"
        Set person.LastName = "Smith"
        Set person.FamilyName = "Smith"
        Set person.DOB = "2012-01-01"
        set person.CanDrive = 0
        $$$ThrowOnError(person.%Save())

        Return sc
    }

    /// Creates some appointments
    ClassMethod CreateAppointments() As %Status
    {
        Set sc = $$$OK
        set appt = ##class(Data.Appointment).%New()
        Set appt.ApptName = "Doctor Visit"
        Set appt.ApptDesc = "Annual physical checkup"
        Set appt.ForPerson = ##class(Data.Person).%OpenId(1)
        Set appt.DrivingPerson = ##class(Data.Person).%OpenId(1)
        Set appt.ApptDateTime = "2026-05-01 10:00:00"
        Set appt.Duration = 60
        Set appt.Location = "Boston Medical Center"
        set appt.DrivingTime = 30
        $$$ThrowOnError(appt.%Save())

        set appt = ##class(Data.Appointment).%New()
        Set appt.ApptName = "Doctor Visit"
        Set appt.ApptDesc = "Annual physical checkup"
        Set appt.ForPerson = ##class(Data.Person).%OpenId(2)
        Set appt.DrivingPerson = ##class(Data.Person).%OpenId(2)
        Set appt.ApptDateTime = "2026-05-01 11:00:00"
        Set appt.Duration = 60
        Set appt.Location = "Boston Medical Center"
        set appt.DrivingTime = 30
        $$$ThrowOnError(appt.%Save())

        Set sc = $$$OK
        set appt = ##class(Data.Appointment).%New()
        Set appt.ApptName = "Dentist Visit"
        Set appt.ApptDesc = "Annual dental checkup"
        Set appt.ForPerson = ##class(Data.Person).%OpenId(3)
        Set appt.DrivingPerson = ##class(Data.Person).%OpenId(1)
        Set appt.ApptDateTime = "2026-05-01 10:00:00"
        Set appt.Duration = 60
        Set appt.Location = "Boston Dental Clinic"
        set appt.DrivingTime = 40
        $$$ThrowOnError(appt.%Save())

        Return sc
    }

    /// Seta up data
    ClassMethod SetupData() As %Status
    {
        Set sc = $$$OK
        $$$ThrowOnError(##class(Data.Appointment).%DeleteExtent())
        $$$ThrowOnError(##class(Data.Person).%DeleteExtent())
        $$$ThrowOnError(..CreateFamily())
        $$$ThrowOnError(..CreateAppointments())
        Return sc
    }
}
