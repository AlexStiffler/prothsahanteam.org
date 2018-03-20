<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin-MasterPage.master" AutoEventWireup="true" CodeFile="Upload-News.aspx.cs" Inherits="demo_Admin_Upload_News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
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
            }

        }
        function ValidateNews() {
            if ($('#<%=txtEventName.ClientID %>').val() == "") {
            validateError('<%=txtEventName.ClientID %>', "Please Enter Event Name !");
                return false;
            }
            else {
                validateSuccess('<%=txtEventName.ClientID %>');
            }

            if ($('#<%=txtEventDate.ClientID %>').val() == "") {
            validateError('<%=txtEventDate.ClientID %>', "Please Enter Date !");
                return false;
            }
            else {
                validateSuccess('<%=txtEventDate.ClientID %>');
            }
            if ($('#ContentPlaceHolder1_btnSubmit').text.trim() == 'Submit')
                if ($('#ContentPlaceHolder1_FileUpload1').val().trim() == '') {
                    validateError('ContentPlaceHolder1_FileUpload1', 'Please select press release document');
                    return false;
                }
                else {
                    validateSuccess('ContentPlaceHolder1_FileUpload1');
                }
            if ($('#ContentPlaceHolder1_btnSubmit').text.trim() == 'Submit')
                if ($('#ContentPlaceHolder1_FileUpload2').val().trim() == '') {
                    validateError('ContentPlaceHolder1_FileUpload2', 'Please select Image');
                    return false;
                }
                else {
                    validateSuccess('ContentPlaceHolder1_FileUpload2');
                }
        }

        function DeleteDownloadCheck1() {
            debugger;
            var gridView = document.getElementById("ContentPlaceHolder1_grdDetails");
            var checkBoxes = gridView.getElementsByTagName("input");
            for (var i = 0; i < checkBoxes.length; i++) {
                if (checkBoxes[i].type == "checkbox" && checkBoxes[i].checked) {
                    var r = confirm("Are you sure to delete checked items.");
                    if (r == true) {
                        validateSuccess('ContentPlaceHolder1_grdDetails');
                        return true;
                    }
                    else
                        return false;
                }
            }
            validateError('ContentPlaceHolder1_grdDetails', 'Please checked atleast one Record');
            return false;
        }
    </script>


    <h3 class="box-title">Upload News / Events</h3>
    <p>&nbsp;</p>
    <div class="row">
        <div class="col-sm-offset-2 col-sm-8">
            <div class="form-group">
                <div class="col-sm-3">
                    <label>Event Name</label>
                </div>
                <div class="col-sm-1">
                    <label>:</label>
                </div>
                <div class="col-sm-7">

                    <asp:TextBox ID="txtEventName" runat="server" placeholder="Enter event name" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-offset-2 col-sm-8">
            <div class="form-group">
                <div class="col-sm-3">
                    <label>Event Date</label>
                </div>
                <div class="col-sm-1">
                    <label>:</label>
                </div>
                <div class="col-sm-7">
                    <input runat="server" id="txtEventDate" type="text" placeholder="Enter event date" class="form-control datepicker-input" />
                    <%-- <asp:TextBox ID="txtEventDate" runat="server" placeholder="Enter event date" CssClass="form-control"></asp:TextBox>--%>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-offset-2 col-sm-8">
            <div class="form-group">
                <div class="col-sm-3">
                    <label>Description</label>
                </div>
                <div class="col-sm-1">
                    <label>:</label>
                </div>
                <div class="col-sm-7">
                    <asp:TextBox ID="txtDescription" runat="server" placeholder="Enter event description" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-offset-2 col-sm-8">
            <div class="form-group">
                <div class="col-sm-3">
                    <label>Press Release</label>
                </div>
                <div class="col-sm-1">
                    <label>:</label>
                </div>
                <div class="col-sm-7">
                    <asp:FileUpload ID="FileUpload1" runat="server" onChange="return validatefileuploadPdfForHomeWork(this);" />
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6"></div>
        <div class="col-sm-2">
            <asp:HyperLink ID="hlpressview" Target="_blank" runat="server" Visible="false"></asp:HyperLink>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
        </div>
        <div class="col-sm-2">
            <asp:Label ID="lblDocName" Text="View Document" runat="server" Style="color: green; font-weight: bold; cursor: pointer;"
                Visible="false" data-modal="ImageDiv1" onclick="return false;"
                class="md-trigger"></asp:Label>
        </div>
    </div>
