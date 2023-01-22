<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ahmad22_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 294px;
        }
        .auto-style3 {
            width: 294px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 294px;
            height: 32px;
        }
        .auto-style6 {
            height: 32px;
        }
        .auto-style7 {
            width: 299px;
        }
        .auto-style8 {
            height: 32px;
            width: 299px;
        }
        .auto-style9 {
            height: 26px;
            width: 299px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1 table table-hover">
                <tr>
                    <td class="auto-style2">Name :</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Age :</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">City :</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone :</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Email :</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">image :</td>
                    <td class="auto-style9">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="Button1" runat="server" Height="46px" OnClick="Button1_Click" Text="add" Width="112px" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;number of customers :<asp:Label ID="lblcount" runat="server" Text="lbl"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        Average of Ages :<asp:Label ID="lblage" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        &nbsp;&nbsp; maximum Age :
                        <asp:Label ID="lblmax" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="search" />
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
            </table>
                        <br />
&nbsp;<br />
&nbsp;<br />

            <asp:GridView ID="GridView1" runat="server" class="table table-dark table-striped">
                <Columns>
                    <asp:TemplateField HeaderText="images">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' width="200px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
