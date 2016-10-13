using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Feeds : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void getFeedIL_Click(object sender, EventArgs e)
    {
        string url = @"http://www.iltalehti.fi/rss.xml";
        dataSource.DataFile = url;
        getFeeds();
    }

    protected void getFeedIS_Click(object sender, EventArgs e)
    {
        string url = @"http://www.iltasanomat.fi/rss/tuoreimmat.xml";
        dataSource.DataFile = url;
        getFeeds();
    }

    private void getFeeds()
    {
        try
        {
            XmlDocument document = new XmlDocument();
            document = dataSource.GetXmlDocument();

            XmlNode root = document.SelectSingleNode("/rss/channel");
            string title = root["title"].InnerText;

            feed_div.InnerHtml = string.Format("<h1>{0} {1}</h1>", title, DateTime.Now.ToShortDateString());

            XmlNodeList titles = document.SelectNodes("/rss/channel/item");

            foreach(XmlNode node in titles) {
                string header = node["title"].InnerText;
                string link = node["link"].InnerText;
                string content = node["description"].InnerText;

                feed_div.InnerHtml += string.Format("<h2>{0}</h2><br/><a href='{1}'>{1}</a><br/><p>{2}</p><br/>", header, link, content);
            }

        } catch (Exception ex)
        {
            feed_div.InnerHtml = ex.Message;
        }
    }
}