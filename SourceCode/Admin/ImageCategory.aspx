<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin-MasterPage.master" AutoEventWireup="true" CodeFile="ImageCategory.aspx.cs" Inherits="demo_Admin_ImageCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
        function validateCat() {
            if (document.getElementById('<%=txtCategory.ClientID %>').value == "") {
                validateError('<%=txtCategory.ClientID %>', "Enter Category Name !");
        return false;
    }
        }

        function DeleteDownloadCheck1() {
            debugger;
            var gridView = document.getElementById("datatables-1");
            var checkBoxes = gridView.getElementsByTagName("input");
            for (var i = 0; i < checkBoxes.length; i++) {
                if (checkBoxes[i].type == "checkbox" && checkBoxes[i].checked) {
                    var r = confirm("Are you sure to delete checked items.");
                    if (r == true) {
                        validateSuccess('datatables-1');
                        return true;
                    }
                    else
                        return false;
                }
            }
            validateError('datatables-1', 'Please checked atleast one Record');
            return false;
        }
    </script>
     <asp:HiddenField ID="hdncatID" runat="server" />
<asp:HiddenField ID="hdnSubCatID" runat="server" />
  
<div class="widget">
    <div class="widget-header">
                         <h3 class="box-title">Image Category</h3>
                        <div class="additional-btn">
								<a href="#" class="hidden reload"><i class="icon-ccw-1"></i></a>
								<a href="#" class="widget-toggle"><i class="icon-down-open-2"></i></a>
								<a href="#" class="widget-close"><i class="icon-cancel-3"></i></a>
							</div>
                    </div>
    <div class="widget-content padding">
        
          
        <div class="form-group">
            <div id="CategoryDiv" runat="server">
            <div class="row">
                <label class="col-sm-3 control-label">
                    Category Name *</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtCategory" MaxLength="100" class="form-control" placeholder="Enter Category Name"
                        runat="server"></asp:TextBox>                
                </div>
            </div>
                  <asp:HiddenField ID="hdnId" runat="server" />
            <div class="row">&nbsp;</div>
            <div class="row">
                <label class="col-sm-3 control-label">
                    Category Description </label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtDescription" MaxLength="200" TextMode="MultiLine" class="form-control" placeholder="Enter Category Description"
                        runat="server"></asp:TextBox>
                </div>
            </div>
            </div>
        </div>
        
        <div class="row">
 <div class="col-sm-1"></div>
        <div class="col-sm-1">
            <div class="form-group">
                <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success center" Text="Submit" OnClick="btnSave_Click" OnClientClick="return validateCat();" />
            </div>
        </div>
             <div class="col-sm-1" style="margin-left:40px;">
            <div class="form-group">
                   <asp:Button ID="btnCancel" CssClass="btn btn-primary center" OnClick="btnCancel_Click" runat="server" Style="padding: 10px 30px;"
                            Text="Cancel" />
            </div>
        </div>
    </div>    

                  
</div>
</div>
      
    <div class="widget">
                    <div class="widget-header">
                        <h3>
                           All Categories</h3>
                        <div class="additional-btn">
								<a href="#" class="hidden reload"><i class="icon-ccw-1"></i></a>
								<a href="#" class="widget-toggle"><i class="icon-down-open-2"></i></a>
								<a href="#" class="widget-close"><i class="icon-cancel-3"></i></a>
							</div>
                    </div>
                    <div class="widget-content padding">
                        <div class="table-responsive">
                            <div class='form-horizontal'>
                                <asp:Repeater ID="RepDetails" runat="server">
                                    <HeaderTemplate>
                                        <table id="datatables-1" class="table table-striped table-bordered" cellspacing="0"
                                            width="100%">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        S.No.
                                                    </th>
                                                    <th  data-sortable="false" class="checkbox_square_Table" onchange="ChkAll()">
                                                        <asp:CheckBox ID="chkParentDelete" runat="server" Text=" " />
                                                    </th>
                                                    <th>
                                                        Category Name
                                                    </th>
                                                   
                                                    <th data-sortable="false">
                                                        Edit
                                                    </th>
                                               
                                                </tr>
                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <%# Container.ItemIndex + 1 %>
                                            </td>                                          
                                            <td class="checkbox_square">
                                                <asp:CheckBox ID="chkChild" runat="server" Text=" "  />
                                                <asp:HiddenField ID="hdnid" Value='<%# Eval("CategoryId") %>' runat="server" />
                                                <asp:HiddenField ID="hdnDocId" runat="server" Value='<%#Eval("Id") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblCategory" runat="server" Text='<%#Eval("CategoryName") %>' />
                                                <asp:Label ID="lblDescription" runat="server" Text='<%#Eval("Description") %>' Visible="false" />
                                            </td>
                                       
                                            <td>
                                                <div class="btn-group btn-group-xs">
                                                    <asp:LinkButton ID="lbtnEdit" ToolTip="Edit" runat="server" OnClick="lbtnEdit_Click"
                                                        CssClass="fa fa-edit"></asp:LinkButton>
                                                </div>
                                            </td>
                                        
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </tbody> </table>
                                    </FooterTemplate>
                                </asp:Repeater>                            
                            </div>
                        </div>
                    </div>
           <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete"
                        OnClick="btnDelete_Click" OnClientClick="return DeleteDownloadCheck1();" />
                </div>
</asp:Content>

