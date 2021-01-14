<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Divisions.aspx.cs" Inherits="Mini_Projet.Divisions" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <section class="mt-5">
        <table class="table table-primary">
            <tr>
                <td class="auto-style1">Saisissez l&#39;Id du Division:</td> 
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td></td>
            </tr>
             <tr>
                <td class="auto-style1">Saisissez le nom:</td> 
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </td>
                 <td></td>
            </tr>
             <tr>
                <td class="auto-style1">Numéro de Tel:</td> 
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 </td>
                 <td></td>
            </tr>
             <tr>
                <td class="auto-style1">Lieu:</td> 
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 </td>
<td></td>
            </tr>
            <tr> 
                <td> 
                    <asp:Button ID="Button1" runat="server" Text="Ajouter" OnClick="Button1_Click" />
                </td>
                <td> 
                    <asp:Button ID="Button2" runat="server"  Text="Modifer" OnClick="Button2_Click" />
                </td>
                <td> 
                    <asp:Button ID="Button3" runat="server" Text="Supprimer" OnClick="Button3_Click" />
                </td>
            </tr>
            </table>
            </section>
</asp:Content>









<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 329px;
        }
        .auto-style2 {
            width: 475px;
        }
    </style>
</asp:Content>










