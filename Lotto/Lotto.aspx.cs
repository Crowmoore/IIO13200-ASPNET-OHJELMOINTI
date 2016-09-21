using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JAMK.IT.IIO1320;

public partial class Lotto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDraw_Click(object sender, EventArgs e)
    {
        Lottery lottery = new Lottery();
        string selectedGame = ddlGame.SelectedValue;
        int draws = 0;
        try
        {
            draws = int.Parse(tbDraws.Text);
            lottery.SetupGame(selectedGame, draws);
            rollNumbers(lottery);
        }
        catch (Exception ex)
        {
            Label lblError = new Label();
            lblError.Text = ex.Message;
            resultsPanel.Controls.Add(lblError);
        }
    }

    private void rollNumbers(Lottery lottery)
    {
        Label lblResult = new Label();
        lblResult.Text = "Here are your numbers: <br />";
        resultsPanel.Controls.Add(lblResult);
        for(int i = 0; i < lottery.TotalDraws; i++)
        {
            int[] numbers = lottery.GetPrimaryNumbers();
            int[] specials = lottery.GetSpecialNumbers(numbers);
            printResults(lottery, numbers, specials);
        }
    }

    private void printResults(Lottery lottery, int[] numbers, int[] specials)
    {
        Label result = new Label();
        string row = "";
        for(int i = 0; i < numbers.Length; i++)
        {
            row = row + numbers[i].ToString() + " ";
        }
        if(lottery.SelectedGame != "Viking Lotto")
        {
            row = row + " specials: ";
            for(int i = 0; i < specials.Length; i++)
            {
                row = row + specials[i].ToString() + " ";
            }
        }
        result.Text = row;
        resultsPanel.Controls.Add(result);
        resultsPanel.Controls.Add(new LiteralControl("<br />"));

    }
}