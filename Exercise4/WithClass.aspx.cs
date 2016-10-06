using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JAMK.IT;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            gdClients.DataSource = DBDemoxOy.GetDataFromSQL();
            gdClients.DataBind();
        } catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
        }
    }
}