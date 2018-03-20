<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin-MasterPage.master" ValidateRequest="false" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Upload-Gallery.aspx.cs" Inherits="demo_Admin_Upload_Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        function callFunc(lnk) {

            var index = lnk.id.charAt(lnk.id.lastIndexOf('_') + 1);
            document.getElementById('<%=hdnIndex.ClientID %>').value = index;
        }
        function validatefileupload(fu) {
            debugger;
            var ext = $(fu).val().split('.').pop().toLowerCase();
            if ($.inArray(ext, ['png', 'jpg', 'jpeg']) == -1) {
                validateError(fu.id, "Please upload only '.png', '.jpg', '.jpeg' file");
                $('#' + fu.id).val('');
                return false;

            }
            else {
                validateSuccess(fu.id);
                validatefileuploader(fu);
                // uploadlogo();
            }

        }

        function validatefileuploader(fu) {
            debugger;
            var filename = "";
            for (var i = 0; i < fu.files.length; i++) {
                debugger;
                var fileSize = fu.files[i];
                var sizeInmb = fileSize.size / 1024 / 1024;
                if (sizeInmb > 1) {
                    filename = filename + ", " + fileSize.name;
                }
                if (i == parseInt(fu.files.length) - 1) {
                    if (filename != "") {
                        ErrorMessage("Image Size can't be greater than 1 mb ! - " + filename.substring(1));
                        fu.value = "";
                        return;
                    }
                }
                else {
                }
            }
            uploadlogo();
        }

        function validateGallery() {
            if (document.getElementById('<%=ddlCategory.ClientID %>').value == "0") {
                validateError('<%=ddlCategory.ClientID %>', "Please select category");
                return false;
            }
        }

        function viewImageGallary(lbl) {
            //alert($('#<%=hdnimgName.ClientID %>').val());
                if (lbl.textContent.trim() != "") {
                    var url = window.location.origin;
                    //window.open(url + "/WorkSheet/hasr/AllImages/" + lbl.textContent);
                    window.open($('#<%=hdnimgName.ClientID %>').val().replace('~', '..'));
            }
        }
        function ChkInsert() {
            debugger;
            var gridView = document.getElementById('<%=RepMultipleUpload.ClientID %>');
               var checkBoxes = gridView.getElementsByTagName("input");
               for (var i = 0; i < checkBoxes.length; i++) {
                   if (checkBoxes[i].type == "checkbox" && checkBoxes[i].checked) {

                       return true;
                   }
               }
               validateError('' + TableName + '', 'Please select at least one item');
               return false;
           }
    </script>
    <style>
        .table-bordered
        {
            border: 1px solid #e4e7ea;
        }
    </style>
    <asp:HiddenField ID="hdnImgID" runat="server" />
    <asp:HiddenField ID="hdnimgName" runat="server" />
    <asp:HiddenField ID="hdnIndex" runat="server" />
    <div class="widget">
        <div class="widget-header">
            <h3 class="box-title">Add New Image</h3>
            <div class="additional-btn">
                <a href="#" class="hidden reload"><i class="icon-ccw-1"></i></a><a href="#" class="widget-toggle">
                    <i class="icon-down-open-2"></i></a><a href="#" class="widget-close"><i class="icon-cancel-3"></i></a>
            </div>
        </div>
        <div class="widget-content padding">

            <div class="form-group" id="Categorywise" runat="server">
                <div class="row">
                    <label class="col-sm-2 control-label">
                        Category *</label>
                    <div class="col-sm-6">
                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true">
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-sm-12">
                    </div>
                </div>
            </div>
        </div>

        <div class="widget">

            <div class="widget-content">
                <div class="table-responsive">
                    <div class='form-horizontal'>
                        <asp:Repeater ID="RepMultipleUpload" runat="server" OnItemCommand="RepMultipleUpload_ItemCommand">
                            <HeaderTemplate>
                                <table id="table" class="table table-striped table-bordered" cellspacing="0"
                                    width="100%">
                                    <thead>
                                        <tr>
                                            <th width="5%">S.No.
                                            </th>
                                            <th style="width: 30px" data-sortable="false" class="checkbox_square_Table">
                                                <asp:CheckBox ID="chkParentDelete" runat="server" Text=" " onchange="enablefile(this)" />
                                            </th>
                                            <th>Image Name
                                            </th>
                                            <th>Upload Image
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
                                        <asp:CheckBox ID="chkChildDelete" runat="server" Text=" " />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtImgTitle" runat="server" Text='<%# Eval("ImageTitle") %>' Width="250px"></asp:TextBox>
                                        <asp:Label ID="lblError" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:FileUpload ID="Futransfer" runat="server" onChange="return validatefileupload(this);" />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody> </table>
                           <%--    <asp:Button ID="btnAddMore" runat="server" Text="Add New Row" CommandName="AddRow" CssClass="btn btn-success" Style="margin-left:1000px;" /> --%>
                            </FooterTemplate>
                        </asp:Repeater>
                        <asp:Label ID="lblcheck" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-2">
                            </div>
                            <div class="col-sm-1">
                                <div class="btn-wrapper">
                                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success" Text="Submit" OnClientClick="return validateGallery();"
                                        OnClick="btnSave_Click" />
                                </div>
                            </div>
                            <div class="col-sm-1">
                                <div class="btn-wrapper">
                                    <asp:Button ID="btnCancel" CssClass="btn btn-primary" runat="server" OnClick="btnCancel_Click" Style="padding: 10px 30px; margin-left: 32px;"
                                        Text="Cancel" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="widget">
            <div class="widget-header">
                <h3>All
                    <asp:Label ID="lblCategoryName" runat="server"></asp:Label>
                    Images</h3>
                <div class="additional-btn">
                    <a href="#" class="hidden reload"><i class="icon-ccw-1"></i></a><a href="#" class="widget-toggle">
                        <i class="icon-down-open-2"></i></a><a href="#" class="widget-close"><i class="icon-cancel-3"></i></a>
                </div>
            </div>
            <div class="widget-content">
                <div class="table-responsive">
                    <div class='form-horizontal'>
                        <asp:Repeater ID="RepDetails" runat="server">
                            <HeaderTemplate>
                                <table id="datatables-1" class="table table-striped table-bordered" cellspacing="0"
                                    width="100%">
                                    <thead>
                                        <tr>
                                            <th>S.No.
                                            </th>
                                            <th style="width: 30px" data-sortable="false" class="checkbox_square_Table">
                                                <asp:CheckBox ID="chkParentDelete" runat="server" Text=" " onchange="ChkAll('datatables-1')" />
                                            </th>
                                            <th>Image Title
                                            </th>
                                            <th>Image Name
                                            </th>
                                            <th>Posted Date
                                            </th>
                                            <th>Category
                                            </th>

                                            <th data-sortable="false">Edit
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
                                        <asp:CheckBox ID="chkChildDelete" runat="server" Text=" " />
                                        <asp:HiddenField ID="hdnNid" Value='<%# Eval("ImgId") %>' runat="server" />
                                    </td>
                                    <td>
                                        <asp:Label ID="lblImagetitle" runat="server" Text='<%#Eval("Imagetitle") %>' />
                                        <asp:TextBox ID="txtImageTitle" runat="server" Text='<%#Eval("Imagetitle") %>' Visible="false"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:FileUpload ID="Futransfer1" Visible="false" runat="server" onChange="return validatefileupload(this);" />
                                        <asp:Image ID="lblImage" runat="server" ImageUrl='<%#Eval("FilePath") %>' onerror="NoImage(this)"
                                            Width="50px" Height="50px" />
                                    </td>
                                    <td>
                                        <asp:Label ID="lblDate" runat="server" Text='<%#Eval("Posteddate","{0:dd-MMM-yyyy}") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="lblCategory" runat="server" Visible="false" Text='<%#Eval("Categoryid") %>' />
                                        <asp:Label ID="lblCategory1" runat="server" Text='<%#Eval("CategoryName") %>' />
                                    </td>

                                    <td>
                                        <div class="btn-group btn-group-xs">
                                            <asp:LinkButton ID="lbtnEdit" ToolTip="Edit" runat="server" OnClick="lbtnEdit_Click"
                                                CssClass="fa fa-edit"></asp:LinkButton>
                                            <asp:LinkButton ID="lnkupdate" Visible="false" ToolTip="Edit" Text="Update" runat="server" OnClientClick="callFunc(this);"
                                                OnClick="lnkupdate_Click"></asp:LinkButton>
                                        </div>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody> </table>
                            </FooterTemplate>
                        </asp:Repeater>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete Selected Item" Visible="false"
                            OnClick="btnDelete_Click" OnClientClick="return DeleteDownloadCheck('datatables-1');" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%-- <div class="md-modal md-3d-slit medel-popup-div" id="ImageDiv1">
        <div class="md-content">
            <img id="ModelImage1" runat="server" style="width: 100%;" />
        </div>
    </div>
    <div class='md-overlay'>
    </div>--%>
</asp:Content>

