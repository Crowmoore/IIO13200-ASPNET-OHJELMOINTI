using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Stuff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gvStuff_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selected = gvStuff.SelectedIndex;
        string name = gvStuff.Rows[selected].Cells[1].Text;
        string stuff = gvStuff.Rows[selected].Cells[2].Text;
        lblSelected.Text = string.Format("{0} {1}", name, stuff);

        dvStuff.PageIndex = selected;
    }
}