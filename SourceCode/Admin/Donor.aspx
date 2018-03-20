<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin-MasterPage.master" AutoEventWireup="true" CodeFile="Donor.aspx.cs" Inherits="demo_Admin_Donor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3 class="box-title">List of Donors</h3>
    <div class="table-responsive">
        <%-- <table class="table table-hover">
            <thead>
                <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                    <th>Role</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Deshmukh</td>
                    <td>Prohaska</td>
                    <td>@Genelia</td>
                    <td>admin</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Deshmukh</td>
                    <td>Gaylord</td>
                    <td>@Ritesh</td>
                    <td>member</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Sanghani</td>
                    <td>Gusikowski</td>
                    <td>@Govinda</td>
                    <td>developer</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Roshan</td>
                    <td>Rogahn</td>
                    <td>@Hritik</td>
                    <td>supporter</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Joshi</td>
                    <td>Hickle</td>
                    <td>@Maruti</td>
                    <td>member</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>Nigam</td>
                    <td>Eichmann</td>
                    <td>@Sonu</td>
                    <td>supporter</td>
                </tr>
            </tbody>
        </table>--%>
        <asp:GridView ID="grdDonorDetails" runat="server" AutoGenerateColumns="false" CssClass="table table-hover">
            <Columns>
                <asp:TemplateField HeaderText="S.No.">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="First Name">
                    <ItemTemplate>
                        <asp:Label ID="lblFirstName" runat="server" Text='<%#Eval("FirstName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name">
                    <ItemTemplate>
                        <asp:Label ID="lblLastName" runat="server" Text='<%#Eval("LastName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PAN No">
                    <ItemTemplate>
                        <asp:Label ID="lblPanNo" runat="server" Text='<%#Eval("PanNo")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mobile No">
                    <ItemTemplate>
                        <asp:Label ID="lblMobileNo" runat="server" Text='<%#Eval("MobileNo")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Organisation Name">
                    <ItemTemplate>
                        <asp:Label ID="lblOrganisationName" runat="server" Text='<%#Eval("OrganisationName")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label ID="lblAddress" runat="server" Text='<%#Eval("Address")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Donation Type">
                    <ItemTemplate>
                        <asp:Label ID="lblDonationType" runat="server" Text='<%#Eval("DonationType")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Amount">
                    <ItemTemplate>
                        <asp:Label ID="lblAmount" runat="server" Text='<%#Eval("Amount")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>

