﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ErrorPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void btnBack_Click(object sender, EventArgs e)
    {
        Server.Transfer("WindowCalculator.aspx", true);
    }
}