<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResultCalculator.aspx.cs" Inherits="ResultCalculator" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Result Calculator</title>
    <style>
        body { font-family: Arial, sans-serif; }
        .container { width: 50%; margin: 0 auto; padding: 20px; border: 1px solid #ccc; border-radius: 10px; }
        .form-group { margin-bottom: 10px; }
        label { display: block; margin-bottom: 5px; }
        input[type="text"], input[type="number"] { width: 100%; padding: 5px; }
        button { padding: 10px 15px; margin-top: 10px; cursor: pointer; }
        .result { margin-top: 20px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Student Result Calculator</h2>
            <div class="form-group">
                <label for="txtName">Enter Name:</label>
                <asp:TextBox ID="txtName" runat="server" MaxLength="100" />
            </div>

            <div class="form-group">
                <label for="txtSubject1">Enter Marks for Subject 1:</label>
                <asp:TextBox ID="txtSubject1" runat="server" />
            </div>
            <div class="form-group">
                <label for="txtSubject2">Enter Marks for Subject 2:</label>
                <asp:TextBox ID="txtSubject2" runat="server" />
            </div>
            <div class="form-group">
                <label for="txtSubject3">Enter Marks for Subject 3:</label>
                <asp:TextBox ID="txtSubject3" runat="server" />
            </div>
            <div class="form-group">
                <label for="txtSubject4">Enter Marks for Subject 4:</label>
                <asp:TextBox ID="txtSubject4" runat="server" />
            </div>
            <div class="form-group">
                <label for="txtSubject5">Enter Marks for Subject 5:</label>
                <asp:TextBox ID="txtSubject5" runat="server" />
            </div>
            <div class="form-group">
                <label for="txtSubject6">Enter Marks for Subject 6:</label>
                <asp:TextBox ID="txtSubject6" runat="server" />
            </div>
            <div class="form-group">
                <label for="txtSubject7">Enter Marks for Subject 7:</label>
                <asp:TextBox ID="txtSubject7" runat="server" />
            </div>

            <asp:Button ID="btnCalculate" runat="server" Text="Show Result" OnClick="btnCalculate_Click" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />

            <div class="result">
                <asp:Label ID="lblResult" runat="server" Text="" />
            </div>
        </div>
    </form>
</body>
</html>

