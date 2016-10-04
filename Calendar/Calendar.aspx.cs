using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calendar : System.Web.UI.Page
{
    public int day;
    public int month;
    public int year;

    protected void Page_Load(object sender, EventArgs e)
    {
        setCurrentDateToHeader();
        if(!IsPostBack)
        {
            calendar.VisibleDate = DateTime.Today;
        }
    }

    private void setCurrentDateToHeader()
    {
        string date = DateTime.Now.ToString("dd.MM.yyyy");
        lblHeader.Text = "Today is " + date;
    }

    protected void btnPreviousYear_Click(object sender, EventArgs e)
    {
        calendar.VisibleDate = calendar.VisibleDate.AddYears(-1);
    }

    protected void btnNextYear_Click(object sender, EventArgs e)
    {
        calendar.VisibleDate = calendar.VisibleDate.AddYears(1);
    }

    protected void calendar_SelectionChanged(object sender, EventArgs e)
    {
        lblSelectedDate.Text = "Selected date: " + calendar.SelectedDate.ToString("dd.MM.yyyy");
        TimeSpan difference = DateTime.Today - calendar.SelectedDate;
        DateTime reference = new DateTime(1, 1, 1);
        int years = (reference - difference).Year - reference.Year;
        int months = (reference - difference).Month - reference.Month;
        int days = (reference - difference).Day - reference.Day;
        lblDateDifference.Text = string.Format("Difference between current date and selected date: Years {0} Months {1} Days {2}", years, months, days);
        
    }
}