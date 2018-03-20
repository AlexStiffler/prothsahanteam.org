<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin-MasterPage.master" AutoEventWireup="true" CodeFile="Employer_zone.aspx.cs" Inherits="Admin_Employer_zone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        function DeleteConfirm() {
            var Ans = confirm("Do you want to Delete Selected Employee Record?");
            if (Ans) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>
    <div class="row">
        <div class="col-sm-12">
            <h3 class="box-title">Posted Job</h3>
            <div class="table-responsive">
                
                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="false" class="table table-hover" EmptyDataText="No records Found">
                    <Columns>
                        <asp:TemplateField HeaderText="S.No.">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText=" ">
                            <ItemTemplate>
                                <asp:CheckBox ID="chkDel" runat="server" />
                                <asp:HiddenField ID="JobId" runat="server" Value=' <%#Eval("JobId")%>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Post Vacancy">
                            <ItemTemplate>
                                <%#Eval("PostVacancy")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Qualification">
                            <ItemTemplate>
                                <%#Eval("Qualification")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Experience">
                            <ItemTemplate>
                                <%#Eval("Experience")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Package Offered">
                            <ItemTemplate>
                                <%#Eval("PackageOffered")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Organization Name">
                            <ItemTemplate>
                                <%#Eval("OrganizationName")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <%#Eval("Address")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City">
                            <ItemTemplate>
                                <%#Eval("City")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State">
                            <ItemTemplate>
                                <%#Eval("State")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PinCode">
                            <ItemTemplate>
                                <%#Eval("PinCode")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contact Person">
                            <ItemTemplate>
                                <%#Eval("ContactPerson")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile No">
                            <ItemTemplate>
                                <%#Eval("MobileNo")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email Id">
                            <ItemTemplate>
                                <%#Eval("EmailId")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Button ID="btnDeleteRecord" runat="server" OnClick="btnDeleteRecord_Click" Text="Delete" class="btn btn-danger" />
            </div>
        </div>
    </div>
</asp:Content>

