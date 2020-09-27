<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Final_Assignment.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-7">
                <h1>Payment</h1>
                <p>powered by Time Zone</p>
            </div>
        </div>
        <hr>
        <div class="row text-center">
            <div class="col-12">
                <h6>Payment Method</h6>
                <label>
                    <input type="radio" name="optradio" checked><img class="mb-4"
                        src="https://www.waveswifi.com/sites/default/files/visa-mastercard-amex_0.png"
                        width="200px" height="100px"></label>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-12">
                <h6>Card Number</h6>
                <input type="number" required />
            </div>
        </div>
        <br>
        <div class="row text-center">
            <div class="col-12">
                <h6>Full Name</h6>
            </div>
        </div>

        <div class="row text-center">
            <div class="col-12">
                <asp:TextBox ID="TextBox1" runat="server" required></asp:TextBox>
            </div>
        </div>
        <br>
        <div class="row text-center">
            <div class="col-12">
                <h6>Expiration Year & Date</h6>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-12">
                <input type="month" required />
            </div>
        </div>
            <br>
            <div class="row text-center">
            <div class="col-12">
                <h6>CSC</h6>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-12">
                <input type="number" required />
            </div>
        </div>
        <br>
            <div class="row text-center">
                <label class="col-md-6 col-form-label text-right">Amount :</label>
                <div class="col-md-6 col-form-label text-left">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="col text-center mt-3">
                    <asp:Button ID="PaymentSuccess" runat="server" Text="Submit" OnClick="Payment_Click" class="btn btn-danger w-25" />
                </div>
            </div>
    </div>
    </form>
</body>
</html>
