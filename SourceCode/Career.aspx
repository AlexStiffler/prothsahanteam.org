<%@ Page Title="" Language="VB" MasterPageFile="Prothsahanteam.master" AutoEventWireup="false" CodeFile="Career.aspx.vb" Inherits="demo_Career" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <!--Breadcrumb Section Start Here-->
        <div class="breadcrumb-section" style="background-image: url(http://www.cry.org/wp-content/uploads/2015/04/breadcrumb-bg.jpg)">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h1>Career</h1>
                        <ol class="breadcrumb">
                            <li><a href="index.aspx">Home</a></li>
                            <li class="active">Career</li>
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
                                                    <h2>WORK WITH US</h2>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                            <div class="row">
                                                <div style="display: block;" class="onetimeforminput">
                                                    <div class="col-sm-12">
                                                       <h4 class="h4-branch"><strong>Personal Detail</strong></h4>
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="row">
                                                            <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                                                <div class="form-group">
                                                                    <label for="title">Title</label><br>
                                                                    <select id="title" name="title" class="form-control" type="text">
                                                                        <option value="">Select</option>
                                                                        <option value="Mr">Mr.</option>
                                                                        <option value="Ms">Ms.</option>
                                                                        <option value="Mrs">Mrs.</option>
                                                                        <option value="Others">Others</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6">
                                                                <div class="form-group">
                                                                    <label for="name">First Name*</label><br>
                                                                    <input name="first_name" id="first_name" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6">
                                                                <div class="form-group">
                                                                    <label for="last-name">Last Name*</label><br>
                                                                    <input name="last_name" id="last_name" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <div class="form-group">
                                                                    <div class="row">

                                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                            <label for="DOB">Date of Birth*</label>
                                                                        </div>
                                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                            <div class="row">
                                                                                <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12 norightpad removenorightpadformobile">
                                                                                    <select name="date" id="date">
                                                                                        <option>01</option>
                                                                                        <option>02</option>
                                                                                        <option>03</option>
                                                                                        <option>04</option>
                                                                                        <option>05</option>
                                                                                        <option>06</option>
                                                                                        <option>07</option>
                                                                                        <option>08</option>
                                                                                        <option>09</option>
                                                                                        <option>10</option>
                                                                                        <option>11</option>
                                                                                        <option>12</option>
                                                                                        <option>13</option>
                                                                                        <option>14</option>
                                                                                        <option>15</option>
                                                                                        <option>16</option>
                                                                                        <option>17</option>
                                                                                        <option>18</option>
                                                                                        <option>19</option>
                                                                                        <option>20</option>
                                                                                        <option>21</option>
                                                                                        <option>22</option>
                                                                                        <option>23</option>
                                                                                        <option>24</option>
                                                                                        <option>25</option>
                                                                                        <option>26</option>
                                                                                        <option>27</option>
                                                                                        <option>28</option>
                                                                                        <option>29</option>
                                                                                        <option>30</option>
                                                                                        <option>31</option>
                                                                                    </select>
                                                                                </div>
                                                                                <div class="col-lg-5 col-md-5 col-sm-4 col-xs-12">
                                                                                    <select name="month" id="month">
                                                                                        <option value="01">Jan</option>
                                                                                        <option value="02">Feb</option>
                                                                                        <option value="03">Mar</option>
                                                                                        <option value="04">Apr</option>
                                                                                        <option value="05">May</option>
                                                                                        <option value="06">Jun</option>
                                                                                        <option value="07">Jul</option>
                                                                                        <option value="08">Aug</option>
                                                                                        <option value="09">Sep</option>
                                                                                        <option value="10">Oct</option>
                                                                                        <option value="11">Nov</option>
                                                                                        <option value="12">Dec</option>
                                                                                    </select>
                                                                                </div>
                                                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                                                                    <select name="year" id="year">
                                                                                        <option>1920</option>
                                                                                        <option>1921</option>
                                                                                        <option>1922</option>
                                                                                        <option>1923</option>
                                                                                        <option>1924</option>
                                                                                        <option>1925</option>
                                                                                        <option>1926</option>
                                                                                        <option>1927</option>
                                                                                        <option>1928</option>
                                                                                        <option>1929</option>
                                                                                        <option>1930</option>
                                                                                        <option>1931</option>
                                                                                        <option>1932</option>
                                                                                        <option>1933</option>
                                                                                        <option>1934</option>
                                                                                        <option>1935</option>
                                                                                        <option>1936</option>
                                                                                        <option>1937</option>
                                                                                        <option>1938</option>
                                                                                        <option>1939</option>
                                                                                        <option>1940</option>
                                                                                        <option>1941</option>
                                                                                        <option>1942</option>
                                                                                        <option>1943</option>
                                                                                        <option>1944</option>
                                                                                        <option>1945</option>
                                                                                        <option>1946</option>
                                                                                        <option>1947</option>
                                                                                        <option>1947</option>
                                                                                        <option>1948</option>
                                                                                        <option>1949</option>
                                                                                        <option>1950</option>
                                                                                        <option>1951</option>
                                                                                        <option>1952</option>
                                                                                        <option>1953</option>
                                                                                        <option>1954</option>
                                                                                        <option>1955</option>
                                                                                        <option>1956</option>
                                                                                        <option>1957</option>
                                                                                        <option>1958</option>
                                                                                        <option>1959</option>
                                                                                        <option>1960</option>
                                                                                        <option>1961</option>
                                                                                        <option>1962</option>
                                                                                        <option>1963</option>
                                                                                        <option>1964</option>
                                                                                        <option>1965</option>
                                                                                        <option>1966</option>
                                                                                        <option>1967</option>
                                                                                        <option>1968</option>
                                                                                        <option>1969</option>
                                                                                        <option>1970</option>
                                                                                        <option>1971</option>
                                                                                        <option>1972</option>
                                                                                        <option>1973</option>
                                                                                        <option>1974</option>
                                                                                        <option>1975</option>
                                                                                        <option>1976</option>
                                                                                        <option>1977</option>
                                                                                        <option>1978</option>
                                                                                        <option>1979</option>
                                                                                        <option>1980</option>
                                                                                        <option>1981</option>
                                                                                        <option>1982</option>
                                                                                        <option>1983</option>
                                                                                        <option>1984</option>
                                                                                        <option>1985</option>
                                                                                        <option>1986</option>
                                                                                        <option>1987</option>
                                                                                        <option>1988</option>
                                                                                        <option>1989</option>
                                                                                        <option>1990</option>
                                                                                        <option>1991</option>
                                                                                        <option>1992</option>
                                                                                        <option>1993</option>
                                                                                        <option>1994</option>
                                                                                        <option>1995</option>
                                                                                        <option>1996</option>
                                                                                        <option>1997</option>
                                                                                        <option>1998</option>
                                                                                        <option>1999</option>
                                                                                        <option>2000</option>
                                                                                        <option>2001</option>
                                                                                        <option>2002</option>
                                                                                        <option>2003</option>
                                                                                        <option>2004</option>
                                                                                        <option>2005</option>
                                                                                        <option>2006</option>
                                                                                        <option>2007</option>
                                                                                        <option>2008</option>
                                                                                        <option>2009</option>
                                                                                        <option>2010</option>
                                                                                        <option>2011</option>
                                                                                        <option>2012</option>
                                                                                        <option>2013</option>
                                                                                        <option>2014</option>
                                                                                        <option>2015</option>
                                                                                        <option>2016</option>
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                       
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                <div class="form-group">
                                                                    <label for="email">Email*</label><br>
                                                                    <input name="email" id="emailid" class="form-control" type="email">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                <div class="form-group">
                                                                    <label for="mobile">Mobile*</label><br>
                                                                    <input name="mobile" id="mobile" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                     <h4 class="h4-branch"><strong>Professional Detail</strong></h4>
                                                        </div>
                                                     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="name">Applying For*</label><br>
                                                                    <input name="first_name" id="Text1" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                   <div class="form-group">
                                                                    <label for="name">Experience</label><br>
                                                                    <input name="first_name" id="Text2" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                        </div>
                                                          <div class="row">
                                                            <div class="col-sm-6">
                                                                <div class="form-group">
                                                                    <label for="name">Last Employee</label><br>
                                                                    <input name="first_name" id="Text3" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                   <div class="form-group">
                                                                    <label for="name">Current Salary</label><br>
                                                                    <input name="first_name" id="Text4" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                                <div class="col-sm-6">
                                                                   <div class="form-group">
                                                                    <label for="name">Education Qualification</label><br>
                                                                    <input name="first_name" id="Text5" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                                <div class="col-sm-6">
                                                                   <div class="form-group">
                                                                    <label for="name">Name of Institution</label><br>
                                                                    <input name="first_name" id="Text6" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                     <div class="col-sm-12">
                                                      <h4 class="h4-branch"><strong>Contact Detail</strong></h4>
                                                        </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="row">
                                                            <div class="col-lg-6 col-mnd-6 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label for="address">Address*</label><br>
                                                                    <textarea name="address" style="min-height: 215px;" id="address" class="form-control"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-mnd-6 col-sm-6 col-xs-12">
                                                                <div class="row">
                                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                        <div class="form-group otherstate">
                                                                            <label for="State">State</label><br>
                                                                            <input name="state" id="state" class="form-control">
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
                                                            <input name="city" id="city" class="form-control">
                                                        </div>
                                                                        </div>
                                                                     <div class="col-sm-12">
                                                                       <div class="form-group">
                                                            <label for="pin">Pin/Zip Code*</label><br>
                                                            <input name="pin" id="pin" class="form-control">
                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group">
                                                            <label for="add-note">Additional Note</label><br>
                                                            <textarea name="add-note" id="add-note" class="form-control" data-gramm="true" data-txt_gramm_id="963c4bfc-c6f1-b54d-c2f8-0f2f50895ce0" data-gramm_id="963c4bfc-c6f1-b54d-c2f8-0f2f50895ce0" spellcheck="false" data-gramm_editor="true" style="z-index: auto; position: relative; line-height: 20px; font-size: 14px; transition: none; background: transparent !important;"></textarea><grammarly-btn><div data-reactroot="" class="_e725ae-textarea_btn _e725ae-show _e725ae-field_hovered" style="z-index: 2; transform: translate(488.297px, 117px);"><div class="_e725ae-transform_wrap"><div title="Protected by Grammarly" class="_e725ae-status">&nbsp;</div></div></div></grammarly-btn>
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
                                            <iframe src="https://www.google.com/recaptcha/api2/anchor?k=6Leu1ioUAAAAAGxSMmZXe_c24acAwUOuvxCjDRec&amp;co=aHR0cDovL3d3dy5zY2hvb2xtYW5hZ2VtZW50c29mdHdhcmUuaW46ODA.&amp;hl=en&amp;v=r20170816175713&amp;size=normal&amp;cb=ua8cuy6lq09l" title="recaptcha widget" width="304" height="78" frameborder="0" scrolling="no" sandbox="allow-forms allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups allow-popups-to-escape-sandbox"></iframe>
                                            <center>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="buttoncareer" style="margin-top: 7px;">
                                            <a href="#">SUMBIT APPLICATION</a>
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
                        <hr/>
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