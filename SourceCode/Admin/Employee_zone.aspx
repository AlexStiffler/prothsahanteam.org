<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin-MasterPage.master" AutoEventWireup="true" CodeFile="Employee_zone.aspx.cs" Inherits="Admin_Employee_zone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="row">
        <div class="col-sm-12">
            <h3 class="box-title">Job seekers</h3>
            <div class="table-responsive">
                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="false" class="table table-hover" EmptyDataText="No records Found">
                    <Columns>
                        <asp:TemplateField HeaderText="S.No.">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Applicant Name">
                            <ItemTemplate>
                                <%#Eval("ApplicantName")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email ID">
                            <ItemTemplate>
                                <%#Eval("ApplicantEmailId")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Resume">
                            <ItemTemplate>
                               <a href="<%#Eval("FilePath")%>" target="_blank"><i class="fa fa-file-pdf-o" aria-hidden="true"></i></a>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

