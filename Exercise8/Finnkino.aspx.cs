using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Finnkino : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Initialize();
        }
    }

    protected void Initialize()
    {
        XmlDocument document = new XmlDocument();
        document.Load("http://www.finnkino.fi/xml/TheatreAreas/");
        XmlNodeList nodes = document.SelectNodes("/TheatreAreas/TheatreArea");
        foreach(XmlNode node in nodes)
        {
            lbTheaters.Items.Add(new ListItem(node["Name"].InnerText, node["ID"].InnerText));
        }
            
    }

    protected void lbTheaters_SelectedIndexChanged(object sender, EventArgs e)
    {
        images.InnerHtml = "";
        string date = DateTime.Now.ToShortDateString();
        XmlDocument document = new XmlDocument();
        document.Load(string.Format("http://www.finnkino.fi/xml/Schedule/?area={0}&dt={1}", lbTheaters.SelectedValue.ToString(), date));
        XmlNodeList nodes = document.SelectNodes("/Schedule/Shows/Show");
        foreach(XmlNode node in nodes)
        {
            string imageUrl = node.SelectSingleNode("Images/EventSmallImagePortrait").InnerText;
            images.InnerHtml += string.Format("<img src='{0}'/>", imageUrl);
        }
    }
}