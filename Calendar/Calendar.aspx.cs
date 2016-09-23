using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calendar : System.Web.UI.Page
{
    private int day;
    private int month;
    private int year;

    protected void Page_Load(object sender, EventArgs e)
    {
        day = DateTime.Now.Day;
        month = DateTime.Now.Month;
        year = DateTime.Now.Year;
        setCurrentDateToHeader();
    }

    private void setCurrentDateToHeader()
    {
        string date = DateTime.Now.ToString("dd.MM.yyyy");
        lblHeader.Text = "Today is " + date;
        calendar.VisibleDate = new DateTime(year, month, day);
        calendar.SelectedDate = new DateTime(year, month, day);
    }

    protected void btnPreviousYear_Click(object sender, EventArgs e)
    {
        day = calendar.SelectedDate.Day;
        month = calendar.SelectedDate.Month;
        year = calendar.SelectedDate.Year;
        calendar.VisibleDate = new DateTime(year - 1, month, day);
        calendar.SelectedDate = new DateTime(year - 1, month, day);
    }

    protected void btnNextYear_Click(object sender, EventArgs e)
    {
        day = calendar.SelectedDate.Day;
        month = calendar.SelectedDate.Month;
        year = calendar.SelectedDate.Year;
        calendar.VisibleDate = new DateTime(year + 1, month, day);
        calendar.SelectedDate = new DateTime(year + 1, month, day);
    }

    protected void calendar_SelectionChanged(object sender, EventArgs e)
    {
        lblSelectedDate.Text = "Selected date: " + calendar.SelectedDate.ToString("dd.MM.yyyy");
    }
}