using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JAMK.ICT.Data;
using JAMK.ICT.BL;

public partial class Students : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void btnGet3Students_Click(object sender, EventArgs e)
    {
        DataTable dt = DBPlacebo.Get3TestStudents();
        gvData.DataSource = dt;
        gvData.DataBind();
    }
    public void btnGetAllStudents_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Students"].ConnectionString;
        string message = "";
        try
        {
            DataTable dt = DBPlacebo.GetAllStudentsFromSQLServer(connectionString, "oppilaat", out message);
            gvData.DataSource = dt;
            gvData.DataBind();
            lblMessages.Text = message;
        }
        catch (Exception ex)
        {
            lblMessages.Text = ex.Message;
        }
    }

    protected void btnGetStudentObjects_Click(object sender, EventArgs e)
    {
        var students = new Oppilaat().Hae3TestiOppilasta();
        gvData.DataSource = students;
        gvData.DataBind();
    }
}