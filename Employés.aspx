<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Employés.aspx.cs" Inherits="Mini_Projet.Employés" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <section class="mt-5">
        <table class="table table-primary">
            <tr>
       <td>
    <asp:Label ID="Label8" runat="server" Text="Saisissez votre identifiant :"></asp:Label></td>
       <td>
    <asp:TextBox runat="server" ID="TextBox5"></asp:TextBox>
           </td>
       <td></td>
  </tr>
   <tr>
       <td>
    <asp:Label ID="Label1" runat="server" Text="Saisissez votre Nom :"></asp:Label></td>
       <td>
    <asp:TextBox runat="server" ID="Nom"></asp:TextBox>
           </td>
       <td></td>
  </tr>
        <tr>
   <td> <asp:Label ID="Label2" runat="server" Text="Saisissez votre Prenom :"></asp:Label>
            </td>
            <td>    <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox>
</td>
            <td></td>
</tr>
    <tr><td><asp:Label ID="Label3" runat="server" Text="Adresse :"></asp:Label></td>
        <td><asp:TextBox runat="server" ID="TextBox2"></asp:TextBox></td>
        <td></td>
    </tr>
        <tr><td>    <asp:Label ID="Label4" runat="server" Text="Numéro de Télephone :"></asp:Label>
</td>
        <td><asp:TextBox runat="server" ID="TextBox3"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr><td>    <asp:Label ID="Label5" runat="server" Text="E-mail :"></asp:Label>
</td>
                    <td><asp:TextBox runat="server" ID="TextBox4"></asp:TextBox></td>
            <td></td>

        </tr>
        <tr><td>     <asp:Label ID="Label6" runat="server" Text="Votre Division ? :"></asp:Label>
</td>
            <td>    <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
    </asp:DropDownList></td>
            <td></td>
        </tr>
   
   
        <tr><td>    <asp:Label ID="Label7" runat="server" Text="Choisissez une mission :"></asp:Label>
</td><td> <asp:DropDownList ID="DropDownList2" runat="server">
    </asp:DropDownList></td>
            <td></td>
        </tr>

    
    
   
   <tr><td><asp:Button ID="Button1" runat="server" Text="Ajouter" OnClick="Button1_Click" /> </td>
       <td>    <asp:Button ID="Button2" runat="server" Text="Modifier" OnClick="Button2_Click" /> </td>
       <td>    <asp:Button ID="Button3" runat="server" Text="Supprimer" OnClick="Button3_Click" />
</td>
   </tr>
   
 
    </table>
        </section>

    
    

   
   

    
    

   
   

</asp:Content>
