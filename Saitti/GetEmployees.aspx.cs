using System;
using System.Configuration; //for web.config
using System.Data; //ADO.NET classes
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GetEmployees : System.Web.UI.Page
{
    protected string xml;

    protected void Page_Load(object sender, EventArgs e)
    {
        xml = ConfigurationManager.AppSettings["employeeXML"];
        lblStatus.Text = "XML file named " + xml + " found";
    }

    protected void btnGetEmployees_Click(object sender, EventArgs e)
    {
        DataSet set = new DataSet();
        DataTable table = new DataTable();
        DataView view = new DataView();

        set.ReadXml(Server.MapPath(xml));
        table = set.Tables[0];
        view = table.DefaultView;

        gridEmployeeData.DataSource = view;
        gridEmployeeData.DataBind();

        lblStatus.Text = string.Format("Found {0} employees", table.Rows.Count);
    }
}