<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucPeoductDetails.ascx.cs" Inherits="de1.UserControl.ucPeoductDetails" %>
<asp:FormView ID="FormView1" runat="server" DataSourceID="EntityDataSource1" DataKeyNames="ID">
    <ItemTemplate>
        <div class="product_detail_box">
            <div class="product_image">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageFilePath", "~/images/Courses/{0}") %>' />
            </div>
            <div>
                <br />
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Category.CatName") %>'></asp:Label>&nbsp;
                <asp:Label ID="Label1" runat="server" CssClass="product_name" Text='<%# Eval("Name") %>'></asp:Label><br />
                <asp:Label ID="Label2" runat="server" CssClass="product_price" Text='<%# Eval("Duration") %>'></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>'></asp:Label><br />
            </div>
        </div>

    </ItemTemplate>
</asp:FormView>

<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableFlattening="False" EntitySetName="Courses" EntityTypeFilter="Course" Include="Category" Where="it.ID = @Id">
    <WhereParameters>
        <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
    </WhereParameters>
</asp:EntityDataSource>
