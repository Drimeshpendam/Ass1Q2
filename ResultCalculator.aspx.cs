using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResultCalculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // No specific logic needed here for now
    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        // Get the student's name
        string name = txtName.Text.Trim();

        // Get the marks from the textboxes, using helper method to validate input
        int subject1 = GetMark(txtSubject1.Text);
        int subject2 = GetMark(txtSubject2.Text);
        int subject3 = GetMark(txtSubject3.Text);
        int subject4 = GetMark(txtSubject4.Text);
        int subject5 = GetMark(txtSubject5.Text);
        int subject6 = GetMark(txtSubject6.Text);
        int subject7 = GetMark(txtSubject7.Text);

        // Calculate total marks and percentage
        int totalMarks = subject1 + subject2 + subject3 + subject4 + subject5 + subject6 + subject7;
        decimal percentage = (decimal)totalMarks / 700 * 100;

        // Determine grade based on percentage
        string grade = GetGrade(percentage);

        // Display the results in the result label
        lblResult.Text = $"Student Name: {name}<br/>Total Marks: {totalMarks}<br/>Percentage: {percentage:F2}%<br/>Grade: {grade}";
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        // Clear all input fields and the result label
        txtName.Text = "";
        txtSubject1.Text = "";
        txtSubject2.Text = "";
        txtSubject3.Text = "";
        txtSubject4.Text = "";
        txtSubject5.Text = "";
        txtSubject6.Text = "";
        txtSubject7.Text = "";
        lblResult.Text = "";
    }

    // Helper method to get marks from the textboxes and ensure they are valid
    private int GetMark(string markText)
    {
        int mark;
        if (!int.TryParse(markText, out mark) || mark < 0 || mark > 100)
        {
            return 0; // Return 0 if invalid input
        }
        return mark;
    }

    // Helper method to determine the grade based on the percentage
    private string GetGrade(decimal percentage)
    {
        if (percentage >= 90)
        {
            return "A+";
        }
        else if (percentage >= 80)
        {
            return "A";
        }
        else if (percentage >= 70)
        {
            return "B+";
        }
        else if (percentage >= 60)
        {
            return "B";
        }
        else if (percentage >= 50)
        {
            return "C+";
        }
        else if (percentage >= 40)
        {
            return "C";
        }
        else
        {
            return "F";
        }
    }
}