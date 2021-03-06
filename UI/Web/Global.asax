﻿<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        log4net.Config.XmlConfigurator.Configure();

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown
        Session.Abandon();
    }

    void Application_Error(object sender, EventArgs e)
    {
        Server.Transfer("~/error.aspx");
    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    void Application_BeginRequest(object sender, EventArgs e)
    {
        string culture = OSAE.OSAEObjectPropertyManager.GetObjectPropertyValue("System", "Culture").Value;
        System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(culture);
        System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(culture);
    }

</script>
