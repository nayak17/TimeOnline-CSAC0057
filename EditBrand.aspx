﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBrand.aspx.cs" Inherits="ImpliedProject1.EditBrand" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>

    * {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
  float: left;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 200px; 
  height: 100px;
}

/* Style the buttons inside the tab*/
.tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 13px 9px;
  width: 200px;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  float: left;
  padding: 0px 12px;
  border: 1px solid #ccc;
  width: 80%;
  border-left: none;
  height: 700px;
}
    .auto-style1 {
        margin-top: 38px;
    }
</style>
</head>
    <div class="tab">
        
  <a href ="HomePage.aspx"<button class="tablinks" onclick="openCity(event, 'Home')">Home</button></a>
  <button class="tablinks" onclick="openCity(event, 'Brands')">Brands</button>
  <a href ="AddProduct.aspx"<button class="tablinks" onclick="openCity(event, 'Products')">Products</button></a>
</div>

<div id="Home" class="tabcontent">
  <center><h2>TIME ONLINE</h2></center>
  
    
   <pre>                                                                                                                    <a href="LoginPage.aspx">Log Out</a></pre>
        
 
     <form id="AddBrand" runat="server">
        <p><h3>Edit Brand</h3>
        
       
         Brand Name <asp:TextBox ID="BrandName" runat="server" ></asp:TextBox></br></br></br>
         Brand Id&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="BrandId" runat="server"></asp:TextBox></br>
         <center><asp:Button ID="UpdateBrand" Text="Update" runat="server" ></asp:Button>&nbsp;&nbsp;
            <asp:Button ID="CancelBrand" Text="Cancel" runat="server" ></asp:Button></center>
            <center><asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style1" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="BrandId" >

             
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="BrandId" HeaderText="BrandId" SortExpression="BrandId" ReadOnly="True" />
                    <asp:BoundField DataField="BrandName" HeaderText="BrandName" SortExpression="BrandName" />
                     
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AppliedProjectConnectionString %>" DeleteCommand="DELETE FROM [Brand] WHERE [BrandId] = @BrandId" InsertCommand="INSERT INTO [Brand] ([BrandId], [BrandName]) VALUES (@BrandId, @BrandName)" SelectCommand="SELECT * FROM [Brand]" UpdateCommand="UPDATE [Brand] SET [BrandName] = @BrandName WHERE [BrandId] = @BrandId">
                    <DeleteParameters>
                        <asp:Parameter Name="BrandId" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BrandId" Type="String" />
                        <asp:Parameter Name="BrandName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BrandName" Type="String" />
                        <asp:Parameter Name="BrandId" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </center>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AppliedProjectConnectionString %>" SelectCommand="SELECT [BrandId], [BrandName] FROM [Brand]"></asp:SqlDataSource>
         </br></br>
       
            
        
    </form>
    
        
     
</div>



<script>
    function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }

    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();
</script>
   
</html>
