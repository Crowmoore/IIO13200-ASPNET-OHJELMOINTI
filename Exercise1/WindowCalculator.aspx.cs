using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WindowCalculator : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void btnCalculate_Click(object sender, EventArgs e)
    {
        double width = 0;
        double height = 0;
        double perimeter = 0;

        try
        {
            width = double.Parse(txtWidth.Text);
            height = double.Parse(txtHeight.Text);
            perimeter = double.Parse(txtBorder.Text);
        }

        catch (System.FormatException ex)
        {
            Server.Transfer("ErrorPage.aspx", true);
        }

        double glassArea = CalculateArea(width, height);
        double borderPerimeter = CalculatePerimeter(width, height);
        double totalPrice = CalculateTotalPrice(glassArea, borderPerimeter);

        lblArea.Text = "Window area: " + glassArea + " m^2";
        lblPerimeter.Text = "Border perimeter: " + borderPerimeter + " m";
        lblPrice.Text = "Total price: " + totalPrice + " €";
    }

    private double CalculateTotalPrice(double glassArea, double borderPerimeter)
    {
        double roi = Double.Parse(ConfigurationManager.AppSettings["roi"]);
        double work = Double.Parse(ConfigurationManager.AppSettings["work"]);
        double glassSquarePrice = Double.Parse(ConfigurationManager.AppSettings["glassSquarePrice"]);
        double borderPricePerMeter = Double.Parse(ConfigurationManager.AppSettings["borderPricePerMeter"]);

        double totalPrice = (1 + roi) * ((glassArea * glassSquarePrice) + (borderPerimeter * borderPricePerMeter) + work);
        return totalPrice;
    }

    private double CalculateArea(double width, double height)
    {
        double glassArea = (width * height) / 1000000;
        return glassArea;
    }

    private double CalculatePerimeter(double width, double height)
    {
        double borderPerimeter = (2 * width + 2 * height) / 1000;
        return borderPerimeter;
    }
}