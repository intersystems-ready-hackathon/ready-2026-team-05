Class SchedulerTools.ToolSet Extends %AI.ToolSet [DependsOn=Sample.Tools]
{
    XData Definition
    {
        <ToolSet>
            <Description>Scheduler Toolset</Description>
            <Include Class="SchedulerTools.SchedulerTools"></Include>
            <MCP Name="PythonServer">
                <Stdio Executable="/usr/irissys/bin/irispython" 
                Args="/home/irisowner/dev/src/Python/multiplication_mcp.py" />
            </MCP>
        </ToolSet>
    }    
}

