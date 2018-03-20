<%@ Page Title="" Language="C#" MasterPageFile="~/Prothsahanteam.master" AutoEventWireup="true" CodeFile="EmployerInfo.aspx.cs" Inherits="EmployerInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        function ValidateJobPost() {
            debugger;
            if ($('#<%=txtVacancy.ClientID %>').val() == "") {
                 validateError('<%=txtVacancy.ClientID %>', "Please enter vacancy name !");
                return false;
            }
            else {
                validateSuccess('<%=txtVacancy.ClientID %>');
            }

            if ($('#<%=txtQualification.ClientID %>').val() == "") {
                 validateError('<%=txtQualification.ClientID %>', "Please enter educational qualification !");
                return false;
            }
            else {
                validateSuccess('<%=txtQualification.ClientID %>');
            }

            if ($('#<%=txtPackage.ClientID %>').val() == "") {
                 validateError('<%=txtPackage.ClientID %>', "Please enter package !");
                return false;
            }
            else {
                validateSuccess('<%=txtPackage.ClientID %>');
            }
            if ($('#<%=txtOrganizationName.ClientID %>').val() == "") {
                 validateError('<%=txtOrganizationName.ClientID %>', "Please enter Organization Name !");
                return false;
            }
            else {
                validateSuccess('<%=txtOrganizationName.ClientID %>');
            }
            if ($('#<%=txtAddress.ClientID %>').val() == "") {
                 validateError('<%=txtAddress.ClientID %>', "Please enter Address !");
                 return false;
             }
             else {
                 validateSuccess('<%=txtAddress.ClientID %>');
             }
             if ($('#<%=txtPinCode.ClientID %>').val() == "") {
                 validateError('<%=txtPinCode.ClientID %>', "Please enter Pin Code !");
                 return false;
             }
             else {
                 validateSuccess('<%=txtPinCode.ClientID %>');
             }
             if ($('#<%=txtContactPerson.ClientID %>').val() == "") {
                 validateError('<%=txtContactPerson.ClientID %>', "Please enter Contact Person !");
                 return false;
             }
             else {
                 validateSuccess('<%=txtContactPerson.ClientID %>');
             }
             if ($('#<%=txtMobileNo.ClientID %>').val() == "") {
                 validateError('<%=txtMobileNo.ClientID %>', "Please enter Mobile No!");
                 return false;
             }
             else {
                 validateSuccess('<%=txtMobileNo.ClientID %>');
             }
             if ($('#<%=txtEmail.ClientID %>').val() == "") {
                 validateError('<%=txtEmail.ClientID %>', "Please enter Email Id!");
                 return false;
             }
             else {
                 validateSuccess('<%=txtEmail.ClientID %>');
             }
         }
    </script>
    <div id="main">
        <!--Breadcrumb Section Start Here-->
        <div class="breadcrumb-section" style="background-image: url(http://www.cry.org/wp-content/uploads/2015/04/breadcrumb-bg.jpg)">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h1>Post Jobs (Employer Section)</h1>
                        <ol class="breadcrumb">
                            <li><a href="index.aspx">Home</a></li>
                            <li class="active">Post Jobs </li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!--Breadcrumb Section End Here-->
        <div class="content-wrapper container" id="page-info">
            <div class="row">
                <div class="col-xs-12">
                    <article class="blog post-3664 page type-page status-publish hentry">
                        <div class="row">
                            <div class="col-xs-12 col-sm-10 col-sm-offset-1 caption">
                                <div class="block donationdiv">
                                    <div name="onetime_donation_form" id="onetime_donation_form">
                                        <div class="block onetimepayment formdiv div">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <h2>Post Jobs </h2>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="row">
                                                        <div style="display: block;" class="onetimeforminput">
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <div class="row">
                                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                        <div class="form-group">
                                                                            <label for="title">Vacancy For (Post)</label><br>
                                                                            <asp:TextBox ID="txtVacancy" runat="server" CssClass="form-control" required></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                        <div class="form-group">
                                                                            <label for="name">Edu. Qualification</label><br>
                                                                            <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                        <div class="form-group">
                                                                            <label for="last-name">Experience</label><br>
                                                                            <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                        <div class="form-group">
                                                                            <label for="email">Package Offered (annually)</label><br>
                                                                            <asp:TextBox ID="txtPackage" runat="server" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                        <div class="form-group">
                                                                            <label for="mobile">Organization Name</label><br>
                                                                            <asp:TextBox ID="txtOrganizationName" runat="server" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-12">
                                                                <h4 class="h4-branch"><strong>Location</strong></h4>
                                                            </div>
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <div class="row">
                                                                    <div class="col-lg-6 col-mnd-6 col-sm-6 col-xs-12">
                                                                        <div class="form-group">
                                                                            <label for="address">Address*</label><br>
                                                                            <asp:TextBox runat="server" ID="txtAddress" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-mnd-6 col-sm-6 col-xs-12">
                                                                        <div class="row">
                                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                                <div class="form-group otherstate">
                                                                                    <label for="State">State</label><br>
                                                                                    <asp:TextBox ID="txtState" runat="server" CssClass="form-control"></asp:TextBox>
                                                                                </div>
                                                                                <div class="form-group block indianState" style="display: none">
                                                                                    <label for="listState">State</label>
                                                                                    <p></p>
                                                                                    <div class="form-group block">
                                                                                        <select name="liststate" id="liststate">
                                                                                            <option value="">Select a State</option>
                                                                                            <option value="ANDHRA PRADESH">ANDHRA PRADESH</option>
                                                                                            <option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
                                                                                            <option value="ASSAM">ASSAM</option>
                                                                                            <option value="BIHAR">BIHAR</option>
                                                                                            <option value="CHANDIGARH">CHANDIGARH</option>
                                                                                            <option value="CHATTISGARH">CHATTISGARH</option>
                                                                                            <option value="DADRA AND NAGAR HAVELI">DADRA AND NAGAR HAVELI</option>
                                                                                            <option value="DELHI">DELHI</option>
                                                                                            <option value="GOA">GOA</option>
                                                                                            <option value="GUJARAT">GUJARAT</option>
                                                                                            <option value="HARYANA">HARYANA</option>
                                                                                            <option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
                                                                                            <option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
                                                                                            <option value="JHARKHAND">JHARKHAND</option>
                                                                                            <option value="KARNATAKA">KARNATAKA</option>
                                                                                            <option value="KERALA">KERALA</option>
                                                                                            <option value="LAKSHADWEEP">LAKSHADWEEP</option>
                                                                                            <option value="MADHYA PRADESH">MADHYA PRADESH</option>
                                                                                            <option value="MAHARASHTRA">MAHARASHTRA</option>
                                                                                            <option value="MANIPUR">MANIPUR</option>
                                                                                            <option value="MEGHALAYA">MEGHALAYA</option>
                                                                                            <option value="MIZORAM">MIZORAM</option>
                                                                                            <option value="NAGALAND">NAGALAND</option>
                                                                                            <option value="ORISSA">ORISSA</option>
                                                                                            <option value="PONDICHERRY">PONDICHERRY</option>
                                                                                            <option value="PUNJAB">PUNJAB</option>
                                                                                            <option value="RAJASTHAN">RAJASTHAN</option>
                                                                                            <option value="SIKKIM">SIKKIM</option>
                                                                                            <option value="TAMILNADU">TAMILNADU</option>
                                                                                            <option value="TELANGANA">TELANGANA</option>
                                                                                            <option value="TRIPURA">TRIPURA</option>
                                                                                            <option value="UTTAR PRADESH">UTTAR PRADESH</option>
                                                                                            <option value="UTTARANCHAL">UTTARANCHAL</option>
                                                                                            <option value="WEST BENGAL">WEST BENGAL</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-12">
                                                                                <div class="form-group">
                                                                                    <label for="city">City*</label><br>
                                                                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-12">
                                                                                <div class="form-group">
                                                                                    <label for="pin">Pin/Zip Code*</label><br>
                                                                                    <asp:TextBox ID="txtPinCode" runat="server" onkeypress="return NumbersOnly(event);" MaxLength="6" CssClass="form-control"></asp:TextBox>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <div class="row">
                                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                        <div class="form-group">
                                                                            <label for="title">Contact Person</label><br>
                                                                            <asp:TextBox ID="txtContactPerson" runat="server" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                        <div class="form-group">
                                                                            <label for="name">Mobile Number</label><br>
                                                                            <asp:TextBox ID="txtMobileNo" runat="server" onblur="return MobileValidation(this,'Invalid MobileNo.');" onkeypress="return NumbersOnly(event);" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                        <div class="form-group">
                                                                            <label for="last-name">Email ID</label><br>
                                                                            <asp:TextBox ID="txtEmail" runat="server" onblur="CheckEmailFormate(this);" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                            <div class="col-sm-12">
                                                                <h4 class="h4-branch"><strong>Terms & Conditions</strong></h4>
                                                            </div>
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <div class="form-group">
                                                                    <ul>
                                                                        <li>I, owner/ partner/ director of the organization hereby certify the above mentioned current reqirement of my office as on today, is confirmed.</li>
                                                                        <li>I would like to thank prothsahanteam effort for putting my requirement on their website free of cost to support youth employment initiative.</li>
                                                                        <li>I will verify all employees with my own resources and I know there is no responsibility of prothsahanteam after providing the resumes.</li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <p>&nbsp;</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <p>&nbsp;</p>
                                        <center>
                                            <div class="g-recaptcha" data-sitekey="6LebwjYUAAAAAPAwvp3oWh11JXo1Ow4CIJUGLsYS"></div>
                                            </center>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="buttoncareer" style="margin-top: 7px;">
                                            <asp:Button ID="btnSubmit" runat="server" Text="Post Job" CssClass="btn btn-default" OnClick="btnSubmit_Click" OnClientClick="return ValidateJobPost()" />
                                        </div>
                                    </div>
                                </div>
                                <style>
                                    @media(min-width:320px) and (max-width:767px)
                                    {
                                        .block.onetimepayment.formdiv.div select;

                                    {
                                        background: #f8f8f8;
                                        border: 1px solid grey;
                                        overflow: visible !important;
                                    }

                                    input#donationvalue-custom
                                    {
                                        margin-bottom: 50px;
                                    }

                                    }
                                </style>
                            </div>
                        </div>
                        <hr />
                    </article>
                </div>
            </div>
        </div>
        <style>
            article.blog p
            {
                margin-bottom: 0px !important;
            }

            .content-wrapper article.blog
            {
                margin-bottom: 40px;
            }

            #page-info
            {
                padding-bottom: 0;
            }

            .comment-block
            {
                display: none;
            }

            .content-wrapper article.blog
            {
                border-bottom: none;
            }
        </style>
    </div>
</asp:Content>