<%--    <div class="row">
        <div class="col-sm-offset-2 col-sm-8">
            <div class="form-group">
                <div class="col-sm-3">
                    <label>Image Gallery</label>
                </div>
                <div class="col-sm-1">
                    <label>:</label>
                </div>
                <div class="col-sm-7">
                    <asp:FileUpload ID="FileUpload2" runat="server" onChange="return validatefileupload(this);" />
                </div>
            </div>
        </div>
    </div>--%>

    <div class="row">
        <div class="col-sm-6"></div>
        <div class="col-sm-2">
            <asp:HyperLink ID="hlbtnView" Target="_blank" runat="server" Visible="false"></asp:HyperLink>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6">
        </div>
        <div class="col-sm-2">
            <asp:Label ID="lblImgName" Text="View Image" runat="server" Style="color: green; font-weight: bold; cursor: pointer;"
                Visible="false" data-modal="ImageDiv1" onclick="return false;"
                class="md-trigger"></asp:Label>
        </div>
    </div>
    <asp:HiddenField ID="hdnId" runat="server" />
    <div class="row">
        <div class="col-sm-12">
            <div class="form-group">
                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success center" Text="Submit & Upload Event Images" OnClick="btnSubmit_Click" OnClientClick="return ValidateNews();" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <h3 class="box-title">Recent News / Events</h3>
            <div class="table-responsive">

                <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="false" Class="table table-hover" OnRowCommand="grdDetails_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="S.No.">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:CheckBox ID="chkparent" runat="server" Text=" " class="checkbox_square"
                                    AutoPostBack="true" OnCheckedChanged="chkparent_CheckedChanged" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkChild" runat="server" Text=" " class="checkbox_square" />
                                <asp:HiddenField ID="hdnDocId" runat="server" Value='<%#Eval("Id") %>' />
                                <asp:HiddenField ID="hdnCategoryId" runat="server" Value='<%#Eval("CategoryId") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Event Name">
                            <ItemTemplate>
                                <asp:Label ID="lblEventName" runat="server" Text='<%#Eval("EventName")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Event Date">
                            <ItemTemplate>
                                <asp:Label ID="lblEventDate" runat="server" Text='<%#Eval("EventDate")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label ID="lblDescription" runat="server" Text='<%#Eval("Description")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Press Release">
                            <ItemTemplate>
                               <a href='<%#"../"+Eval("PressReleaseFilePath").ToString()%>' target="_blank"><i class="fa fa-file-pdf-o" aria-hidden="true"></i></a>
                            </ItemTemplate>
                        </asp:TemplateField>
                       <%-- <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="lblImage" runat="server" ImageUrl='<%#Eval("ImageFilePath")%>' onerror="NoImage(this)"
                                    Width="50px" Height="50px" />
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="ibtnEdit" ToolTip="Edit" runat="server" CommandName="Edit1" CommandArgument='<%#Eval("Id") %>' class="fa fa-pencil-square-o" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete"
                OnClick="btnDelete_Click" OnClientClick="return DeleteDownloadCheck1();" />
        </div>
    </div>
    <div class="md-modal md-3d-slit medel-popup-div" id="ImageDiv1">
        <div class="md-content">
            <img id="ModelImage1" runat="server" style="width: 100%;" />
        </div>
    </div>
    <div class='md-overlay'>
    </div>
    <asp:UpdatePanel ID="updt" runat="server">
        <Triggers><asp:PostBackTrigger ControlID="btnSubmit" /></Triggers>
    </asp:UpdatePanel>
    <script type="text/javascript">
        $('.datepicker-input').datepicker();

        function datepick() {
            $('.datepicker-input').datepicker();
        }
    </script>
</asp:Content>

