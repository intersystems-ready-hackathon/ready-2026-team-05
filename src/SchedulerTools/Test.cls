Class SchedulerTools.Test Extends %RegisteredObject
{

/// Description
ClassMethod Test(request As %String = "please try to get the appointments for the next month for John") As %Status
{
    Set sc = $$$OK
    Set agent = ##class(SchedulerTools.Agent).%New()
    Set sc = agent.%Init()
    write:sc'=1 $SYSTEM.Status.GetErrorText(sc), !

    Set session = agent.CreateSession()

    // This requires using both tools defined in Sample.Tools and packaged in Sample.ToolSet
    #; Set request = "Get a schedule for next week and also get a list of people younger than 30"
    Set response = agent.Chat(session, request)
    write response.Content
    Return sc
}

}
