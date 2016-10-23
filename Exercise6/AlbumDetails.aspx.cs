using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class AlbumDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string isbn = Request.QueryString["isbn"];
        albumCover.Attributes["src"] = string.Format("Images/{0}.jpg", isbn);

        XmlDocument document = new XmlDocument();
        document.Load(MapPath("/App_Data/Levykauppax.xml"));
        XmlNodeList infoNodes = document.SelectNodes(string.Format("/Records/genre/record[@ISBN='{0}']", isbn));

        foreach(XmlNode node in infoNodes)
        {
            albumHeader.InnerHtml = node.Attributes["Artist"].Value + " - " + node.Attributes["Title"].Value;
            lblISBN.Text = node.Attributes["ISBN"].Value;
            lblPrice.Text = string.Format("{0}€", node.Attributes["Price"].Value);
            foreach(XmlNode album in node.ChildNodes)
            {
                trackList.InnerHtml += album.Attributes["name"].Value + "<br />";
            }
        }
    }
}