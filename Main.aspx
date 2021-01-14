<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Mini_Projet.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView Class="table table-danger" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
</asp:GridView>
</asp:Content>