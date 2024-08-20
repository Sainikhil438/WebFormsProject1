<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="TestWebApplication.StudentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />

    <table class="w-100">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" Text="Student Information"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 216px">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Height="19px" Width="185px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td colspan="2" rowspan="8">
                <asp:GridView ID="dgViewStudents" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" Height="224px" Width="393px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" DataFormatString="{0:MM/dd/yyyy}"/>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCon %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; height: 24px">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="txtEmail" runat="server" Height="20px" Width="185px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 216px">
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem>Choose Any</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 216px">
                <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDOB" runat="server" Height="20px" Width="184px" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 216px">&nbsp;</td>
            <td>
                <asp:CheckBox ID="chkBoxAgree" runat="server" Text="Yes, I Agree" />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 216px">
                <asp:Label ID="lblSID" runat="server" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 216px">&nbsp;</td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 216px">&nbsp;</td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel Operation" Width="201px" OnClick="btnCancel_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 216px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 216px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 216px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
