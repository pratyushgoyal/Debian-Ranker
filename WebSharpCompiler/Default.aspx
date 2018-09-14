<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebSharpCompiler._Default" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Code</h2>
    <p>
        <%--REVIEW MATT : Update width, was overflowing the background on my PC --%> 
        <asp:TextBox ID="txtCode" runat="server" Height="240px" Width="100%" 
            TextMode="MultiLine">
using System;
namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(&quot;Hello World&quot;);
        }
    }
}
</asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnCompile" runat="server" onclick="btnCompile_Click" Text="Compile" />
        <asp:Button ID="btnClear" runat="server"  onclick="btnClear_Click" Text="Clear" />
    </p>
    <h2>Compiler Output</h2>
    <p>
        <%--REVIEW MATT : Update width to match the textbox, why not? --%> 
        <asp:ListBox ID="lstCompilerOutput" runat="server" Width="100%"></asp:ListBox>
    </p>
</asp:Content>
