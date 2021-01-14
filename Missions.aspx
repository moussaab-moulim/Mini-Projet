<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Missions.aspx.cs" Inherits="Mini_Projet.Missions" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <section class="mt-5">
        <table class="table table-primary">
            <tr> <td class="auto-style1">Saisissez l&#39;ID du Mission:</td>  <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>  <td></td> </tr>
            <tr> <td class="auto-style1">Nom Mission :</td>  <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>  <td></td> </tr>
            <tr> <td class="auto-style1">Description :</td>  <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>  <td></td> </tr>
            <tr> <td class="auto-style1">Date de Début:</td>  <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>  <td></td> </tr>
            <tr> <td class="auto-style1">Date de Fin :</td>  <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>  <td></td> </tr>
            <tr> <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ajouter" />
                </td>  <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modifier" />
                </td>  <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Supprimer" />
                </td> </tr>




            </table>
        </section>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 268px;
        }
    </style>
</asp:Content>

