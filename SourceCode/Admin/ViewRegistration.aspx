<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin-MasterPage.master" AutoEventWireup="true" CodeFile="ViewRegistration.aspx.cs" Inherits="Admin_ViewRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-sm-12">
            <h3 class="box-title">Recent Registration</h3>
            <div class="table-responsive">
                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="false" class="table table-hover" EmptyDataText="No records Found">
                    <Columns>
                        <asp:TemplateField HeaderText="S.No.">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <%#Eval("CompleteName")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date Of Birth">
                            <ItemTemplate>
                                <%#Eval("DOB")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                   <%--     <asp:TemplateField HeaderText="PAN No.">
                            <ItemTemplate>
                                <%#Eval("PanNo")%>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:TemplateField HeaderText="Email ID">
                            <ItemTemplate>
                                <%#Eval("EmailId")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile No">
                            <ItemTemplate>
                                <%#Eval("MobileNo")%>
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
                        <asp:TemplateField HeaderText="Country">
                            <ItemTemplate>
                                <%#Eval("Country")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PinCode">
                            <ItemTemplate>
                                <%#Eval("PinCode")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Citizenship">
                            <ItemTemplate>
                                <%#Eval("Citizenship")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="AdditionalNote">
                            <ItemTemplate>
                                <%#Eval("AdditionalNote")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
