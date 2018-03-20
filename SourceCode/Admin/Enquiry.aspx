<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin-MasterPage.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="demo_Admin_Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <%--  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />--%>
<div class="row">
        <div class="col-sm-12">
            <h3 class="box-title">Recent Enquiry</h3>
            <div class="table-responsive">
                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="false" class="table" EmptyDataText="No records Found">
                    <Columns>
                           <asp:TemplateField HeaderText="S.No.">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <%#Eval("Name")%> 
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <%#Eval("Email")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Subject">
                            <ItemTemplate>
                                <%#Eval("Subject")%> 
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Message">
                            <ItemTemplate>
                                <%#Eval("Message")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="City">
                            <ItemTemplate>
                                <%#Eval("City")%> 
                            </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Country">
                            <ItemTemplate>
                                <%#Eval("Country")%> 
                            </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Phone_Number">
                            <ItemTemplate>
                                <%#Eval("Phone_Number")%> 
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <%#Eval("Address")%> 
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>

